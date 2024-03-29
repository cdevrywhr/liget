<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menuaccess extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();

    $this->data['module'] = 'Menu Access';

    $this->data['company_data']              = $this->Company_model->company_profile();
    $this->data['layout_template']          = $this->Template_model->layout();
    $this->data['skins_template']           = $this->Template_model->skins();

    $this->data['btn_submit'] = 'Save';
    $this->data['btn_reset']  = 'Reset';
    $this->data['btn_add']    = 'Tambah Data Baru';
    $this->data['add_action'] = base_url('menuaccess/create');
  }

  function index()
  {
    is_login();
    is_read();

    if (!is_superadmin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = $this->data['module'] . ' List';

    $this->data['get_all'] = $this->Menuaccess_model->get_all();

    $this->load->view('back/menuaccess/menuaccess_list', $this->data);
  }

  function create()
  {
    is_login();
    is_create();

    if (!is_superadmin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = 'Create New ' . $this->data['module'];
    $this->data['action']     = 'menuaccess/create_action';

    $this->data['get_all_combobox_menu']      = $this->Menu_model->get_all_combobox();
    $this->data['get_all_combobox_usertype']  = $this->Usertype_model->get_all_combobox();

    $this->data['usertype_id'] = [
      'name'          => 'usertype_id',
      'id'            => 'usertype_id',
      'class'         => 'form-control',
      'required'      => '',
    ];
    $this->data['menu_id'] = [
      'name'          => 'menu_id',
      'id'            => 'menu_id',
      'class'         => 'form-control',
      'required'      => '',
      'onChange'      => 'showSubmenu()',
    ];
    $this->data['submenu_id'] = [
      'name'          => 'submenu_id',
      'id'            => 'submenu_id',
      'class'         => 'form-control',
    ];

    $this->load->view('back/menuaccess/menuaccess_add', $this->data);
  }

  function create_action()
  {
    $this->form_validation->set_rules('usertype_id', 'Full Name', 'trim|required');
    $this->form_validation->set_rules('menu_id', 'Phone No', 'trim|required');

    // $this->form_validation->set_message('required', '{field} wajib diisi');
    // $this->form_validation->set_message('valid_email', '{field} format email tidak benar');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->create();
    } else {
      if (empty($this->input->post('submenu_id'))) {
        $submenu = NULL;
      } else {
        $submenu = $this->input->post('submenu_id');
      }

      $data = array(
        'usertype_id'       => $this->input->post('usertype_id'),
        'menu_id'           => $this->input->post('menu_id'),
        'submenu_id'        => $submenu,
      );

      $this->Menuaccess_model->insert($data);

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved successfully</div>');
      redirect('menuaccess');
    }
  }

  function update($id)
  {
    is_login();
    is_update();

    if (!is_superadmin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['menuaccess']     = $this->Menuaccess_model->get_by_id($id);

    if ($this->data['menuaccess']) {
      $this->data['page_title'] = 'Update Data ' . $this->data['module'];
      $this->data['action']     = 'menuaccess/update_action';

      $submenu_id = $this->data['menuaccess']->menu_id;

      $this->data['get_all_combobox_menu']      = $this->Menu_model->get_all_combobox();
      $this->data['get_all_combobox_usertype']  = $this->Usertype_model->get_all_combobox();
      $this->data['get_all_combobox_submenu']      = $this->Submenu_model->get_all_combobox($submenu_id);

      $this->data['id_menu_access'] = [
        'name'          => 'id_menu_access',
        'id'            => 'id_menu_access',
        'type'         => 'hidden',
      ];
      $this->data['usertype_id'] = [
        'name'          => 'usertype_id',
        'id'            => 'usertype_id',
        'class'         => 'form-control',
        'required'      => '',
      ];
      $this->data['menu_id'] = [
        'name'          => 'menu_id',
        'id'            => 'menu_id',
        'class'         => 'form-control',
        'required'      => '',
        'onChange'      => 'showSubmenu()',
      ];
      $this->data['submenu_id'] = [
        'name'          => 'submenu_id',
        'id'            => 'submenu_id',
        'class'         => 'form-control',
      ];

      $this->load->view('back/menuaccess/menuaccess_edit', $this->data);
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Data not found</div>');
      redirect('menuaccess');
    }
  }

  function update_action()
  {
    $this->form_validation->set_rules('usertype_id', 'Full Name', 'trim|required');
    $this->form_validation->set_rules('menu_id', 'Phone No', 'trim|required');

    // $this->form_validation->set_message('required', '{field} wajib diisi');
    // $this->form_validation->set_message('valid_email', '{field} format email tidak benar');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->update($this->input->post('id_menu_access'));
    } else {
      if (empty($this->input->post('submenu_id'))) {
        $submenu = NULL;
      } else {
        $submenu = $this->input->post('submenu_id');
      }

      $data = array(
        'usertype_id'       => $this->input->post('usertype_id'),
        'menu_id'           => $this->input->post('menu_id'),
        'submenu_id'        => $submenu,
      );

      $this->Menuaccess_model->update($this->input->post('id_menu_access'), $data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data update succesfully</div>');
      redirect('menuaccess');
    }
  }

  function delete($id)
  {
    is_login();
    is_superadmin();

    $delete = $this->Menuaccess_model->get_by_id($id);

    if ($delete) {
      $data = array(
        'is_delete'   => '1',
        'deleted_by'  => $this->session->username,
        'deleted_at'  => date('Y-m-d H:i:a'),
      );

      $this->Menuaccess_model->delete($id, $data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data deleted successfully</div>');
      redirect('menuaccess');
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">No data found</div>');
      redirect('menuaccess');
    }
  }
}

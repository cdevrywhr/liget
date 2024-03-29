<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Usertype extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();

    $this->data['module'] = 'Usertype';

    $this->load->model(array('Usertype_model'));

    $this->data['company_data']              = $this->Company_model->company_profile();
    $this->data['layout_template']          = $this->Template_model->layout();
    $this->data['skins_template']           = $this->Template_model->skins();

    $this->data['btn_submit'] = 'Save';
    $this->data['btn_reset']  = 'Reset';
    $this->data['btn_add']    = 'Tambah Data Baru';
    $this->data['add_action'] = base_url('usertype/create');
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

    $this->data['get_all'] = $this->Usertype_model->get_all();

    $this->load->view('back/usertype/usertype_list', $this->data);
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
    $this->data['action']     = 'usertype/create_action';

    $this->data['usertype_name'] = [
      'name'          => 'usertype_name',
      'id'            => 'usertype_name',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
      'required'      => '',
      'value'         => $this->form_validation->set_value('usertype_name'),
    ];

    $this->load->view('back/usertype/usertype_add', $this->data);
  }

  function create_action()
  {
    $this->form_validation->set_rules('usertype_name', 'Usertype Name', 'trim|required');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->create();
    } else {
      $data = array(
        'usertype_name'     => $this->input->post('usertype_name'),
      );

      $this->Usertype_model->insert($data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('usertype');
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

    $this->data['usertype']     = $this->Usertype_model->get_by_id($id);

    if ($this->data['usertype']) {
      $this->data['page_title'] = 'Update Data ' . $this->data['module'];
      $this->data['action']     = 'usertype/update_action';

      $this->data['id_usertype'] = [
        'name'          => 'id_usertype',
        'type'          => 'hidden',
      ];
      $this->data['usertype_name'] = [
        'name'          => 'usertype_name',
        'id'            => 'usertype_name',
        'class'         => 'form-control',
        'autocomplete'  => 'off',
        'required'      => '',
      ];

      $this->load->view('back/usertype/usertype_edit', $this->data);
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Data not found</div>');
      redirect('usertype');
    }
  }

  function update_action()
  {
    $this->form_validation->set_rules('usertype_name', 'Usertype Name', 'trim|required');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->update($this->input->post('id_usertype'));
    } else {
      $data = array(
        'usertype_name'     => $this->input->post('usertype_name'),
      );

      $this->Usertype_model->update($this->input->post('id_usertype'), $data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('usertype');
    }
  }

  function delete($id)
  {
    is_login();
    is_delete();

    if (!is_superadmin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $delete = $this->Usertype_model->get_by_id($id);

    if ($delete) {
      $this->Usertype_model->delete($id);

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data deleted successfully</div>');
      redirect('usertype');
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">No data found</div>');
      redirect('usertype');
    }
  }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class PD extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();

    $this->data['module'] = 'Pemerintahan Daerah';

    $this->load->model(array('PD_model', 'Auth_model'));

    $this->data['company_data']              = $this->Company_model->company_profile();
    $this->data['layout_template']          = $this->Template_model->layout();
    $this->data['skins_template']           = $this->Template_model->skins();

    $this->data['btn_submit'] = 'Save';
    $this->data['btn_reset']  = 'Reset';
    $this->data['btn_add']    = 'Add New Data';
    $this->data['add_action'] = base_url('pd/create');
  }

  function index()
  {
    is_login();
    is_read();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = $this->data['module'] . ' List';

    $this->data['get_all'] = $this->PD_model->get_all();
    $this->data['get_admin'] = $this->Auth_model->get_all_admin();

    $this->load->view('back/pd/pd_list', $this->data);
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
    $this->data['action']     = 'pd/create_action';

    $this->data['pd_name'] = [
      'name'          => 'pd_name',
      'id'            => 'pd_name',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
      'required'      => '',
      'value'         => $this->form_validation->set_value('pd_name'),
    ];

    $this->load->view('back/pd/pd_add', $this->data);
  }

  function create_action()
  {
    $this->form_validation->set_rules('pd_name', 'PD Name', 'trim|required');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->create();
    } else {
      $data = array(
        'pd_name'     => $this->input->post('pd_name'),
      );

      $this->PD_model->insert($data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('pd');
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

    $this->data['pd']     = $this->PD_model->get_by_id($id);

    if ($this->data['pd']) {
      $this->data['page_title'] = 'Update Data ' . $this->data['module'];
      $this->data['action']     = 'pd/update_action';

      $this->data['id_pd'] = [
        'name'          => 'id_pd',
        'type'          => 'hidden',
      ];
      $this->data['pd_name'] = [
        'name'          => 'pd_name',
        'id'            => 'pd_name',
        'class'         => 'form-control',
        'autocomplete'  => 'off',
        'required'      => '',
      ];

      $this->load->view('back/pd/pd_edit', $this->data);
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Data not found</div>');
      redirect('pd');
    }
  }

  function update_action()
  {
    $this->form_validation->set_rules('pd_name', 'PD Name', 'trim|required');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->update($this->input->post('id_pd'));
    } else {
      $data = array(
        'pd_name'     => $this->input->post('pd_name'),
      );

      $this->PD_model->update($this->input->post('id_pd'), $data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('pd');
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

    $delete = $this->PD_model->get_by_id($id);

    if ($delete) {
      $this->PD_model->delete($id);

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data deleted successfully</div>');
      redirect('pd');
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">No data found</div>');
      redirect('pd');
    }
  }
}

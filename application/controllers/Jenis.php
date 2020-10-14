<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jenis extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();

    $this->data['module'] = 'Jenis';

    $this->load->model(array('Jenis_model'));

    $this->data['company_data']             = $this->Company_model->company_profile();
    $this->data['layout_template']          = $this->Template_model->layout();
    $this->data['skins_template']           = $this->Template_model->skins();

    $this->data['btn_submit'] = 'Save';
    $this->data['btn_reset']  = 'Reset';
    $this->data['btn_add']    = 'Tambah Data Baru';
    $this->data['add_action'] = base_url('jenis/create');
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

    $this->data['get_all'] = $this->Jenis_model->get_all();

    $this->load->view('back/jenis/jenis_list', $this->data);
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
    $this->data['action']     = 'jenis/create_action';

    $this->data['jenis_proposal'] = [
      'name'          => 'jenis_proposal',
      'id'            => 'jenis_proposal',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
      'required'      => '',
      'value'         => $this->form_validation->set_value('jenis_proposal'),
    ];

    $this->load->view('back/jenis/jenis_add', $this->data);
  }

  function create_action()
  {
    $this->form_validation->set_rules('jenis_proposal', 'Jenis Proposal', 'trim|required');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->create();
    } else {
      $data = array(
        'jenis_proposal'     => $this->input->post('jenis_proposal'),
      );

      $this->Jenis_model->insert($data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('jenis');
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

    $this->data['jenis']     = $this->Jenis_model->get_by_id($id);

    if ($this->data['jenis']) {
      $this->data['page_title'] = 'Update Data ' . $this->data['module'];
      $this->data['action']     = 'jenis/update_action';

      $this->data['id_jenis'] = [
        'name'          => 'id_jenis',
        'type'          => 'hidden',
      ];
      $this->data['jenis_proposal'] = [
        'name'          => 'jenis_proposal',
        'id'            => 'jenis_proposal',
        'class'         => 'form-control',
        'autocomplete'  => 'off',
        'required'      => '',
      ];

      $this->load->view('back/jenis/jenis_edit', $this->data);
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Data not found</div>');
      redirect('jenis');
    }
  }

  function update_action()
  {
    $this->form_validation->set_rules('jenis_proposal', 'Jenis Proposal', 'trim|required');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->update($this->input->post('id_jenis'));
    } else {
      $data = array(
        'jenis_proposal'     => $this->input->post('jenis_proposal'),
      );

      $this->Jenis_model->update($this->input->post('id_jenis'), $data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('jenis');
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

    $delete = $this->Jenis_model->get_by_id($id);

    if ($delete) {
      $this->Jenis_model->delete($id);

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data deleted successfully</div>');
      redirect('jenis');
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">No data found</div>');
      redirect('jenis');
    }
  }
}

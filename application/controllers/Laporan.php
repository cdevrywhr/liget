<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();

    $this->data['module'] = 'Laporan';

    $this->load->model(array('Persetujuan_model', 'Proposal_model', 'Auth_model'));

    $this->data['company_data']             = $this->Company_model->company_profile();
    $this->data['layout_template']          = $this->Template_model->layout();
    $this->data['skins_template']           = $this->Template_model->skins();

    $this->data['btn_submit'] = 'Save';
    $this->data['btn_reset']  = 'Reset';
    $this->data['btn_add']    = 'Add New Data';
    $this->data['add_action'] = base_url('laporan/create');
  }

  function persetujuan()
  {
    is_login();
    is_read();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = $this->data['module'] . ' Persetujuan';

    $this->data['get_all'] = $this->Persetujuan_model->get_all();

    $this->load->view('back/laporan/laporan_persetujuan', $this->data);
  }

  function persetujuan_print_all()
  {
    is_login();
    is_read();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->load->library('Pdf');

    $this->data['get_all'] = $this->Persetujuan_model->get_all();

    $this->load->view('back/laporan/print_persetujuan_all', $this->data);
  }

  function persetujuan_print_periode()
  {
    is_login();
    is_read();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->load->library('Pdf');

    $this->data['get_all_periode'] = $this->Persetujuan_model->get_all_periode($this->input->post('tgl_awal'), $this->input->post('tgl_akhir'));

    $this->load->view('back/laporan/print_persetujuan_periode', $this->data);
  }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model(array('Persetujuan_model', 'Proposal_model', 'Auth_model', 'PD_model', 'Jenis_model'));
  }

  function index()
  {


    $this->load->view('front/home/index');
  }

  function proposal()
  {
    $this->data['get_all'] = $this->Proposal_model->get_all();
    $this->data['get_all_combobox_jenis'] = $this->Jenis_model->get_all_combobox();
    $this->data['get_all_combobox_pd'] = $this->PD_model->get_all_combobox();

    $this->data['pd_id'] = [
      'name'          => 'pd_id',
      'id'            => 'pd_id',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
    ];
    $this->data['jenis_id'] = [
      'name'          => 'jenis_id',
      'id'            => 'jenis_id',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
    ];

    $this->load->view('front/home/proposal', $this->data);
  }

  function tentang()
  {
    $this->load->view('front/home/tentang');
  }
  function peraturan()
  {
    $this->load->view('front/home/peraturan');
  }
  function pengumuman()
  {
    $this->load->view('front/home/pengumuman');
  }
}

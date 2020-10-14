<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Persetujuan extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();

    $this->data['module'] = 'Persetujuan';

    $this->load->model(array('Persetujuan_model', 'Proposal_model', 'Auth_model'));

    $this->data['company_data']              = $this->Company_model->company_profile();
    $this->data['layout_template']          = $this->Template_model->layout();
    $this->data['skins_template']           = $this->Template_model->skins();

    $this->data['btn_submit'] = 'Save';
    $this->data['btn_reset']  = 'Reset';
    $this->data['btn_add']    = 'Tambah Data Baru';
    $this->data['add_action'] = base_url('persetujuan/create');
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

    $this->data['get_all'] = $this->Persetujuan_model->get_all();

    $this->load->view('back/persetujuan/persetujuan_list', $this->data);
  }

  function create()
  {
    is_login();
    is_create();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = 'Tambah ' . $this->data['module'];
    $this->data['action']     = 'persetujuan/create_action';

    $this->data['get_all_combobox_user']      = $this->Auth_model->get_all_combobox();
    $this->data['get_tahun_combobox']      = $this->Persetujuan_model->get_tahun_combobox();

    $this->data['kode_persetujuan'] = [
      'name'          => 'kode_persetujuan',
      'id'            => 'kode_persetujuan',
      'class'         => 'form-control',
      'required'      => '',
      'value'         => $this->form_validation->set_value('kode_persetujuan'),
    ];
    $this->data['member_id'] = [
      'name'          => 'member_id',
      'id'            => 'member_id',
      'class'         => 'form-control',
      'required'      => '',
      'onChange'      => 'showProposal()'
    ];
    $this->data['proposal_id'] = [
      'name'          => 'proposal_id',
      'id'            => 'proposal_id',
      'class'         => 'form-control',
      'required'      => '',
    ];
    $this->data['status'] = [
      'name'          => 'status',
      'id'            => 'status',
      'class'         => 'form-control',
      'required'      => '',
    ];
    $this->data['tahun_id'] = [
      'name'          => 'tahun_id',
      'id'            => 'tahun_id',
      'class'         => 'form-control',
      'required'      => '',
    ];
    $this->data['memo'] = [
      'name'          => 'memo',
      'id'            => 'memo',
      'class'         => 'form-control'
    ];
    $this->data['status_value'] = [
      '1'             => 'Terima',
      '2'             => 'Tolak',
      '3'             => 'Belum Memenuhi Syarat',
    ];
    $this->data['nominal_disetujui'] = [
      'name'          => 'nominal_disetujui',
      'id'            => 'nominal_disetujui',
      'class'         => 'form-control',
      'type'          => 'number',
    ];

    $this->load->view('back/persetujuan/persetujuan_add', $this->data);
  }

  function create_action()
  {
    // $this->form_validation->set_rules('kode_persetujuan', 'Kode Persetujuan', 'trim|required');
    $this->form_validation->set_rules('proposal_id', 'Persetujuan URL', 'trim|is_unique[persetujuan.proposal_id]|required');
    $this->form_validation->set_message('is_unique', '{field} sudah ada, silahkan ganti proposal yang lain');
    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');



    if ($this->form_validation->run() === FALSE) {
      $this->create();
    } else {

      $data = array(
        'kode_persetujuan'   => $this->session->id_users . date('mdHi'),
        'proposal_id'        => $this->input->post('proposal_id'),
        'memo'               => $this->input->post('memo'),
        'member_id'          => $this->input->post('member_id'),
        'tahun_id'           => $this->input->post('tahun_id'),
        'nominal_disetujui'  => $this->input->post('nominal_disetujui'),
        'status'             => $this->input->post('status')
      );

      $id = $this->input->post('member_id');
      $proposal = $this->Proposal_model->get_all_combobox_available($id);

      $this->Persetujuan_model->insert($data);
      write_log();

      $this->db->where('id_proposal', $this->input->post('proposal_id'));
      $this->db->update('proposal', array('nominal_setujui' => $this->input->post('nominal_disetujui')));

      // mengganti status is_available proposal
      if ($this->input->post('status') == '1') {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('is_available' => '1'));
      } else if ($this->input->post('status') == '1') {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('is_available' => '2'));
      } else {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('is_available' => '3'));
      }

      //menambah memo di memo proposal
      if ('memo' != null) {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('memo' => $this->input->post('memo')));
      } else {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('memo' => null));
      }


      if ('tahun_id' != null) {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('tahun_id' => $this->input->post('tahun_id')));
      } else {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('tahun_id' => 0));
      }

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('persetujuan');
    }
  }

  function update($id)
  {
    is_login();
    is_update();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['persetujuan']     = $this->Persetujuan_model->get_by_id($id);

    if ($this->data['persetujuan']) {
      $this->data['page_title'] = 'Update Data ' . $this->data['module'];
      $this->data['action']     = 'persetujuan/update_action';

      $this->data['get_all_combobox_proposal']     = $this->Proposal_model->get_all_combobox();
      $this->data['get_tahun_combobox']      = $this->Persetujuan_model->get_tahun_combobox();

      $this->data['id_persetujuan'] = [
        'name'          => 'id_persetujuan',
        'type'          => 'hidden',
      ];
      $this->data['kode_persetujuan'] = [
        'name'          => 'kode_persetujuan',
        'id'            => 'kode_persetujuan',
        'class'         => 'form-control',
        'required'      => '',
      ];

      $this->data['proposal_id'] = [
        'name'          => 'proposal_id',
        'id'            => 'proposal_id',
        'class'         => 'form-control',
        'required'      => '',
      ];
      $this->data['status'] = [
        'name'          => 'status',
        'id'            => 'status',
        'class'         => 'form-control',
        'required'      => '',
      ];
      $this->data['tahun_id'] = [
        'name'          => 'tahun_id',
        'id'            => 'tahun_id',
        'class'         => 'form-control',
        'required'      => '',
      ];
      $this->data['memo'] = [
        'name'          => 'memo',
        'id'            => 'memo',
        'class'         => 'form-control',
        'required'      => '',
      ];
      $this->data['nominal_disetujui'] = [
        'name'          => 'nominal_disetujui',
        'id'            => 'nominal_disetujui',
        'class'         => 'form-control',
        'type'          => 'number'
      ];
      $this->data['status_value'] = [
        '1'             => 'Terima',
        '2'             => 'Tolak',
      ];

      $this->load->view('back/persetujuan/persetujuan_edit', $this->data);
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Data not found</div>');
      redirect('persetujuan');
    }
  }

  function update_action()
  {
    // $this->form_validation->set_rules('kode_persetujuan', 'Menu Name', 'trim|required');
    // $this->form_validation->set_rules('user_id', 'Persetujuan Name', 'trim|required');
    $this->form_validation->set_rules('proposal_id', 'Persetujuan URL', 'trim|required');

    $this->form_validation->set_message('is_unique', '{field} sudah ada, silahkan ganti proposal yang lain');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->update($this->input->post('id_persetujuan'));
    } else {
      $data = array(
        //'kode_persetujuan'     => $this->input->post('kode_persetujuan'),
        'proposal_id'          => $this->input->post('proposal_id'),
        'memo'                 => $this->input->post('memo'),
        'tahun_id'       => $this->input->post('tahun_id'),
        'status'               => $this->input->post('status')
      );

      $this->Persetujuan_model->update($this->input->post('id_persetujuan'), $data);

      write_log();


      //menambah memo di memo proposal
      if ('memo' != null) {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('memo' => $this->input->post('memo')));
      } else {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('memo' => null));
      }

      // mengganti status is_available proposal
      if ($this->input->post('status') == '1') {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('is_available' => '1'));
      } else if ($this->input->post('status') == '1') {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('is_available' => '2'));
      } else {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('is_available' => '3'));
      }

      if ('tahun_id' != null) {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('tahun_id' => $this->input->post('tahun_id')));
      } else {
        $this->db->where('id_proposal', $this->input->post('proposal_id'));
        $this->db->update('proposal', array('tahun_id' => 0));
      }

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
      redirect('persetujuan');
    }
  }

  function detail($id)
  {
    is_login();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['persetujuan']     = $this->Persetujuan_model->get_by_id($id);

    if ($this->data['persetujuan']) {
      $this->data['page_title'] = 'Detail Data ' . $this->data['module'];

      $this->load->view('back/persetujuan/persetujuan_detail', $this->data);
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Data not found</div>');
      redirect('persetujuan');
    }
  }

  function delete($id)
  {
    is_login();
    is_delete();

    if (is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $delete = $this->Persetujuan_model->get_by_id($id);

    if ($delete) {
      $this->Persetujuan_model->delete($id);
      $this->session->set_flashdata('message', '<div class="alert alert-success">Data berhasil dihapus</div>');
      redirect('persetujuan');
      $this->db->where('id_proposal', $id);
      $this->db->update('proposal', array('is_available' => '0'));
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Data tidak ditemukan</div>');
      redirect('persetujuan');
    }
  }
}

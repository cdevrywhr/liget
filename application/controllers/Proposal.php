<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Proposal extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();

    $this->data['module'] = 'Proposal';

    $this->load->model(array('Proposal_model', 'Persetujuan_model', 'Jenis_model', 'Auth_model'));

    $this->data['company_data']              = $this->Company_model->company_profile();
    $this->data['layout_template']          = $this->Template_model->layout();
    $this->data['skins_template']           = $this->Template_model->skins();

    $this->data['btn_submit'] = 'Save';
    $this->data['btn_reset']  = 'Reset';
    $this->data['btn_add']    = 'Tambah Proposal Baru';
    $this->data['add_action'] = base_url('proposal/create');
  }

  function index()
  {
    is_login();
    is_read();

    if (!is_superadmin() && !is_admin() && !is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = $this->data['module'] . ' List';

    $this->data['get_all'] = $this->Proposal_model->get_all();
    $this->data['get_all_p'] = $this->Persetujuan_model->get_all();
    $this->data['get_user'] = $this->Auth_model->get_all();

    $this->load->view('back/proposal/proposal_list', $this->data);
  }

  function rej()
  {
    is_login();
    is_read();

    if (!is_superadmin() && !is_admin() && !is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = $this->data['module'] . ' List';

    $this->data['get_all'] = $this->Proposal_model->get_all_rej();
    $this->data['get_user'] = $this->Auth_model->get_all();

    $this->load->view('back/proposal/proposal_rej', $this->data);
  }

  function acc()
  {
    is_login();
    is_read();

    if (!is_superadmin() && !is_admin() && !is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = $this->data['module'] . ' List';

    $this->data['get_all'] = $this->Proposal_model->get_all_acc();
    $this->data['get_user'] = $this->Auth_model->get_all();

    $this->load->view('back/proposal/proposal_acc', $this->data);
  }

  function ava()
  {
    is_login();
    is_read();

    if (!is_superadmin() && !is_admin() && !is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = $this->data['module'] . ' List';

    $this->data['get_all'] = $this->Proposal_model->get_all_ava();
    $this->data['get_user'] = $this->Auth_model->get_all();

    $this->load->view('back/proposal/proposal_ava', $this->data);
  }

  function create()
  {
    is_login();
    is_create();

    if (!is_superadmin() && !is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = 'Ajukan ' . $this->data['module'];
    $this->data['action']     = 'proposal/create_action';

    $this->data['get_all_combobox_tujuan']   = $this->Auth_model->get_admin_combobox();
    $this->data['get_all_combobox_jenis']   = $this->Jenis_model->get_all_combobox();

    $this->data['kode_proposal'] = [
      'name'          => 'kode_proposal',
      'id'            => 'kode_proposal',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
      'required'      => '',
      'maxlength'     => '15',
      'value'         => $this->form_validation->set_value('kode_proposal'),
    ];
    $this->data['nama_proposal'] = [
      'name'          => 'nama_proposal',
      'id'            => 'nama_proposal',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
      'value'         => $this->form_validation->set_value('nama_proposal'),
    ];
    $this->data['nominal_pengajuan'] = [
      'name'          => 'nominal_pengajuan',
      'id'            => 'nominal_pengajuan',
      'class'         => 'form-control',
      'autocomplete'  => 'off',
      'type'          => 'number',
      'value'         => $this->form_validation->set_value('nominal_pengajuan'),
    ];
    $this->data['pd_id'] = [
      'name'          => 'pd_id',
      'id'            => 'pd_id',
      'disabled'      => '',
      'class'         => 'form-control',
    ];
    $this->data['jenis_id'] = [
      'name'          => 'jenis_id',
      'id'            => 'jenis_id',
      'class'         => 'form-control',
    ];
    $this->data['pengusul'] = [
      'name'          => 'pengusul',
      'id'            => 'pengusul',
      'class'         => 'form-control',
    ];

    $this->load->view('back/proposal/proposal_add', $this->data);
  }

  function create_action()
  {
    // $this->form_validation->set_rules('kode_proposal', 'Kode Proposal', 'trim|required');
    $this->form_validation->set_rules('nama_proposal', 'Nama Proposal', 'required');
    // $this->form_validation->set_rules('pd_id', 'PD', 'required');
    $this->form_validation->set_rules('jenis_id', 'Jenis', 'required');

    // $this->form_validation->set_message('required', '{field} wajib diisi');
    // $this->form_validation->set_message('valid_email', '{field} format email tidak benar');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->create();
    } else {
      if ($_FILES['file_proposal']['error'] <> 4) {
        $nmfile = strtolower(url_title($this->input->post('nama_proposal'))) . date('YmdHis');

        $config['upload_path']      = './assets/file_proposal/';
        $config['allowed_types']    = 'pdf|doc|docx|xls|xlsx|zip';
        $config['max_size']         = 2048; // 2Mb
        $config['file_name']        = $nmfile;

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('file_proposal')) {
          $error = array('error' => $this->upload->display_errors());
          $this->session->set_flashdata('message', '<div class="alert alert-danger">' . $error['error'] . '</div>');

          $this->create();
        } else {
          $file_proposal = $this->upload->data();
          $i = 1;
          $data = array(
            'kode_proposal'    => $this->session->id_users . date('mdHi'),
            'nama_proposal'    => $this->input->post('nama_proposal'),
            'pd_id'            => 2,
            // 'pd_id'            => $this->input->post('pd_id'),
            'jenis_id'         => $this->input->post('jenis_id'),
            'tahun_id'         => 1,
            'nominal_pengajuan' => $this->input->post('nominal_pengajuan'),
            'member_id'        => $this->session->id_users,
            'create_by'        => $this->session->username,
            'create_at'        => date('Y-m-d H:i:a'),
            'file_proposal'    => $this->upload->data('file_name'),
          );

          $this->Proposal_model->insert($data);

          write_log();

          $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
          redirect('proposal');
        }
      } else {
        $data = array(
          'kode_proposal'     => $this->session->id_users . date('mdHi'),
          'nama_proposal'     => $this->input->post('nama_proposal'),
          'pd_id'             => 2,
          'jenis_id'          => $this->input->post('jenis_id'),
          'tahun_id'          => 1,
          'nominal_pengajuan' => $this->input->post('nominal_pengajuan'),
          'member_id'         => $this->session->id_users,
          'create_by'         => $this->session->username,
          'create_at'         => date('Y-m-d H:i:a'),
        );

        $this->Proposal_model->insert($data);

        write_log();

        $this->session->set_flashdata('message', '<div class="alert alert-success">Data saved succesfully</div>');
        redirect('proposal');
      }
    }
  }

  function update($id)
  {
    is_login();
    is_update();

    if (is_admin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }
    $this->data['get_all_combobox_tujuan']   = $this->Auth_model->get_admin_combobox();
    $this->data['proposal']     = $this->Proposal_model->get_by_id($id);

    if ($this->data['proposal']) {
      $this->data['page_title'] = 'Update Data ' . $this->data['module'];
      $this->data['action']     = 'proposal/update_action';

      $this->data['id_proposal'] = [
        'name'          => 'id_proposal',
        'type'          => 'hidden',
      ];


      $this->data['get_all_combobox_jenis']   = $this->Jenis_model->get_all_combobox();

      // $this->data['kode_proposal'] = [
      //   'name'          => 'kode_proposal',
      //   'id'            => 'kode_proposal',
      //   'class'         => 'form-control',
      //   'autocomplete'  => 'off',
      //   'required'      => '',
      //   'maxlength'     => '15',
      // ];
      $this->data['nama_proposal'] = [
        'name'          => 'nama_proposal',
        'id'            => 'nama_proposal',
        'class'         => 'form-control',
        'autocomplete'  => 'off',
      ];
      $this->data['pd_id'] = [
        'name'          => 'pd_id',
        'id'            => 'pd_id',
        'class'         => 'form-control',
        'disabled'      => ''
      ];
      $this->data['jenis_id'] = [
        'name'          => 'jenis_id',
        'id'            => 'jenis_id',
        'class'         => 'form-control',
      ];
      $this->data['nominal_pengajuan'] = [
        'name'          => 'nominal_pengajuan',
        'id'            => 'nominal_pengajuan',
        'class'         => 'form-control',
        'type'         => 'number'
      ];

      $this->load->view('back/proposal/proposal_edit', $this->data);
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">prposal not found</div>');
      redirect('proposal');
    }
  }

  function update_action()
  {
    // $this->form_validation->set_rules('kode_proposal', 'Kode Proposal', 'trim|required');
    $this->form_validation->set_rules('nama_proposal', 'Nama Proposal', 'trim|required');
    // $this->form_validation->set_rules('pd_id', 'PD', 'required');
    $this->form_validation->set_rules('jenis_id', 'Jenis', 'required');

    // $this->form_validation->set_message('required', '{field} wajib diisi');
    // $this->form_validation->set_message('valid_email', '{field} format email tidak benar');

    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

    if ($this->form_validation->run() === FALSE) {
      $this->update($this->input->post('id_proposal'));
    } else {
      if ($_FILES['file_proposal']['error'] <> 4) {
        $nmfile = strtolower(url_title($this->input->post('nama_proposal'))) . date('YmdHis');

        $config['upload_path']      = './assets/file_proposal/';
        $config['allowed_types']    = 'pdf|doc|docx|xls|xlsx|zip';
        $config['max_size']         = 2048; // 2Mb
        $config['file_name']        = $nmfile;

        $this->load->library('upload', $config);

        $delete = $this->Proposal_model->get_by_id($this->input->post('id_proposal'));

        $dir        = "./assets/file_proposal/" . $delete->file_proposal;
        $dir_thumb  = "./assets/file_prposal/" . $delete->file_proposal_thumb;

        if (is_file($dir)) {
          unlink($dir);
        }

        if (!$this->upload->do_upload('file_proposal')) {
          $error = array('error' => $this->upload->display_errors());
          $this->session->set_flashdata('message', '<div class="alert alert-danger">' . $error['error'] . '</div>');

          $this->update($this->input->post('id_proposal'));
        } else {
          $file_proposal = $this->upload->data();

          $data = array(
            //'kode_proposal'        => $this->input->post('kode_proposal'),
            'nama_proposal'        => $this->input->post('nama_proposal'),
            //'pd_id'            => $this->input->post('pd_id'),
            'jenis_id'          => $this->input->post('jenis_id'),
            'nominal_pengajuan'         => $this->input->post('nominal_pengajuan'),
            'file_proposal'        => $this->upload->data('file_name'),
            'is_available'     => 0,
          );

          $this->Proposal_model->update($this->input->post('id_proposal'), $data);

          write_log();

          $this->session->set_flashdata('message', '<div class="alert alert-success">Data update succesfully</div>');
          redirect('proposal');
        }
      } else {
        $data = array(
          // 'kode_proposal'        => $this->input->post('kode_proposal'),
          'nama_proposal'        => $this->input->post('nama_proposal'),
          // 'pd_id'            => $this->input->post('pd_id'),
          'jenis_id'          => $this->input->post('jenis_id'),
          'nominal_pengajuan'         => $this->input->post('nominal_pengajuan'),
          'is_available'     => 0,
        );

        $this->Proposal_model->update($this->input->post('id_proposal'), $data);

        write_log();

        // $this->db->where('id_proposal', $this->input->post('proposal_id'));
        // $this->db->update('proposal', array('is_available' => '0'));

        $this->session->set_flashdata('message', '<div class="alert alert-success">Data update succesfully</div>');
        redirect('proposal');
      }
      $this->db->where('id_proposal', $this->input->post('proposal_id'));
      $this->db->update('proposal', array('is_available' => '0'));
    }
  }

  function delete($id)
  {
    is_login();
    is_delete();

    if (!is_superadmin() && !is_member()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $delete = $this->Proposal_model->get_by_id($id);

    if ($delete) {
      $data = array(
        'is_delete'   => '1',
        'deleted_by'  => $this->session->nama_proposal,
        'deleted_at'  => date('Y-m-d H:i:a'),
      );

      $this->Proposal_model->soft_delete($id, $data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data deleted successfully</div>');
      redirect('proposal');
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">No data found</div>');
      redirect('proposal');
    }
  }

  function delete_permanent($id)
  {
    is_login();
    is_delete();

    if (!is_superadmin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $delete = $this->Proposal_model->get_by_id($id);

    if ($delete) {
      $dir        = "./assets/file_proposal/" . $delete->file_proposal;

      if (is_file($dir)) {
        unlink($dir);
      }

      $this->Proposal_model->delete($id);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data deleted permanently</div>');
      redirect('proposal/deleted_list');
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">No data found</div>');
      redirect('proposal');
    }
  }

  function deleted_list()
  {
    is_login();
    is_restore();

    if (!is_superadmin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $this->data['page_title'] = 'Deleted ' . $this->data['module'] . ' List';

    $this->data['get_all_deleted'] = $this->Proposal_model->get_all_deleted();

    $this->load->view('back/proposal/proposal_deleted_list', $this->data);
  }

  function restore($id)
  {
    is_login();
    is_restore();

    if (!is_superadmin()) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">You can\'t access last page</div>');
      redirect('dashboard');
    }

    $row = $this->Proposal_model->get_by_id($id);

    if ($row) {
      $data = array(
        'is_delete'   => '0',
        'deleted_by'  => NULL,
        'deleted_at'  => NULL,
      );

      $this->Proposal_model->update($id, $data);

      write_log();

      $this->session->set_flashdata('message', '<div class="alert alert-success">Data restored successfully</div>');
      redirect('proposal/deleted_list');
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">No data found</div>');
      redirect('Proposal');
    }
  }

  function pilih_proposal()
  {
    $this->data['proposal']  = $this->Proposal_model->get_all_combobox_available($this->uri->segment(3));
    $this->load->view('back/proposal/form_proposal', $this->data);
  }
}

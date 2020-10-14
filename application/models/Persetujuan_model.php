<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Persetujuan_model extends CI_Model
{

  public $table = 'persetujuan';
  public $id    = 'id_persetujuan';
  public $order = 'DESC';

  function get_all()
  {
    // $this->db->join('users', 'persetujuan.member_id = users.id_users');
    $this->db->join('tahun_anggaran', 'tahun_anggaran.id_tahun = persetujuan.tahun_id ');
    $this->db->join('proposal', 'persetujuan.proposal_id = proposal.id_proposal');
    $this->db->where('proposal.pd_id', $this->session->id_users);
    return $this->db->get($this->table)->result();
  }

  function get_all_periode($tgl_awal, $tgl_akhir)
  {
    // $this->db->join('users', 'persetujuan.member_id = users.id_users');
    $this->db->join('proposal', 'persetujuan.proposal_id = proposal.id_proposal');
    $this->db->where('persetujuan.created_at >=', $tgl_awal);
    $this->db->where('persetujuan.created_at <=', $tgl_akhir);
    return $this->db->get($this->table)->result();
  }

  function get_all_combobox()
  {
    $this->db->order_by('kode_persetujuan');
    $data = $this->db->get($this->table);

    if ($data->num_rows() > 0) {
      foreach ($data->result_array() as $row) {
        $result[''] = '- Please Choose persetujuan';
        $result[$row['id_persetujuan']] = $row['kode_persetujuan'];
      }
      return $result;
    }
  }

  function get_tahun_combobox()
  {
    $this->db->order_by('id_tahun');
    $data = $this->db->get('tahun_anggaran');

    if ($data->num_rows() > 0) {
      foreach ($data->result_array() as $row) {
        $result[$row['id_tahun']] = $row['tahun_anggaran'];
      }
      return $result;
    }
  }


  function get_by_id($id)
  {
    $this->db->join('users', 'persetujuan.member_id = users.id_users');
    $this->db->join('proposal', 'persetujuan.proposal_id = proposal.id_proposal');
    $this->db->where($this->id, $id);
    return $this->db->get($this->table)->row();
  }

  function total_row()
  {
    return $this->db->get($this->table)->num_rows();
  }

  function total_rowsaccept()
  {
    if (is_member()) {
      $this->db->where('persetujuan.member_id', $this->session->id_users);
    }
    $this->db->where('status', '1');
    return $this->db->get($this->table)->num_rows();
  }

  function total_rowsreject()
  {
    if (is_member()) {
      $this->db->where('persetujuan.member_id', $this->session->id_users);
    }
    $this->db->where('status', '2');
    return $this->db->get($this->table)->num_rows();
  }

  function insert($data)
  {
    $this->db->insert($this->table, $data);
  }

  function update($id, $data)
  {
    $this->db->where($this->id, $id);
    $this->db->update($this->table, $data);
  }

  function delete($id)
  {
    $this->db->where($this->id, $id);
    $this->db->delete($this->table);
  }

  function lock_account($id, $data)
  {
    $this->db->where('username', $id);
    $this->db->update($this->table, $data);
  }

  // login attempt
  function get_total_login_attempts_per_user($id)
  {
    $this->db->where('username', $id);
    return $this->db->get('login_attempts')->num_rows();
  }

  function insert_login_attempt($data)
  {
    $this->db->insert('login_attempts', $data);
  }

  function clear_login_attempt($id)
  {
    $this->db->where('username', $id);
    $this->db->delete('login_attempts');
  }
}

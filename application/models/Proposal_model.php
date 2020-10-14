<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Proposal_model extends CI_Model
{

  public $table = 'proposal';
  public $id    = 'id_proposal';
  public $order = 'DESC';

  function get_all()
  {
    $this->db->join('users', 'proposal.pd_id = users.id_users');
    $this->db->join('detail_jenis', 'proposal.jenis_id = detail_jenis.id_jenis');
    $this->db->join('tahun_anggaran', 'proposal.tahun_id = tahun_anggaran.id_tahun');
    $this->db->where('proposal.is_delete', '0');
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    $this->db->order_by($this->id, $this->order);
    return $this->db->get($this->table)->result();
  }

  function get_all_ava()
  {
    $this->db->join('users', 'proposal.pd_id = users.id_users');
    $this->db->join('detail_jenis', 'proposal.jenis_id = detail_jenis.id_jenis');
    $this->db->join('tahun_anggaran', 'proposal.tahun_id = tahun_anggaran.id_tahun');
    $this->db->where('is_available', '0');
    $this->db->where('proposal.is_delete', '0');
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    $this->db->order_by($this->id, $this->order);
    return $this->db->get($this->table)->result();
  }

  function get_all_acc()
  {
    $this->db->join('users', 'proposal.pd_id = users.id_users');
    $this->db->join('detail_jenis', 'proposal.jenis_id = detail_jenis.id_jenis');
    $this->db->join('tahun_anggaran', 'proposal.tahun_id = tahun_anggaran.id_tahun');
    $this->db->where('is_available', '1');
    $this->db->where('proposal.is_delete', '0');
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    $this->db->order_by($this->id, $this->order);
    return $this->db->get($this->table)->result();
  }

  function get_all_rej()
  {
    $this->db->join('users', 'proposal.pd_id = users.id_users');
    $this->db->join('detail_jenis', 'proposal.jenis_id = detail_jenis.id_jenis');
    $this->db->join('tahun_anggaran', 'proposal.tahun_id = tahun_anggaran.id_tahun');
    $this->db->where('is_available', '3 & 2');
    $this->db->where('proposal.is_delete', '0');
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    $this->db->order_by($this->id, $this->order);
    return $this->db->get($this->table)->result();
  }


  function get_all_combobox()
  {
    $this->db->order_by('nama_proposal');
    $data = $this->db->get($this->table);

    if ($data->num_rows() > 0) {
      foreach ($data->result_array() as $row) {
        $result[''] = '- Pilih Proposal -';
        $result[$row['id_proposal']] = $row['nama_proposal'];
      }
      return $result;
    }
  }

  function get_all_combobox_available($id)
  {
    $this->db->join('users', 'proposal.member_id = users.id_users');
    $this->db->where('id_users', $id);
    $this->db->where('pd_id', $this->session->id_users);
    $this->db->where('is_available =', 0);
    $this->db->order_by('nama_proposal');
    $data = $this->db->get($this->table);

    if ($data->num_rows() > 0) {
      foreach ($data->result_array() as $row) {
        $result[''] = '- Pilih Proposal -';
        $result[$row['id_proposal']] = $row['nama_proposal'];
      }
      return $result;
    }
  }

  function get_all_user_proposal($id)
  {
    $this->db->where($this->id, $id);
    return $this->db->get($this->table)->nums_row();
  }

  function get_all_deleted()
  {
    $this->db->join('pd', 'proposal.pd_id = pd.id_pd');
    $this->db->join('users', 'proposal.jenis_id = users.id_users');
    $this->db->where('proposal.is_delete', '1');
    $this->db->order_by($this->id, $this->order);
    return $this->db->get($this->table)->result();
  }

  function get_by_id($id)
  {
    $this->db->where($this->id, $id);
    return $this->db->get($this->table)->row();
  }

  function total_rows()
  {
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    return $this->db->get($this->table)->num_rows();
  }
  function total_rowswaiting()
  {
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    $this->db->where('is_available', '0');
    return $this->db->get($this->table)->num_rows();
  }
  function total_rowsacc()
  {
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    $this->db->where('is_available', '1');
    return $this->db->get($this->table)->num_rows();
  }
  function total_rowsrej()
  {
    if (is_member()) {
      $this->db->where('proposal.member_id', $this->session->id_users);
    } else if (is_admin()) {
      $this->db->where('proposal.pd_id', $this->session->id_users);
    }
    $this->db->where('is_available', '3 & 2');
    //$this->db->where('is_available', '2');
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

  function soft_delete($id, $data)
  {
    $this->db->where($this->id, $id);
    $this->db->update($this->table, $data);
  }

  function delete($id)
  {
    $this->db->where($this->id, $id);
    $this->db->delete($this->table);
  }
}

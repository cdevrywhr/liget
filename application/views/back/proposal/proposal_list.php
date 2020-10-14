<?php $this->load->view('back/template/meta'); ?>
<div class="wrapper">

  <?php $this->load->view('back/template/navbar'); ?>
  <?php $this->load->view('back/template/sidebar'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1><?php echo $page_title ?>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><?php echo $module ?></li>
        <li class="active"><?php echo $page_title ?></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <?php if ($this->session->flashdata('message')) {
        echo $this->session->flashdata('message');
      } ?>

      <div class="box box-primary">
        <?php if (is_member() or is_superadmin()) : ?>
          <div class="box-header"><a href="<?php echo $add_action ?>" class="btn btn-primary"><i class="fa fa-plus"></i> <?php echo $btn_add ?></a> </div>
        <?php endif; ?>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="table-responsive">
            <table id="dataTable" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th style="text-align: center">No</th>
                  <th style="text-align: center">Tanggal</th>
                  <th style="text-align: center">Kode Proposal</th>
                  <th style="text-align: center">Nama Proposal</th>
                  <th style="text-align: center">PD Tujuan</th>
                  <th style="text-align: center">Jenis</th>
                  <th style="text-align: center">Pengusul</th>
                  <th style="text-align: center">Nominal Pengajuan</th>
                  <th style="text-align: center">Nominal Disetujui</th>
                  <th style="text-align: center">Tahun Anggaran</th>
                  <th style="text-align: center">Status</th>
                  <?php if (is_admin() or is_superadmin()) : ?>
                    <th style="text-align: center">File</th>
                  <?php endif; ?>
                  <?php if (is_member() or is_superadmin()) : ?>
                    <th style="text-align: center">Action</th>
                  <?php endif; ?>
                </tr>
              </thead>
              <tbody>
                <?php $no = 1;
                foreach ($get_all as $data) {
                  if ($data->is_available == 0) {
                    $is_available = "<a id='btn-memo'class='btn btn-xs' data-toggle='modal' data-target='#modal-memo' data-memo=' $data->memo'>Sedang diproses</a> ";
                  } else if ($data->is_available == 1) {
                    $is_available = "<a id='btn-memo'class='btn btn-xs btn-success' data-toggle='modal' data-target='#modal-memo' data-memo ='$data->memo'><i class='fa fa-check'></i> DiSetujui</a>";
                  } else if ($data->is_available == 2) {
                    $is_available = "<a id='btn-memo'class='btn btn-xs btn-danger' data-toggle='modal' data-target='#modal-memo' data-memo ='$data->memo'><i class='fa fa-remove'></i> diTolak</a>";
                  } else {
                    $is_available = "<a id='btn-memo'class='btn btn-xs btn-danger' data-toggle='modal' data-target='#modal-memo' data-memo ='$data->memo'><i class='fa fa-remove'></i> Belum Memenuhi Syarat</a>";
                  }
                  if ($data->tahun_id == 0) {
                    $ket = "<i class='btn btn-xs btn-success' >Tunggu Verifikasi</i>";
                  } else {
                    $ket = "<i class='btn btn-xs btn-success' >$data->tahun_anggaran</i>";
                  }
                  // action
                  $edit = '<a href="' . base_url('proposal/update/' . $data->id_proposal) . '" class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a>';
                  $delete = '<a href="' . base_url('proposal/delete/' . $data->id_proposal) . '" onClick="return confirm(\'Apakah Anda Yakin?\');" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>';
                ?>
                  <tr>
                    <td style="text-align: center"><?php echo $no++ ?></td>
                    <td style="text-align: center"><?php echo $data->create_at ?></td>
                    <td style="text-align: left"><?php echo $data->kode_proposal ?></td>
                    <td style="text-align: center"><?php echo $data->nama_proposal ?></td>
                    <td style="text-align: center"><?php echo $data->name ?></td>
                    <td style="text-align: center"><?php echo $data->nama_jenis ?></td>
                    <td style="text-align: center"><?php echo $data->create_by ?></td>
                    <td style="text-align: center"><?php echo $data->nominal_pengajuan ?></td>
                    <td style="text-align: center"><?php echo $data->nominal_setujui ?></td>
                    <td style="text-align: center"><?php echo $ket ?></td>
                    <td style="text-align: center"><?= $is_available ?></a></td>
                    <?php if (is_superadmin() or is_admin()) : ?>
                      <td style="text-align: center"><a href="<?php echo base_url('assets/file_proposal/' . $data->file_proposal) ?>" class="btn btn-xs btn-info"> DOWNLOAD</a></td>
                    <?php endif; ?>
                    <?php if (is_superadmin()) : ?>
                      <td style="text-align: center">
                        <?php echo $edit ?>
                        <?php echo $delete ?>
                      </td>
                    <?php endif; ?>
                    <?php if (is_member()) : ?>
                      <td style="text-align: center">
                        <?php echo $edit ?>
                      </td>
                    <?php endif ?>
                  </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </section>
    <!-- /.content -->
    <!-- Modal -->
    <div class="modal fade" id="modal-memo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Keterangan Status</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <span id="memo"></span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.content-wrapper -->

  <?php $this->load->view('back/template/footer'); ?>
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>datatables-bs/css/dataTables.bootstrap.min.css">
  <script src="<?php echo base_url('assets/plugins/') ?>datatables/js/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url('assets/plugins/') ?>datatables-bs/js/dataTables.bootstrap.min.js"></script>
  <script>
    $(document).ready(function() {
      $('#dataTable').DataTable();
    });
  </script>

  <script>
    $(document).ready(function() {
      $(document).on('click', '#btn-memo', function() {
        var memo = $(this).data('memo');
        $('#memo').text(memo);
      });
    });
  </script>

</div>
<!-- ./wrapper -->

</body>

</html>
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

        <!-- /.box-header -->
        <div class="box-body">
          <div class="table-responsive">
            <table id="dataTable" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th style="text-align: center">No</th>
                  <th style="text-align: center">Kode Proposal</th>
                  <th style="text-align: center">Nama Proposal</th>
                  <th style="text-align: center">PD Tujuan</th>
                  <th style="text-align: center">Jenis</th>
                  <th style="text-align: center">Pengusul</th>
                  <th style="text-align: center">Status</th>
                  <th style="text-align: center">File</th>
                  <th style="text-align: center">Action</th>
                </tr>
              </thead>
              <tbody>
                <?php $no = 1;
                foreach ($get_all_deleted as $data) {
                  if ($data->is_available == '0') {
                    $is_available = "<button class='btn btn-xs btn-success'><i class='fa fa-check'></i> Diterima</button> ";
                  } else {
                    $is_available = "<button class='btn btn-xs btn-danger'><i class='fa fa-remove'></i> Ditolak</button>";
                  }
                  // action
                  $restore = '<a href="' . base_url('proposal/restore/' . $data->id_proposal) . '" class="btn btn-sm btn-warning"><i class="fa fa-refresh"></i></a>';
                  $delete = '<a href="' . base_url('proposal/delete_permanent/' . $data->id_proposal) . '" onClick="return confirm(\'Are you sure?\');" class="btn btn-sm btn-danger"><i class="fa fa-remove"></i></a>';
                ?>
                  <tr>
                    <td style="text-align: center"><?php echo $no++ ?></td>
                    <td style="text-align: left"><?php echo $data->kode_proposal ?></td>
                    <td style="text-align: center"><?php echo $data->nama_proposal ?></td>
                    <td style="text-align: center"><?php echo $data->name ?></td>
                    <td style="text-align: center"><?php echo $data->jenis ?></td>
                    <td style="text-align: center"><?php echo $data->created_by ?></td>
                    <td style="text-align: center"><?php echo $is_available ?></td>
                    <td style="text-align: center"><a href="<?php echo base_url('assets/file/proposal/' . $data->file_proposal) ?>" class="btn btn-xs btn-info"> DOWNLOAD</a></td>
                    <td style="text-align: center"><?php echo $restore ?> <?php echo $delete ?></td>
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

</div>
<!-- ./wrapper -->

</body>

</html>
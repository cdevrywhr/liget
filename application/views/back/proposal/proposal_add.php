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
      <?php echo validation_errors() ?>
      <div class="box box-primary">
        <?php echo form_open_multipart($action) ?>
        <div class="box-body">
          <!-- <div class="form-group"><label>Kode Proposal (*)</label>
            <?php echo form_input($kode_proposal) ?>
          </div> -->
          <div class="form-group"><label>Nama Proposal (*)</label>
            <?php echo form_input($nama_proposal) ?>
          </div>
          <div class="form-group"><label>OPD Tujuan (*)</label>
            <?php echo form_dropdown('', $get_all_combobox_tujuan, '', $pd_id) ?>
          </div>
          <div class="form-group"><label>Jenis (*)</label>
            <?php echo form_dropdown('', $get_all_combobox_jenis, '', $jenis_id) ?>
          </div>
          <div class="form-group"><label>Nominal Pengajuan (*)</label>
            <?php echo form_input($nominal_pengajuan) ?>
          </div>
          <div class="form-group"><label>File</label>
            <input type="file" name="file_proposal" id="file_proposal" />
            <p class="help-block">Maximum file size is 2Mb</p>
          </div>
        </div>
        <div class="box-footer">
          <button type="submit" name="button" class="btn btn-success"><i class="fa fa-save"></i> <?php echo $btn_submit ?></button>
          <button type="reset" name="button" class="btn btn-danger"><i class="fa fa-refresh"></i> <?php echo $btn_reset ?></button>
        </div>
        <!-- /.box-body -->
        <?php echo form_close() ?>
      </div>

      <!-- /.box -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <?php $this->load->view('back/template/footer'); ?>

</div>
<!-- ./wrapper -->

</body>

</html>
<!-- Small boxes (Stat box) -->
<div class="row">
  <div class="col-lg-3 col-md-3 col-sm-3">
    <div class="small-box bg-aqua">
      <div class="inner">
        <h3><?= $get_total_persetujuan ?></h3>
        <p>Persetujuan</p>
      </div>
      <div class="icon"><i class="fa fa-edit"></i></div>
      <a href="<?php echo base_url('proposal/acc') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>

  <div class="col-lg-3 col-md-3 col-sm-3">
    <div class="small-box bg-blue">
      <div class="inner">
        <h3><?= $get_total_pengembalian ?></h3>
        <p>Pengembalian</p>
      </div>
      <div class="icon"><i class="fa fa-edit"></i></div>
      <a href="<?php echo base_url('proposal/rej') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>

  <div class="col-lg-3 col-md-3 col-sm-3">
    <div class="small-box bg-blue">
      <div class="inner">
        <h3><?= $get_total_sedangproses ?></h3>
        <p>Sedang diproses</p>
      </div>
      <div class="icon"><i class="fa fa-edit"></i></div>
      <a href="<?php echo base_url('proposal/ava') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <div class="col-lg-3 col-md-3 col-sm-3">
    <div class="small-box bg-navy">
      <div class="inner">
        <h3><?= $get_total_proposal ?></h3>
        <p>Semua Proposal Terdaftar</p>
      </div>
      <div class="icon"><i class="fa fa-archive"></i></div>
      <a href="<?php echo base_url('proposal') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <?php if (is_superadmin()) : ?>
    <div class=" col-lg-3 col-xs-6">
      <div class=" small-box bg-red">
        <div class="inner">
          <h3><?php echo $get_total_usernow ?></h3>
          <p>User Baru Hari Ini</p>
        </div>
        <div class="icon"><i class="fa fa-user"></i></div>
        <a href="<?php echo base_url('auth/user_new') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="small-box bg-purple">
        <div class="inner">
          <h3><?= $get_total_pd ?></h3>
          <p>Pemerintahan Daerah</p>
        </div>
        <div class="icon"><i class="fa fa-building"></i></div>
        <a href="<?php echo base_url('pd') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-red">
        <div class="inner">
          <h3><?php echo $get_total_user ?></h3>
          <p>Total User</p>
        </div>
        <div class="icon"><i class="fa fa-user"></i></div>
        <a href="<?php echo base_url('auth') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
  <?php endif; ?>
</div>
<!-- /.row -->
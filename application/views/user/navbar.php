<?php
$assets_location = base_url()."aset/Regna/";
?>

<body>

  <!--==========================
  Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="#hero"><img src="img/logo.png" alt="" title="" /></img></a>
        <!-- Uncomment below if you prefer to use a text logo -->
        <!--<h1><a href="#hero">Regna</a></h1>-->
      </div>

      <div class="kiri">
        <li class="menu-active"><a href="#">KOPMA ITS</a></li>
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#hero">Home</a></li>
          <li><a href="#portfolio">Portfolio</a></li>
         <!-- <li><a href="#team">Team</a></li>-->
          <li class="menu-has-children"><a href="">Kategori</a>
            <ul>
              <li><a href="#">Semua Produk</a></li>
              <li class="menu-has-children"><a href="#">Favorit</a>
                <!-- <ul>
                  <li><a href="#"></a></li>
                  <li><a href="#">Favorit</a></li>
                  <li><a href="#">Promo</a></li>
                  <li><a href="#">Jaket</a></li>
                  <li><a href="#">Gelang</a></li>
                </ul> -->
              </li>
              <li><a href="#">Jaket</a></li>
              <li><a href="#">Gelang</a></li>
              <li><a href="#">Gantungan Kunci</a></li>
              <li><a href="#">Stiker</a></li>
            </ul>
          </li>
          <li><a href="#contact">Contact Us</a></li>
          <li><a href="#">Log Transaksi</a></li>
          <li><a href="<?php echo base_url();?>index.php/login/logout">Logout</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->
<?php
$assets_location = base_url()."aset/flat/";
?>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Member KOPMA ITS</title>
  
  <link rel="stylesheet" href="<?php echo $assets_location;?>https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='<?php echo $assets_location;?>http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='<?php echo $assets_location;?>http://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet prefetch' href='<?php echo $assets_location;?>https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="<?php echo $assets_location;?>css/style.css">

  
</head>

<body>
  
<div class="container">
  <div class="info">
    <h1>Login Member KOPMA ITS</h1><span>Made with <i class="fa fa-heart"></i> by Koperasi Mahasiswa ITS</span>
  </div>
</div>


<div class="form">
  <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>
  <form class="login-form" method="post" action="<?php echo base_url();?>index.php/login/login">
  
    <input type="text" placeholder="username" name="username"/>
    <input type="password" placeholder="password" name="password"/>
    <button>login</button>
  </form>
</div>

  <script src='<?php echo $assets_location;?>http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="<?php echo $assets_location;?>js/index.js"></script>

</body>
</html>

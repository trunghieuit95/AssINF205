<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="mystyles.css" />
<title>Untitled Document</title>
</head>

<body>
    <nav class="navbar navbar-inverse" style="border-radius:0px">
      <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<div class="container">
	<!--menu header -->
	<div class="row" id="header">
    	<div class="col-md-2 text-center">Trang chủ</div>
        <div class="col-md-2 text-center">Sản phẩm</div>
        <div class="col-md-4 text-center"><img src="img/logo.png" width="150"/></div>
        <div class="col-md-2 text-center">Liên hệ</div>
        <div class="col-md-2 text-center">Giới thiệu</div>
    </div>
    <!-- Content -->
        <div class="row">
            <h1 class="text-center" style="color:#F00"><strong>Góp ý cho chúng tôi</strong></h1>
            <hr />
            <div class="col-md-7">
             <form method="post" action="" onsubmit="return validateForm()" name="myform">
            	
                <div class="form-group">
                    <label for="name">Tên :</label>
                    <input type="hidden" />
                    <input type="text" class="form-control" id="name" name="name" placeholder="Họ và tên">
                  </div>
                  <div class="form-group">
                    <label for="email">Địa chỉ Email : </label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                  </div>
                  <div class="form-group">
                    <label for="phone">Số điện thoại : </label>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại">
                  </div>
                  <div class="form-group">
                    <label for="adress">Địa chỉ : </label>
                    <input type="text" class="form-control" id="adress" name="adress" placeholder="Địa chỉ">
                  </div>
                  <div class="form-group">
                    <label for="content">Nội dung : </label>
                    <textarea class="form-control" rows="3" id="content" name="content" placeholder="Nội dung"></textarea>
                  </div>
                  <button type="submit" class="btn btn-default btn-danger">Gửi ý kiến</button>
                  <button type="reset" class="btn btn-default btn-danger">Nhập lại</button>
                  <a href="index.php" class="btn btn-default btn-danger">Hủy</a>
          </form>
            </div>
            <div class="col-md-5">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14895.70309389284!2d105.75543021995264!3d21.035655789540723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf6b89b17769714f3!2zVHLGsOG7nW5nIENhbyDEkOG6s25nIFRo4buxYyBIw6BuaCBGcHQ!5e0!3m2!1svi!2s!4v1470904448799" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
		</div>
</div>
<footer class="footer">
	    <div class="container">
    	<div class="row">
            <div class="col-md-6">
            	<h1>Liên hệ</h1>
                <div class="row">Đỗ Gia Long : 0966 078 534</div>
                <div class="row">Nguyễn Trung Hiếu : 0167 260 5929</div>
                <div class="row">Địa chỉ : 4/810 Đê La Thành - Ba Đình - Hà Nội</div>
            </div>
            <div class="col-md-6" style="margin-top:5px;">
                <div class="row"><a href="#">Giới thiệu</a></div>
                <div class="row"><a href="#">Sản phẩm</a></div>
                <div class="row"><a href="#">Liên hệ</a></div>
            </div>
       	</div>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
</body>
</html>

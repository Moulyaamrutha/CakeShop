
<div style="opacity: 0.7 "class="header">
  <a href="index.php" class="logo">Online Cake Ordering System</a>
  <div class="header-right">
    <a class="active" href="http://localhost/cake/index.php">Home</a>
    <a href="http://localhost/cake/contact.php">Contact</a>
  </div>
</div>
<link rel="stylesheet" href="styles.css">
<div style="padding-left:20px">
  <h1>Contact us</h1>
<link rel="stylesheet" href="styles.css">
<style>
body {
  background-image: url('bac.jpg');
}
</style>
<form method="post"  action="test.php" >
	<div class="row">
		<div class="col-md-8">
		<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4"><?php echo @$err;?></div>
	</div>

<br>

	<div class="row">
		<div class="col-sm-4">Enter Your Name</div>
		<div class="col-sm-5">
		<input type="text" name="name" class="form-control" required/></div>
	</div>
	<div class="row">
		<div class="col-sm-4">Enter Your Mobile</div>
		<div class="col-sm-5">
		<input type="text" name="phone" class="form-control" required/></div>
	</div>

	<div class="row">
		<div class="col-sm-4">Enter Your Message</div>
		<div class="col-sm-5">
		<input type="text" name="message" class="form-control" required/></div>
	</div>

	<div class="row" style="margin-top:10px">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		<input type="submit" value="Submit" name="save" class="btn btn-success"/>


		</div>
	</div>

		</div>
	</div>


</form>

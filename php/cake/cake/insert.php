<html>
<head>
<link rel="stylesheet" href="sweetalert2.min.css">
<link rel="stylesheet" href="styles.css">
  <div class="header">
  <a class="logo">Online Cake Ordering System</a>
  <div class="header-right">
    <a class="active" href="http://localhost/cake/index.php">Home</a>
  </div>
</div>
</head>
<div id="topSpace"></div>

<link rel="stylesheet" href="styles.css">   
<div class="wrapper">
    <center>
<?php
  //include("test.php");
$conn = mysqli_connect("localhost", "root", "", "cake"); 
// Check connection
if($conn === false){
    die("ERROR: Could not connect. "
        . mysqli_connect_error());
}
$name=$phone=$cand="";
// Taking all 5 values from the form data(input)
$name = $_REQUEST['name'];
$phone = $_REQUEST['phone'];
$address = $_REQUEST['address'];
$pin = $_REQUEST['pin'];
$btn = $_REQUEST['btn'];
$cus = $_REQUEST['cus'];
$payment = $_REQUEST['payment'];
// Performing insert query execution
// here our table name is college
$sql = "INSERT INTO customers(name,phone,address,pincode,item_id,custom,payment) VALUES ('$name',$phone,'$address','$pin','$btn','$cus','$payment')";

//$result = $conn->query($sql2);
if(strlen($phone)==10){


    if(mysqli_query($conn, $sql)){
       
        echo "<h3>Your Cake has been orderd successfully.</h3>";
        header( "refresh:10;url=index.php" );
       // echo ("\n$name\n $phone\n$address  ");
      // header("Location :payment.php");
    } else{

        echo "ERROR: Hush! Sorry $sql. "
            . mysqli_error($conn);
    }
}
else{
    echo "<h2>Invalid Phone number</h2>";
}

mysqli_close($conn);
?>
</div>
</center>
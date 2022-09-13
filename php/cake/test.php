<!DOCTYPE html>
<html>
<head>
    <title>Insert Page page</title>
</head>
<div id="topSpace"></div>
<link rel="stylesheet" href="styles.css">
<body><div class="wrapper">
<center>
    <?php
     echo nl2br("Thank you for yor details,You will be contacted by our team as soon as possible");

    $conn = mysqli_connect("localhost", "root", "", "cake");

    // Check connection
    if($conn === false){
        die("ERROR: Could not connect. "
            . mysqli_connect_error());
    }

    // Taking all 5 values from the form data(input)
    $name=$phone="";


    // Taking all 5 values from the form data(input)
    $name = $_REQUEST['name'];
    $phone= $_REQUEST['phone'];
    $message= $_REQUEST['message'];
    $sql = "INSERT INTO contact (name,phone,Message) VALUES ('$name',$phone,'$message')";
    if(mysqli_query($conn, $sql)){
       
        
    } 
    else{
        echo "ERROR: Hush! Sorry $sql. "
            . mysqli_error($conn);
    }

    // Close connection
    mysqli_close($conn);
    ?>
   
</center>
</div>
</body>

</html>

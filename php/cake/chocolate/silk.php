<!DOCTYPE html>
<html lang="en">
<head>
  <title>Check Out</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles.css">
  <div class="header">
  <a class="logo">Online Cake Ordering System</a>
  <div class="header-right">
    <a class="active" href="http://localhost/cake/index.php">Home</a>
  </div>
</div>
</head>
<body>

<div class="container">
  <h2>Check Out</h2>
  <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cake";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM chocolate where choco_id='choco_004'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo '<h3>Name:'.$row["name"].'   OrderTotal : RS.'.$row["price"].'</h3>';
      //SELECT * FROM vw_result where count=(SELECT max(count) FROM vw_result);
  }
} 
else {
  echo "0 results";
}
$conn->close();
?>
  <form class="form-horizontal" action="insert.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter Name" name="name" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="phone">Phone:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="phone" placeholder="Enter Phone" name="phone" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="address">Address:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="address" placeholder="Enter Address" name="address" required>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pin">Pin:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pin" placeholder="Enter Pin" name="pin" required>
      </div>
    </div>

    
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="cus">Payment Method:</label>
      <div class="col-sm-10">
       
<select name="payment" id="payment">
  <option value="Cash">Cash On Delivery</option>
  <option value="Debit card">Debit card</option>
  <option value="Credit card">Credit card</option>
  <option value="UPI">UPI</option>
</select>
      </div>
    </div>
    

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" name ='btn' value="choco004">Submit</button>
      </div>
    </div>

  </form>
</div>

</body>
</html>

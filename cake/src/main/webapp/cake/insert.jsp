<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
    
    <% 

String name=request.getParameter("name");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String pin=request.getParameter("pin");
String btn=request.getParameter("btn");
String cus=request.getParameter("cus");
String payment=request.getParameter("payment");

String query = "INSERT INTO customers(name,phone,address,pincode,item_id,custom,payment) VALUES ('"+name+"',"+phone+",'"+address+"',"+pin+",'"+btn+"','"+cus+"','"+payment+"');";

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake", "root", "root");
	System.out.println("Connection Established successfully");
	PreparedStatement st = con.prepareStatement(query);
	st.executeUpdate(query);
    st.close();
    con.close();


%>
    
<h3>Your Cake has been ordered successfully.</h3>
</div>
</center>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs527.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookBid: Bid</title>
</head>
<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			text-align: center;
		}
		h1 {
            margin-top: 0;
            font-size: 30px;
        }
        a:link,
        a:visited {
            color: black;
            text-decoration: none;
        }
        a:hover {
            color: black;
            text-decoration: underline;
        }
        input[type="submit"] {
        font-size: 15px;
        height: 30px;
        width: 200px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      /* Darken the button on hover */
      input[type="submit"]:hover {
        background-color: #3e8e41;
      }
</style>
	<div class="h1"><h1 style="font-size:30px"><strong> <a href="LoginSuccess.jsp"> BookBid </a> </strong></h1></div>
<body>	
<p style="font-size:20px"><strong> Automatic Bid on <%out.println(request.getSession().getAttribute("selectedItemName"+ request.getSession().getAttribute("itemNum").toString())); %> </strong></p>
<form action="AutomaticBidPageJava.jsp">
<input type="auto_bid" id="auto_bid" name="auto_bid" placeholder="Place Maximum Bid (without $ sign)" style="height: 20px; width: 230px">
<br></br>
<input type="auto_bid_inc" id="auto_bid_inc" name="auto_bid_inc" placeholder="Place Bid Increment (without $ sign)" style="height: 20px; width: 230px">
<br></br>
<input type="submit" value="Place Automatic Bid">
</form>
</body>
</html>
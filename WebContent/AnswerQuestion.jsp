<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs527.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import = "java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookBid: Questions</title>
</head>
<style>
		body {
       background-color: #f7f7f7;
       font-family: Arial, sans-serif;
       font-size: 16px;
       line-height: 1.5;
       text-align: center;
   }
    
    /* Heading styles */
    h1 {
        font-size: 32px;
        font-weight: bold;
        margin-top: 0;
        margin-bottom: 24px;
        text-align: center;
        text-transform: uppercase;
    }
    
    /* Link styles */
    a:link,
    a:visited {
        color: black;
        text-decoration: none;
    }
    a:hover {
        color: black;
        text-decoration: underline;
    }
    
    /* Table styles */
    table {
        border-collapse: collapse;
        margin: 0 auto;
        width: 50%;
    }
    
    th, td {
        border: 1px solid #ccc;
        padding: 12px;
        text-align: center;
    }
    
    th {
        background-color: #f7f7f7;
        font-weight: bold;
        text-transform: uppercase;
    }
    
    tr:nth-child(even) {
        background-color: #f2f2f2;
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
	<div class="h1"><h1><a href="CustomerRepHomePage.jsp"> BookBid </a></h1></div>
<center><body>	
<%

String question = (String)request.getSession().getAttribute("question");
out.println("<strong> Answer \'"+ question +"\' </strong>");
%>

<br>
<form action="AnswerQuestionJava.jsp">
<p>
   <textarea name="answer_question" id="answer_question" style="height: 100px; width: 250px;" placeholder="Answer (max. 600 characters)"></textarea>
</p>
	<input type="submit" value="Submit Answer">
</form>

</body>
</html>
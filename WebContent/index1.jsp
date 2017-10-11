<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
body{
font-family: cursive,'Lucida Sans Unicode';
color: #000305;
}
.body{
margin: 0% auto;
clear: both;
}
a{
text-decoration: none;

}


#a{
 height:100%;
 width:92%; 
}
#b{
    height:90px;
    width:120%;
background-color: blue;
}
#c{
     height:500px;
     width:100%;
   /*   background-image: url("image/bus3.jpg");  */
}
#c1{
     height:100%;
     width:60%;
     float:left;
       /*  background-image: url("image/index.jpg");  */
}
#c2{
height:100%;
width:40%;
float:right;
background-color: yellow;

}
#upper{
height:53%;
width:148%;
background-color: pink;
   background-image: url("image/bus4.jpg"); 

}
#lower{
height:46%;
width:148%;
background-color:yellow;
}
#fmenu{
height:95px;
width:120%;
background-color: pink;

}
#footer{
height:100px;
width:120%;
background-color: blue;

}
#ab{
height:30%;
text-align: center;
text-shadow:none;
}
.a{
background-color: red;
}
a:link a:visited{
}

a:hover a:active{


}

.mainheader nav{
background-color: #666;
height: 60px;
/* border-radius:5px; */
}
.mainheader nav ul{
list-style: none;
margin: 0 auto;
}
.mainheader nav ul li{
float:center;
display: inline;
}
.mainheader nav a:link .mainheader nav a:visited {
	color: #fff;
	display: inline-block;
	padding: 20px 25px;
}
.mainheader nav a:hover  .mainheader nav a:active 
, .mainheader nav .active a:link , .mainheader nav .active a:visited {
background-color: #CFSC3F;
}
.iframe{
background-color: gray;

}

</style>

<body>
<div id="a">

<div id="b">
<img src="image/images9.jpg" width="100%" height="100px">
<!-- <h1 id="ab"><b><font color="yellow">WELCOME TO BHUBANESWAR BUS TRAVELLING SERVICE (ODISHA)</font></b></h1> -->
 <marquee><b><font color="green">* Opposite over bridge left side of crp square . * pin 751024 dist-Khorda . * 24*7 Available buses here.</font></b></marquee><br>
 <header class="mainheader">
<nav>
 <ul class="nav nav-pills">
    <li><a href="index1.jsp"><img alt="" src='image/home.jpg' height='45px' width='50px'></a></li>
     <li><a href="route.jsp"><img alt="" src='image/book.jpg' height='45px' width='80px'></a></li>
      <li><a href="admin.html"><img alt="" src='image/admin.jpg' height='45px' width='80px'></a></li>
       <li><a href="fetch.html"><img alt="" src='image/search.jpg' height='45px' width='50px'></a></li>
        <li><a href="login.html"><img alt="" src='image/logout.jpg' height='45px' width='80px'></a></li>
         <li><a href="more.jsp"><img alt="" src='image/about.jpg' height='45px' width='80px'></a></li>
         <li><a href="cancel.html"> <b><font color="orange">CANCEL</font></b><!-- <img alt="" src='image/about.jpg' height='45px' width='80px'> --></a></li>
         
 </ul>
 </nav>
 </header>
 
 
 
 
 
</div>
<div id="c">
<div id="c1">
<img src="image/odisha.jpg" height="600" width="700">

</div>
<div id="c2">

<div id="upper">
<b><i><font color="darkgreen"></font></i></b><br><br>
<b><i><font color="darkgreen">OSRTC BUS BOOKING</font></i></b><br><br>
<!-- <b><a href="ok.html"><b>BOOK BUS HERE.</b></a></b><br>  --> 
</div>
<div id="lower">

<%@ page import="java.util.*" %>

<!-- <iframe class="iframe" src="" height="50" width="200"> -->
<%
String name=request.getParameter("name1");             /* (String)session.getAttribute("name1");   */
out.print("<div height='100' width='100' color='brown'>");
out.print("Hello, "+"<font color='blue'>"+name+"</font>"+" Welcome to Profile");  
out.print("</div>");

%>
<!-- </iframe> -->
<!-- <b><a href="fetch.html">FETCH YOUR DATA HERE</a></b> -->

</div>

</div>

</div>


<div id="fmenu">
<font color="black"><i>NOTE:  	
<font color="brown">About the Organisation</font>

In 1948, the State Govt. took over operation of bus services run by erstwhile princely states under State Transport Services (STS) of Transport Department.

In 1950, the Central Act, R.T.C. Act was enacted (Act No. 64 of 1950) which required creation of Road Transport Corporations under respective State Governments. The OSRTC was created w.e.f. 15.5.1974 and the assets and employees of State Transport Services were transferred to the O.S.R.T.C.</i></font>.


</div>
<div id="footer">

<p><font color="white">M/s Dream Team Shahara Plot No.N-5/538, 2nd & 3rd Floor, S.B.I.Building, IRC Village, Nayapalli, Bhubaneswar- 751015
© 2014 DREAM TEAM SHAHARA. All Rights Reserved.
Powered by Software Flame</font></p>

</div>
</div>

</body>
</html>
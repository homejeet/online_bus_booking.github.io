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
 background-image: url("image/bus1.jpg"); 
height:100%;
width:100%;
}
.table{
table-layout:inherit;
float:right;
height:200px;
width:60px
}
.b1{
height:10%;
width:60px;
background-position: top;
}
.mainheader nav{
float:right;
background-color:;
height: 60px;
/* border-radius:5px; */
}
.mainheader nav ul{
list-style: none;
margin: 0 auto;
}
.mainheader nav ul li{
float:left;
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
.f{
border-left-style: inset;
background-color: transparent;
}



/* .div1{
height:50px;
width:100%;
background-color: green;

}*/

</style>



<body>
<form action="bus.jsp">
<header class="mainheader">
<nav>
 <ul class="nav nav-pills">
    <li><a href="index1.jsp"><img alt="" src='image/home.jpg' height='45px' width='80px'></a></li>
     <li> <a href="route.jsp"><img alt="" src='image/book.jpg' height='45px' width='80px'> </li>
       <li><a href="admin.html"><img alt="" src='image/admin.jpg' height='45px' width='80px'></a></li>
       <li><a href="fetch.html"><img alt="" src='image/search.jpg' height='45px' width='50px'></a></li>
        <li><a href="Login.html"><img alt="" src='image/logout.jpg' height='45px' width='80px'></a></li>
         <li><a href="more.jsp"><img alt="" src='image/about.jpg' height='45px' width='80px'></a></li> 
 </ul>
 </nav>
 </header>
 


<center>
  <fieldset class="f">
        <legend class="l">   ONLINE BUS BOOKING</legend>
            <table class="table" height="20%" width="70%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="5"><b class="b1"></b></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>AC/NON-AC:</td>
                         <td>
                         <select name="type">
                        <option value="AC">AC</option>
                          <option value="NON-AC">NON-AC</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>DEPART DATE:</td>
                        <td><input type="date" name="depart" value="" placeholder="leaving date"/></td>
                    </tr>
                    <tr>
                   <!--  <td>SELECT YOUR TIMES
                         FROM:
                    </td>
                    <td>
                     <select name="time">
                     <option value="12:30">12:30</option>
                      <option value="12:30">12:45</option>
                       <option value="12:30">12:50</option>
                     </select>
                      </td> -->
                      
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                      <td><button type="submit" ><img src="image/Next-icon.png" width="100px" height="45px"></button></td>
                        <td><button type="reset" ><img src="image/reset.jpg" width="100px" height="45px"></button></td>
                    </tr>
                    <tr>
                 
                    
                    </tr>
                </tbody>
            </table>
            </fieldset>
            </center>
             
            
            
            
</form>
<!-- <img src="image/bus2.jpg" width="100%" height="100%"> -->
<div class="div1">

</div>

</body>
</html>
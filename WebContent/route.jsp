<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>online bus booking</title>

<style type="text/css">
body{
 background-image: url("image/.jpg");


}
.mainheader nav{
background-color:;
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
/* .div1{

background-color:;

} */
.f{
width:60%;
height:30%;
background-image: url("image/image.jpg");

}
.img{
float:right;
}


</style>
<script type="text/javascript">

function ok()
{
  
blur();
	
	
	}

</script>

<body onload="ok()">
<form action="route1.jsp">
<header class="mainheader">
<nav>
 <ul class="nav nav-pills">
    <li><a href="index1.jsp"><img alt="" src='image/home.jpg' height='45px' width='50px'></a></li>
     <li><a href="home.jsp"><img alt="" src='image/book.jpg' height='45px' width='80px'></a></li>
      <li><a href="admin.html"><img alt="" src='image/admin.jpg' height='45px' width='80px'></a></li>
       <li><a href="fetch.html"><img alt="" src='image/search.jpg' height='45px' width='50px'></a></li>
        <li><a href="Login.html"><img alt="" src='image/logout.jpg' height='45px' width='80px'></a></li>
         <li><a href="more.jsp"><img alt="" src='image/about.jpg' height='45px' width='80px'></a></li>
 </ul>
 </nav>
 </header>

<!-- <img src="image/images5.jpg" height="300" width="300"> -->

<center>
  <fieldset class="f">
  <img src="image/images6.jpg" height="200" width="200">
   <img class="img" src="image/images3.jpg" height="200" width="200">
  
        <legend class="l"><font color="brown">  <b> ONLINE BUS BOOKING</b></font></legend>
            <table class="table" height="20%" width="70%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="5"><b class="b1"></b></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>FROM:</td>
                         <td>
                      <!--  <input list="route1"/>
                       <datalist id="route1">   -->
                       <select name="route1"> 
                        <option  value="nayagarh"> NAYAGARH</option>
                          <option value="khurda"> KHURDA</option>
                           <option value="bhubaneswar"> BHUBANESWAR</option>
                            <option value="cuttack"> CUTTACK</option>
                             <option value="rourkela"> ROURKELA</option>
                             </select>
                            <!--  </datalist> -->
                             <!--  <option value="333">333</option>
                               <option value="306">306</option> -->
                       
                        </td>
                    </tr>
                    <tr>
                        <td>TO:</td>
                        <td>
                         <!-- <input list="routes">
                         <datalist id="routes"> -->
                          <select name="routes">  
                     <option value="birmitrapur">BIRMITRAPUR</option>
                      <option value="khurda">KHURDA</option>
                       <option value="bhubaneswar">BHUBANESWAR</option>
                        <option value="cuttack">CUTTACK</option>
                         <option value="rourkela">ROURKELA</option>
                         </select>
                              
                     
                      <!--  </datalist> -->
                     
                  
                        </td>
                    </tr>
                  <!--   <tr>
                   <td>
                    </td>
                    <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr> -->
                    <tr>
                      <td><button type="submit" > <font color="green"><b>SEARCH</b></font>  <!-- <img src="image/Next-icon.png" width="100px" height="45px"> --></button></td>
                        <td><button type="reset" ><font color="brown"><b>RESET </b></font><!-- <img src="image/reset.jpg" width="100px" height="45px"> --></button></td>
                    </tr>
                    <tr>
                 
                    
                    </tr>
                </tbody>
            </table>
            </fieldset>
            </center>
<!-- <div class="div1">             
      <div class="div2"> -->
     <!--  <img src="image/images5.jpg" height="250" width="950"> -->
      
    <!--   </div>
      
            
</div> -->
</form>
</body>
</head>
</html>
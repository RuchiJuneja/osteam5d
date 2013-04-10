<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Number Authentication</title>

<meta name="keywords" content="Basic look and feel" />

<meta name="description" content="this is the base template html and css" />

<link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body>

<div id="header_wrapper">

<div id="header">

<div id="site_title_section">

<div id="site_title">
	          PURE-PARE
            </div>
      
<div id="salogon">
	            The ultimate resource </div>
            
<div class="cleaner">&nbsp;</div>
        
</div>
            
    
</div> <!-- end of header -->
</div>
<!-- end of header wrapper -->


<div id="banner_wrapper">
    
<div id="banner">
    
        
<div id="banner_header_01">Welcome to PURE-PARE</div>
        
<div id="banner_header_02">Published Research Paper Repository</div>
        
<div id="banner_text">
            
<p>PURE-PARE is an online mode for reading the published research papers online and pay as per your need based on different plans. We accept bitcoins as the mode of payment.</p>
            
<div class="rc_btn_01"><a href="<s:url value="/aboutUs.jsp" />">Continue reading...</a></div>
        
</div>
    
</div>	
<!-- end of banner -->

</div> 
<!-- end of banner wrapper -->


<div id="menu_wrapper">    
    
<div id="menu">
        
<ul>
            
<li><a href="<s:url value="/Home.jsp"/>"><span></span>Home</a></li>

<li><a href="<s:url value="/Register.jsp"/>"><span></span>Register</a></li>

<li><a href="<s:url value="#" />"><span></span>Papers</a></li>
            
<li><a href="#" class="current"><span></span>Plans</a></li>
            
<li><a href="<s:url value="#" />"><span></span>Contact us</a></li>
                 

        
</ul>    	
    
</div> 
<!-- end of menu -->
</div> 
<!-- end of menu wrapper -->


<div id="content_wrapper">

<div id="content">

    
<div id="content_left">
        
<div class="content_left_section">
            
<div class="content_header_01">Latest news</div>
            
<fieldset style="border-style:hidden;">

<marquee  behavior="scroll" direction="up" scrollamount="2">
<p class="news_heading">New Happy Hours Plan</p>
<p class="news">Enjoy reading the papers by paying almost half the price during happy hours. Exclusive offers at non-beatable prices</p>
<br />
<br />
<p class="news_heading">No credit/debit card required</p>
<p class="news">Pay via the safest mode of payment using Bitcoins. High security transactions with minimal processing or transaction fee</p>
<br />
<br />
<p class="news_heading">Bitcoin security</p>
<p class="news">Encrypted key transaction using PGP public-private key pair. An encrypted key will be send to your email id. Decode it and pay on that address</p>
<br />
<br />
<p class="news_heading">Unlimited reading options</p>
<p class="news">Read as many research papers as you want. Unlimited access to all the papers till you are logged in</p>
<br />
<br />
<p class="news_heading">Read more, pay less</p>
<p class="news">Choose your plan according to your need. The more time you spend here, the lesser you would have to pay. Check out the latest plans and exclusive offers</p>
<br />
<br />
</marquee>  

</fieldset>            
            
<div class="margin_bottom_20"></div>
            
        
<div class="cleaner"></div>
        
        
</div>   
<!-- end of news section -->
        
        
<div class="margin_bottom_20 border_bottom"></div>
        
<div class="margin_bottom_20"></div>
        
        
<div class="content_left_section">
            
<div class="content_header_01">Newsletter</div>
            
<p style="font-size:12px;">Please enter your email address to subscribe our newsletter</p>
            
          
<s:form action="email.action" method="post">
                
<s:textfield name="emailAddress" id="search_field" 
      size="20" />
<tr>

<td></td>
<td>
<div><s:submit name = "subscribeButton" value="Subscribe" 
          align="center" theme="simple" id="mysubmit" /></div>
          
</td>
<td></td>
</tr>
</s:form>
         <s:if test="hasActionErrors()">
   <div class="errors">
      <s:actionerror/>
   </div>
</s:if>     
<div class="cleaner">
</div>
        
</div>
        
        
<div class="margin_bottom_20 border_bottom">
</div>
        
<div class="margin_bottom_20">
</div>
        
        
<!-- <div class="content_left_section">
            
<a href="http://validator.w3.org/check?uri=referer">
<img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
            
<a href="http://jigsaw.w3.org/css-validator/check/referer">
<img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
        
</div>
  -->    
        
<div class="cleaner_h30">&nbsp;</div>
    
</div> 
<!-- end of content left -->

    
<div id="content_right">
    
        
<div class="content_right_280_section margin_right_60">
            


</div>
    
        

            
 <div class="content_header_01">Authentication</div>
            
<p style="font-size:12px;">A dynamically generated encrypted number has been sent to your email id. Decrypt the code with your private key and enter the original number here ( 2 digits in each block)</p>           
            
           
            
            
     <div id="num_authentication_section" class="text_font">
            <br /><br />
<s:form action="num_auth.action" method="post">
<table>
<tr><td><s:textfield name="num1" id="myinput1" 
      size="2"  theme="simple"/></td>
<td>-</td>
<td><s:textfield name="num2" id="myinput1" 
      size="2"  theme="simple"/></td>
<td>-</td>
<td><s:textfield name="num3" id="myinput1" 
      size="2"  theme="simple"/></td>
<td>-</td>
<td><s:textfield name="num4" id="myinput1" 
      size="2"  theme="simple"/></td>
</tr>
</table>
<table>
<tr>
<td>&nbsp;</td><td></td></tr>
<tr>
<td>&nbsp;</td><td></td></tr>
<tr>

<tr>

<td></td>
<td>
<div><s:submit name = "submitButton" value="Submit" 
          align="center" theme="simple" id="mysubmit" /></div>
</td>
<td></td>
</tr></table>
</s:form>
<s:if test="hasActionErrors()">
   <div class="errors">
      <s:actionerror/>
   </div>
</s:if>        
</div>
            
            
            
       

<div class="cleaner">
</div>
    
            
    
            
<div class="cleaner">
</div>       
        
</div>    
    
        
<div class="margin_bottom_40 border_bottom"></div>
        
<div class="margin_bottom_40"></div>
    
        
<div class="content_right_section">
            
<div class="content_header_02">Plans</div>
            
            
<div class="content_right_w620_wrapper">
                
<div class="content_right_w620_inner">

                    
<div class="box_w170 margin_right_25">
<br />                        
<div class="image_wrapper"><a href="#"><img src="images/images.001.jpg" alt="image 2" /></a></div>
<p>Regular Hours</p>
                        
                    
</div>
        
                    
<div class="box_w170 margin_right_25">
      <br />                  
<div class="image_wrapper">
<a href="#"><img src="images/bitcoin1.jpg" alt="image 3" /></a></div>
<p>Peak Hours</p>                                            
</div>
    
                    
<div class="box_w170">
            <br />            
<div class="image_wrapper">
<a href="#"><img src="images/images.1.jpg" alt="image 4" /></a></div>
<p>Happy Hours</p>                        
</div>
    
                    
<div class="margin_bottom_10"></div>
    
                    
<div></div>
    
                    
<div class="cleaner"></div>
                
</div>
            
</div>
    
    
            
<div class="cleaner">&nbsp;</div>
        
</div>                    
        
<div class="cleaner_h20">&nbsp;</div>
    
</div> 
<!-- end of content right -->


<div class="cleaner">&nbsp;</div>


</div> 
<!-- end of content -->

</div> 
<!-- end of content wrapper -->


<div id="footer_wrapper">        
    
<div id="footer">
         
</div>
<!-- end of footer -->

</div>
<!-- end of footer wrapper -->

</body>

</html>


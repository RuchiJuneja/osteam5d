<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>CNB</title>

<meta name="keywords" content="Basic look and feel" />

<meta name="description"
	content="this is the base template html and css" />

<link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body>

	<div id="header_wrapper">

		<div id="header">

			<div id="site_title_section">

				<div id="site_title">PURE-PARE</div>

				<div id="salogon">The ultimate resource</div>

				<div class="cleaner">&nbsp;</div>

			</div>



		</div>
		<!-- end of header -->
	</div>
	<!-- end of header wrapper -->


	<div id="banner_wrapper">

		<div id="banner">


			<div id="banner_header_01">Welcome to PURE-PARE</div>

			<div id="banner_header_02">Published Research Paper Repository</div>

			<div id="banner_text">

				<p>PURE-PARE is an online mode for reading the published
					research papers online and pay as per your need based on different
					plans. We accept bitcoins as the mode of payment.</p>

				<div class="rc_btn_01">
					<a href="<s:url value="/aboutUs.jsp" />">Continue reading...</a>
				</div>

			</div>

		</div>
		<!-- end of banner -->

	</div>
	<!-- end of banner wrapper -->


	<div id="menu_wrapper">

		<div id="menu">

			<ul>

				<li><a href="<s:url value="/Home.jsp" />"><span></span>Home</a></li>

				<li><a href="<s:url value="/Register.jsp" />"><span></span>Register</a></li>

				<li><a href="<s:url value="#"/>"><span></span>Papers</a></li>

				<li><a href="<s:url value="#" />"><span></span>Plans</a></li>

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

					<fieldset style="border-style: hidden;">

						<marquee behavior="scroll" direction="up" scrollamount="2">
						<p class="news_heading">New Happy Hours Plan</p>
						<p class="news">Enjoy reading the papers by paying almost half
							the price during happy hours. Exclusive offers at non-beatable
							prices</p>
						<br />
						<br />
						<p class="news_heading">No credit/debit card required</p>
						<p class="news">Pay via the safest mode of payment using
							Bitcoins. High security transactions with minimal processing or
							transaction fee</p>
						<br />
						<br />
						<p class="news_heading">Bitcoin security</p>
						<p class="news">Encrypted key transaction using PGP
							public-private key pair. An encrypted key will be send to your
							email id. Decode it and pay on that address</p>
						<br />
						<br />
						<p class="news_heading">Unlimited reading options</p>
						<p class="news">Read as many research papers as you want.
							Unlimited access to all the papers till you are logged in</p>
						<br />
						<br />
						<p class="news_heading">Read more, pay less</p>
						<p class="news">Choose your plan according to your need. The
							more time you spend here, the lesser you would have to pay. Check
							out the latest plans and exclusive offers</p>
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

					<p style="font-size: 12px;">Please enter your email address to
						subscribe our newsletter</p>


					<s:form action="email.action" method="post">

						<s:textfield name="emailAddress" id="search_field" size="20" />
						<tr>

							<td></td>
							<td>
								<div>
									<s:submit name="subscribeButton" value="Subscribe"
										align="center" theme="simple" id="mysubmit" />
								</div>

							</td>
							<td></td>
						</tr>
					</s:form>
					<s:if test="hasActionErrors()">
						<div class="errors">
							<s:actionerror />
						</div>
					</s:if>
					<div class="cleaner"></div>

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




					<p></p>

				</div>
				<div style="font-size: 20px; color: #4895c8;">
					<s:url action="getpdf.action" var="Link">
						<s:param name="id">pdf/cnb/ieee1.pdf</s:param>
					</s:url>
					<a href="<s:property value="#Link"/>"><span></span>IEEE
						Recommended Practice- General Principles for Temperature Limits in
						the Rating of Electrical Equipment and for the Evaluation of
						Electrical Insulation </a>
				</div>

				<br />
				<div style="font-size: 16px; color: #4895c8;">Abstract</div>
				<p class="news">This recommended practice is intended to serve
					in the preparation of standards that areprincipally concerned with
					the thermal endurance of EIM and simple combinations of
					suchmaterials, with the establishment of limiting temperatures of
					EIS, and with the provision of generalprinciples for thermal
					classification of EIS.</p>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Publication</div>
				<p class="news">IEEE</p>

				<br></br>
				<div style="font-size: 20px; color: #4895c8;">
					<s:url action="getpdf.action" var="Link">
						<s:param name="id">pdf/cnb/ieee2.pdf</s:param>
					</s:url>
					<a href="<s:property value="#Link"/>"><span></span> IEEE
						Standard for Shunt Power Capacitors</a>
				</div>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Abstract</div>
				<p class="news">Power capacitors rated 216 V or higher, 2.5 kvar
					or more, and designed for shunt connection to alternating-current
					transmission and distribution systems operating at a nominal
					frequency of 50 Hz or 60 Hz, are considered.</p>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Publication</div>
				<p class="news">IEEE</p>

				<br></br>

				<div style="font-size: 20px; color: #4895c8;">
					<s:url action="getpdf.action" var="Link">
						<s:param name="id">pdf/cnb/iet.pdf</s:param>
					</s:url>
					<a href="<s:property value="#Link"/>"><span></span>History and
						Evolution of the Journal Radio Science and its Predecessors</a>
				</div>

				<br />
				<div style="font-size: 16px; color: #4895c8;">Abstract</div>
				<p class="news">The international journal Radio Science is
					published in the USA by the American Geophysical Union (AGU) and
					co-sponsored by the International Union of Radio Science (URSI).
					Radio Science welcomes original scientific/engineering
					contributions on all aspects of electromagnetic phenomena related
					to physical problems, including the propagation through and
					interaction of EM waves with geophysical media, biological media,
					plasmas and man-made structures. Telecommunications, radio
					metrology, remote sensing of the Earth and ionosphere and radio
					astronomy are also included</p>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Publication</div>
				<p class="news">IET</p>

				<br></br>

				<div style="font-size: 20px; color: #4895c8;">
					<s:url action="getpdf.action" var="Link">
						<s:param name="id">pdf/cnb/vde.pdf</s:param>
					</s:url>
					<a href="<s:property value="#Link"/>"><span></span> Speaker
						Tracking for Teleconferencing via Binaural Headset Microphone</a>
				</div>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Abstract</div>
				<p class="news">Speaker tracking for teleconferencing via
					user-worn binaural headset microphones in combination with a
					reference microphone array is proposed. The tracking is implemented
					with particle filtering based on maximum likelihood estimation of
					time-difference of arrival (TDOA) estimates. An importance function
					for prior weighting of the particles of silent conferees (i.e.,
					??listeners??) is proposed. Experimental results from tracking
					three conferees in a meeting scenario are presented. The use of
					user-worn microphones in addition to a reference microphone array
					is shown to improve speaker distance estimation and overall
					tracking performance substantially. The importance function
					improved the tracking RMSE by 58% on average. The position tracking
					RMSE of the proposed method is about 0.11 m. Index Terms?? Speaker
					tracking, acoustic source tracking, teleconferencing, binaural
					headset microphones</p>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Publication</div>
				<p class="news">VDE Conference Publications</p>

				<br></br>

				<div class="rc_btn_02">
					<p></p>
				</div>


				<div class="cleaner"></div>

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

		<div id="footer"></div>
		<!-- end of footer -->

	</div>
	<!-- end of footer wrapper -->

</body>

</html>


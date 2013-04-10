<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Geoscience</title>

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
						<s:param name="id">pdf/geoscience/ieee1.pdf</s:param>
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
						<s:param name="id">pdf/geoscience/ieee2.pdf</s:param>
					</s:url>
					<a href="<s:property value="#Link"/>"><span></span> IEEE
						Standard : Criteria for Protection Systems for Nuclear Power
						Generating Systems</a>
				</div>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Abstract</div>
				<p class="news">Withdrawn Standard June 1984. These criteria
					established minimum requirements for the safety-related functional
					performance and reliability of protection systems for stationary
					land-based nuclear reactors producing steam for electric power
					generation. Fulfillment of these requirements does not necessarily
					fully establish the adequacy of protective system functional
					performance and reliability. On the other hand, omission of any of
					these requirements will, in most instances, be an indication of
					system inadequacy. For purposes of these criteria, the nuclear
					power generating station protection system encompasses all electric
					and mechanical devices and circuitry (from sensors to actuation
					device input terminals) involved in generating those signals
					associated with the protective function. These signals include
					those that actuate reactor trip and that, in the event of a serious
					reactor accident, actuate engineered safeguards such as containment
					isolation, core spray, safety injection, pressure reduction, and
					air cleaning.</p>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Publication</div>
				<p class="news">IEEE</p>

				<br></br>

				<div style="font-size: 20px; color: #4895c8;">
					<s:url action="getpdf.action" var="Link">
						<s:param name="id">pdf/geoscience/iet.pdf</s:param>
					</s:url>
					<a href="<s:property value="#Link"/>"><span></span>Morse:
						Mesoscale Ocean Radar Signature Experiments</a>
				</div>

				<br />
				<div style="font-size: 16px; color: #4895c8;">Abstract</div>
				<p class="news">Describes work performed within the MORSE
					project as part of the EC MAST-III programme. Oceanic internal wave
					mechanisms and effects are being studied by the Institut fur
					Meereskunde and will be the basis for analysis of SAR images at
					ENSTB. The understanding of radar signatures requires the
					development by UCL of a laboratory W-band SAR using the FMCW
					technique. Oxford Computer Services Ltd. will develop three
					software packages involving ocean parameter extraction, ocean
					surface modelling and the radar signature “inversion” problem.
					These packages are aimed at providing tools for those in the marine
					education, coastal engineering, marine technical services and
					oceanographic sciences. The ultra high resolution radar is to be
					used in a set of experiments in LEGI, in Grenoble, France, first in
					a flume, and then in a wave tank in which scaled versions of
					particular internal wave phenomena can be set-up under laboratory
					conditions. This paper focusses on the development of this radar</p>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Publication</div>
				<p class="news">IET</p>

				<br></br>

				<div style="font-size: 20px; color: #4895c8;">
					<s:url action="getpdf.action" var="Link">
						<s:param name="id">pdf/geoscience/vde.pdf</s:param>
					</s:url>
					<a href="<s:property value="#Link"/>"><span></span>Some Aspects
						of Modelling Wind Turbines and Aggregated Wind Turbines</a>
				</div>
				<br />
				<div style="font-size: 16px; color: #4895c8;">Abstract</div>
				<p class="news">In this paper we consider some fundamental
					aspects of wind park modelling. At first, main modelling steps with
					respect to nonlinear electromechanical models of wind turbines are
					presented where some recent mathematical results will be included.
					Based on this conceptual considerations about complex wind turbine
					modelling, the problem of modelling aggregated wind turbines (wind
					parks) using order reduction methods will be addressed.</p>
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


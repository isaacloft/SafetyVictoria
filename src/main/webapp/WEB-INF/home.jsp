<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="Safety Victoria" /> 
<meta name="keywords" content="Safety, Victoria, Crime, Crash, Offence, accident, ambulance, police">
<meta name="author" content="Bryan, Xianghui Hong">
<title>Safety Victoria</title>

<!-- <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 -->
<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>
<link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.5/leaflet.css" />
<script src="http://cdn.leafletjs.com/leaflet-0.7.5/leaflet.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/chroma-js/0.5.9/chroma.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
   
<!-- Bootstrap Core CSS -->
<link href="<c:url value="/resources/css/bootstrap/bootstrap.min.css" />" rel="stylesheet" type="text/css">

<!-- Retina.js - Load first for faster HQ mobile images. -->
<script src="<c:url value="/resources/js/retina.min.js" />"></script>

<!-- Font Awesome -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<!-- Default Fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,600,500,700,800,900' rel='stylesheet' type='text/css'>

<!-- Modern Style Fonts (Include these is you are using body.modern!) -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Cardo:400,400italic,700' rel='stylesheet' type='text/css'>

<!-- Vintage Style Fonts (Include these if you are using body.vintage!) -->
<link href='http://fonts.googleapis.com/css?family=Sanchez:400italic,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Cardo:400,400italic,700' rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="<c:url value="/resources/css/plugins/owl-carousel/owl.carousel.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/plugins/owl-carousel/owl.theme.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/plugins/owl-carousel/owl.transitions.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/plugins/magnific-popup.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/plugins/jquery.fs.wallpaper.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/plugins/animate.css" />" rel="stylesheet" type="text/css">

<link id="changeable-colors" rel="stylesheet" href="<c:url value="/resources/css/template.css" />">
<link href="<c:url value="/resources/css/style-switcher.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<script src="//cdnjs.cloudflare.com/ajax/libs/chroma-js/0.5.9/chroma.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>

<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>

<script src="http://maps.google.com/maps/api/js?v=3.2&sensor=false"></script>
<!-- <script src="http://matchingnotes.com/javascripts/leaflet-google.js"></script> -->
<script type="text/javascript" src="<c:url value="/resources/js/Google.js" />"></script>
</head>
<body id="page-top">

	<nav class="navbar navbar-inverse navbar-fixed-top navbar-expanded">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <img src="<c:url value="/resources/img/creative/logo.png" />" class="img-responsive" alt="">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<li class="hidden">
                        <a class="page-scroll" href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                    	<a class="page-scroll" href="#latestLgaRanking">2015 Safety Ranking</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#visualization">2015 Safety Analysis</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#yearlyCompare">Yearly Compare</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#faqs">FAQs</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<header style="background-image: url('<c:url value="/resources/img/creative/bg-header.jpg" />');">
        <div class="intro-content">
            <img src="<c:url value="/resources/img/creative/profile.png" />" class="img-responsive img-centered" alt="">
            <div class="brand-name">Safety Victoria</div>
            <hr class="colored">
            <div class="brand-name-subtext">Want to tell how safe your neighbourhood is?</div>
        </div>
        <div class="scroll-down">
            <a class="btn page-scroll" href="#about"><i class="fa fa-angle-down"></i></a>
        </div>
    </header>

	<section id="about" class="services bg-gray" style="padding-bottom: 300px;">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-12 wow fadeIn">
                    <h2>Select to start</h2>
                    <hr class="colored">
                    <p>Here is an overview of our project.</p>
                </div>
            </div>
            <div class="row content-row">
                <div class="col-md-4 wow fadeIn" data-wow-delay=".2s">
                    <div class="media">
                        <div class="pull-left">
                            <a class="page-scroll" href="#visualization"><i class="fa fa-clipboard"></i></a>
                        </div>
                        <div class="media-body">
                        	<h3 class="media-heading"><a class="page-scroll" href="#latestLgaRanking">2015 Safety Ranking</a></h3>
                            <ul>
                                <li>2015 Safety Ranking</li>
                                <li>Total Safety Score</li>
                                <li>6 Safety Factors Score</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 wow fadeIn" data-wow-delay=".4s">
                    <div class="media">
                        <div class="pull-left">
                            <a class="page-scroll" href="#latestLgaRanking"><i class="fa fa-pencil"></i></a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading"><a class="page-scroll" href="#visualization">2015 Safety Analysis</a></h3>
                            <ul>
                                <li>Safety Score</li>
                                <li>Actual Data</li>
                                <li>Relative Data</li>
                                <li>Area comparison</li>
                                <li>Analytical Drill Down</li>
                                <li>2011-2015 Area Trend</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 wow fadeIn" data-wow-delay=".6s">
                    <div class="media">
                        <div class="pull-left">
                           <a class="page-scroll" href="#yearlyCompare"><i class="fa fa-rocket"></i></a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading"><a class="page-scroll" href="#yearlyCompare">Safety Yearly Comparison</a></h3>
                            <ul>
                                <li>Colored map</li>
                                <li>Yearly comparison</li>
                                <li>Analytical Drill Down</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<section id="latestLgaRanking" style="padding-top:20px;" >
        <div class="container text-center wow fadeIn">
            <h2>2015 Safety Ranking</h2>
            <hr class="colored">
            <p>
            	Area is Safer with Higher Score, 2015 Security ranking score calculated from 6 factors <br>
            	(Offence, accident, ambulance response time, police station number, hospital number, fire brigade number). 
            	
            </p>
            <div>
			<div id="latest-ranking-map-container">
				<div id="latestRanking" style="height:450px;width:100%;"></div>
			</div>
			<div class="row" style="margin-right: 0px;margin-left: 0px;">
				<div class="col-xs-12">
					<div style='color:#e69500;position: absolute;z-index: 1002;padding-left: 87%;margin-top: -100px;right: 5%;'>
	                	<a href='javascript:void(0)' data-placement='left' data-toggle='tooltip' class='orange-tooltip'
	                		title='This section is the overall safety ranking for whole VIC in 2015; 
	                		in the histogram bar chart, left is safer with higher score, right is less safer with lower score;
	                		select bar to show area on map or select area on map to show in bar chart and show details in legend' >
	                		<i class='fa fa-question-circle'></i>
	                	</a>
	            	</div>
					<div id="latest-ranking-histogram" class="col-xs-12 latest-ranking-histogram"></div>
				</div>
			</div>
			</div>
        </div>
    </section>

    <section id="visualization" class="bg-gray" style="padding-top: 8px;">
        <div id="visualizationDiv" class="container-fluid">
            <div class="row" style="margin-top: 25px;">
            	<div class="col-xs-12 col-md-7" style="margin-top:5px;">
	                <div class="section-border2 wow fadeIn" data-wow-delay=".2s" style="min-height:640px;">
	                	<div class="row" style="margin-right: 0px;margin-left: 0px;">
	                		<div class="col-xs-12 col-md-12" style="padding-right: 0px; padding-left: 0px;">
		                		<div id="map1" class="map" style="width: auto;height: 390px;"></div>
		                		<div id="level1Dropdown" class="dropdown" style="z-index: 999;position: absolute;top: 0px;margin-left: 2%;">
								  <button style="border-color: #337ab7;margin-top: 13px;border-radius: 4px;padding: 6px 12px;text-transform: none;font-weight: 400;" 
								  class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    <span id="level1SelectedItem" title="level1All">Select a category</span>
								    <span class="caret"></span>
								  </button>
								  <ul class="dropdown-menu dropdown-menu1" aria-labelledby="dropdownMenu1">
								    <li><a name="level1All">All Category</a></li>
								    <li><a name="level1Crime">Offence</a></li>
								    <li><a name="level1Accident">Accident</a></li>
								  </ul>
								</div>
		                		<div id="lga-map-tooltip" class="lga-map-tooltip" style="margin-top: -390px;z-index: 1000;"></div>
		                		<div class="legend-tips" style="display: block;" id="map1-legend-tips">
		                				Tips: <br>"1st area" button selected now by default
		                				<br>1. Click map to select 1st area
		                				<br>2. Click "2nd area" button to switch&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-right"></i>
		                				<i id="legend-tips-close" class="fa fa-times" style="position: relative;left: 15px;top: -59px;"></i>
		             			</div>
		                		<div class="first-lga-tip lga-select-tips" style="display: block;">
									<button type="button" class="btn btn-primary">1st area</button>
								</div>
								
								<!-- <div id="saveAsPng" style="display: block;">
									<button type="button" class="btn btn-primary">save png</button>
								</div> -->
								
		                		<div class="second-lga-tip lga-select-tips" style="display: block;">
		                			<button type="button" class="btn btn-success">2nd area</button>
		               			</div>
	               			</div>
	                	</div>
	                	<div class="row" style="margin-right: 0px;margin-left: 0px;" id="compare-table-div">
	                		<div class="col-xs-12 col-md-12" style="padding-right: 0px; padding-left: 0px;">
	                			<table id="compare-table" data-select-item-name="radioName1" data-cache="false"></table>
	                		</div>
	                	</div>
	                </div>
                </div>
                <div class="col-xs-12 col-md-5" style="margin-top:5px;">
	                <div class="section-border2 wow fadeIn" id="spiderDiv" data-wow-delay=".4s" style="min-height:707px;">
	                	<div style='color:#e69500;position: absolute;z-index: 1000;padding-left: 88%;top: 10%;'>
		                	<a id="spiderTooltipTitle" href='javascript:void(0)' data-placement='left' data-toggle='tooltip' class='orange-tooltip'
		                		title='The spider chart shows the security ranking score for 6 factors, safer with higher score; check FAQs to know how the score is been calculated' >
		                		<i class='fa fa-question-circle'></i>
		                	</a>
	                	</div>
						<div id="spiderChart" ></div>
						<div id="explainText"  style="position: absolute;margin-top: -40px;">
							<ul id="explainTextUl" style="list-style-type:circle">
							  <li>Area is <strong>Safer</strong> with <strong>Higher Score</strong>, Ranking Score for <strong>6</strong> factors</li>
							</ul>
						</div>
	                </div>
                </div>
            </div>
        </div>
        
		  <!-- Modal -->
		  <div class="modal fade" id="trendModal" role="dialog">
		    <div class="modal-dialog" style="min-width:1000px;">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title" style="font-family: inherit;text-transform: none;font-weight: 700;text-align: center;">2011-2015 Offence + Accident Trend</h4>
		        </div>
		        <div class="modal-body container-fluid">
		        	<div class="row">
        				<div class="col-xs-12">
				          <div id="crimeTrend1" class="col-xs-6 col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
				          <div id="crashTrend1" class="col-xs-6 col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
				          
				          	<div style='color:#e69500;position: absolute;z-index: 1000;padding-left: 98%;top: 3%;'>
			                	<a href='javascript:void(0)' data-placement='left' data-toggle='tooltip' class='orange-tooltip'
			                		title='These four charts show the Offence + Accident trend for year 2011-2015; 
			                		offence/accident security score chart is created by score calculated from offence/accident per 100,000 population, safer with higher score;
			                		offence/accident number chart is created from count data per 100,000 population' >
			                		<i class='fa fa-question-circle'></i>
			                	</a>
	                		</div>
	                		
				        </div>
		          	</div>
		        	<div class="row" style="margin-top: 20px;">
		        		<div class="col-xs-12">
				          <div id="crimeTrend2" class="col-xs-6 col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
				          <div id="crashTrend2" class="col-xs-6 col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
			          	</div>
		          	</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>
    </section>
	
    <section id="yearlyCompare" style="padding-top:20px;">
        <div class="container text-center wow fadeIn">
            <h2>Yearly compare map</h2>
            <hr class="colored">
            <p>
            	Two years compare for offence and/or accident, area is Safer with Higher Score
            </p>
            <div>
            	<div>
					<div id="map-container">
						<div id="beforeMap" style="height:600px;width:100%;"></div>
						<div id="afterMap" style="height:600px;width:100%;"></div>
					</div>
				</div>
				
				<div id="compare-map-tooltip" class="compare-map-tooltip" style="margin-top: -680px;z-index: 1000;">
				</div>
				<div id="compareDropdown" class="dropdown" style="z-index: 999;position:absolute;margin-top: -600px;margin-left: 60px;">
				  <button style="margin-top: 13px;border-radius: 4px;padding: 6px 12px;text-transform: none;font-weight: 400;border-color: #337ab7;" 
				  class="btn btn-default dropdown-toggle" type="button" id="dropdownMenuCompareMap" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <span id="compareDropdownSelectedItem" title="compareAll">Offence+Accident</span>
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu dropdown-menu-compare" aria-labelledby="dropdownMenuCompareMap">
				    <li><a name="compareAll">Offence+Accident</a></li>
				    <li><a name="compareCrime">Offence</a></li>
				    <li><a name="compareAccident">Accident</a></li>
				  </ul> 
				</div> 
			</div>
        </div>
    </section>

    <section id="faqs" class="bg-gray" style="padding-top:20px;">
        <div class="container wow fadeIn">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>FAQs</h2>
                    <hr class="colored">
                    <p>Find the answers for FAQs</p>
                </div>
            </div>
            <div>
				<strong>Q1: What is Safety Victoria?</strong><br>
				Safety Victoria is a web system created to inform users the safety level of Local Government Areas (LGAs) in Victoria.<br>
				<br>            		
				<strong>Q2: Who would use and benefit from Safety Victoria Application?</strong><br>
				If you are a house buyer or renter, you are able to use the system to find out the safety level of your desired home locations. 
				Furthermore, you will be able to make comparisons between your favourite locations as well as in depth analysis of each location's safety index.<br>
				<br> 
				<strong>Q3: Where is the data from?</strong><br>
				We use open data from:<br>
				<ul style="list-style-type:circle">
					  <li>Victorian Government Data Directory: <a href="https://www.data.vic.gov.au" target="_blank">https://www.data.vic.gov.au</a></li>
					  <li>Australian Government: <a href="http://data.gov.au" target="_blank">http://data.gov.au</a></li>
					  <li>Ambulance Victoria: <a href="http://www.ambulance.vic.gov.au" target="_blank">http://www.ambulance.vic.gov.au</a></li>
				</ul>
				<br>
				<strong>Q4: What are the datasets of Safety Victoria Application?</strong><br>
				We have 6 datasets, they are offence data, accident data, ambulance response time data, fire brigade data, police station data and hospital data in Victoria.
				<br>
				<br>
				<strong>Q5: What is the time range of data in Safety Victoria Application?</strong><br>
				<ul style="list-style-type:circle">
					  <li>The time range of Offence data and accident data are five years, from 2011-2015.</li>
					  <li>The time range of ambulance response time, fire brigade, police station and hospital are only one year, which is 2015.</li>
				</ul>
				<br>
				<strong>Q6: What is "2015 Safety Analysis"?</strong><br>
				"2015 Safety Analysis" presents the safety level of two selected LGAs by showing the actual statistic data and relative data. 
				It provides the comparison of safety level between two LGAs from overall perspective, and categories perspective as well. 
				It also provides the 2011-2015 trend line chart for selected LGAs.
				<br>
				<br>
				<strong>Q7: What is "2015 Safety Ranking"?</strong><br>
				"2015 Safety Ranking" presents the ranking of all LGAs in victoria according to overall score. 
				You could view the ranking number of selected LGAs, its overall score and its scores for 6 factors.
				You could view the ranking through the histogram bar chart, and from hover on the LGAs on the map as well.
				<br>
				<br>
				<strong>Q8: What is "Yearly Compare"?</strong><br>
				"Yearly Compare" presents the comparison between two selected years about the safety level of LGAs. 
				You can see the safety difference in these two years by looking at the changes of colour on each LGA.
				It provides switching years from 2011-2015, and drill down catrgory selection as well.
				<br>
				<br>
				<strong>Q9: How does Safety Victoria Application come out the ranking score of each category?</strong><br>
				<ul style="list-style-type:circle">
					  <li>Offence (/Accident safety/ Fire brigade/ Police station/ Hospital) score is calculated based on 
					  Offence (/Accident safety/ Fire brigade/ Police station/ Hospital) rate per 100,000 of population. The ranking score range from 10 to 1. 
					  Score 10 is the best while score 1 is the worest.</li>
					  <li>Ambulance response time ranking score is ranked based on ambulance response time. 
					  The ranking score range from 10 to 1. LGAs with 10 score has the fastest ambulance response time.</li>
				</ul>
				<br>
				<strong>Q10: How does Safety Victoria Application come out the overall index score?</strong><br>
				The overall index is calculated by weighted average of six category ranking scores. 
				The weight comes from the online survey we did, which requires participants ranking the six factors 
				(offence, accident, ambulance response time, fire brigade, police station, and hospital). 
				According to the survey, the weight of each factor is shown as following:
				<div class="row">
					<div class="col-xs-12 col-md-6">
						<img src="<c:url value="/resources/img/suvey-resut.png" />" class="img-responsive" alt="">						
					</div>
					<div class="col-xs-12 col-md-6" style="padding-top: 80px;">
						<table id="score-cal-table" data-select-item-name="score-cal-table" data-cache="false"></table>
					</div>
				</div>
				Therefore, the overall index score of certain LGA is calculated by the formula: <br>
				Overall Score = Offence Score*0.30 + Accident Score*0.17 + Ambulance Score*0.17 + Police Score*0.17 + Hospital Score*0.12 + Fire Brigade Score*0.07
				
			</div>
        </div>
    </section>
    
    <section id="contact" style="padding-top:50px;">
        <div class="container wow fadeIn">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Us</h2>
                    <hr class="colored">
                    <p>We'd love to hear from you! Send us email and we will be connected.</p>
                </div>
            </div>
            <br>
            <br>
            <br>
            <div class="container text-center">
            	<div class="row">
                    <div class="col-md-12 contact-details">
                        <h4><img src="<c:url value="/resources/img/contact/bryan-img.jpg" />" class="image-circle" alt=""></h4>
                        <h4>Xianghui Hong (Bryan)</h4>
                        <p style="font-size: 16px;">
	                        Chief System Architect & Developer<br>
	                        Email:  <a href="mailto:bryan.hong.1988@gmail.com">bryan.hong.1988@gmail.com</a>
                        </p>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <div class="row social">
                    <div class="col-lg-12">
                        <ul class="list-inline">
                            <li><a target="_blank" href="http://au.linkedin.com/in/xianghuihongbryan"><i class="fa fa-linkedin fa-fw fa-4x"></i></a>
                            </li>
                            <li><a target="_blank" href="https://www.facebook.com/hong.xianghui"><i class="fa fa-facebook fa-fw fa-4x"></i></a>
                            </li>
                            <li><a target="_blank" href="https://twitter.com/m232044647"><i class="fa fa-twitter fa-fw fa-4x"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <br>
                <div class="row copyright">
                    <div class="col-lg-12">
                        <p class="small">&copy; 2015 Start Bootstrap by Bryan, &copy;  2015 Bryan All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
  <%-- <h1>All Persons</h1>
  <c:forEach var="p" items="${persons}">
    Id: ${p.id} Name: ${p.name}<br/>
  </c:forEach>
  
  <h1>All LGAs</h1>
  <c:forEach var="l" items="${lgaList}">
    Id: ${l.id} Name: ${l.lga}<br/>
  </c:forEach>
  
  <h1>Add New</h1>
  <form method="post" action="addPerson">
  Name: <input type="text" name="name"/>
  <button>Add</button>
  </form> --%>
<!-- Core Scripts -->
<script src="<c:url value="/resources/js/jquery.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap/bootstrap.min.js" />"></script>
    
<!-- Plugin Scripts -->
<script src="<c:url value="/resources/js/plugins/jquery.easing.min.js" />"></script>
<script src="<c:url value="/resources/js/plugins/classie.js" />"></script>
<script src="<c:url value="/resources/js/plugins/cbpAnimatedHeader.js" />"></script>
<script src="<c:url value="/resources/js/plugins/owl-carousel/owl.carousel.js" />"></script>
<script src="<c:url value="/resources/js/plugins/jquery.magnific-popup/jquery.magnific-popup.min.js" />"></script>
<script src="<c:url value="/resources/js/plugins/jquery.fs.wallpaper.js" />"></script>
<script src="<c:url value="/resources/js/plugins/jquery.mixitup.js" />"></script>
<script src="<c:url value="/resources/js/plugins/wow/wow.min.js" />"></script>
<script src="<c:url value="/resources/js/plugins/jqBootstrapValidation.js" />"></script>
<script src="<c:url value="/resources/js/template.js" />"></script>
<script src="<c:url value="/resources/js/style.switcher.js" />"></script>

<script type="text/javascript" src="<c:url value="/resources/js/jquery-ui-1.10.3.custom.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.ui.touch-punch.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.beforeafter-map-0.11.js" />"></script>

<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/highcharts-more.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<script src="http://code.highcharts.com/modules/broken-axis.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/bootstrap-table.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/bootstrap-table.min.js"></script>

<!-- Latest compiled and minified Locales -->
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/locale/bootstrap-table-zh-CN.min.js"></script>
<%-- <script type="text/javascript" src="<c:url value="/resources/js/histogram.js" />"></script>
 --%>
<script type="text/javascript" src="<c:url value="/resources/js/plugins.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/t4.js" />"></script>
<%-- <script type="text/javascript" src="<c:url value="/resources/js/FileSaver.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/canvas-toBlob.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/html2canvas.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jspdf.min.js" />"></script> --%>
 
<script>
(function ($) {

/* 	$("#saveAsPng").click(function() { 
        html2canvas($("#visualizationDiv"), {
            onrendered: function(canvas) {
				
            	//var canvas = $("#visualization");
             	// draw to canvas...
             	
			    context = canvas.getContext("2d");
			
				var image = new Image;
				image.src = "fallback.png";
				image.onload = function() {
				  context.drawImage(image, 0, 0);
			
				  var a = document.createElement("a");
				  a.download = "fallback.png";
				  a.href = canvas.toDataURL("image/png");
				  a.click();
				}; 
             	
             	canvas.toBlob(function(blob) {
                	saveAs(blob, "pretty image.png");
             	});
             	
                // Convert and download as image 
                //Canvas2Image.saveAsPNG(canvas); 
                // Clean up 
                //document.body.removeChild(canvas);
            }
        });  
        var doc = new jsPDF();
         
		doc.fromHTML($('#visualizationDiv').html(), 15, 15, {
	        'width': 170
	    });
		doc.save('sample-file.pdf');
        
    });  */	
    
    $('[data-toggle="tooltip"]').tooltip(); 
    
    {
		$('#score-cal-table').bootstrapTable({
			columns: [{
		        field: 'factors',
		        title: 'Factors'
		    }, {
		        field: 'percentage',
		        title: 'Percentage'
		    }],
		    data: [{
		    	factors: '<strong>Offence</strong> (Crime Rate)',
		    	percentage: '30%'
		    },{
		    	factors: '<strong>Accident</strong> (Traffic Accident Rate)',
		    	percentage: '17%'
		    },{
		    	factors: '<strong>Ambulance</strong> (Ambulance Response Time)',
		    	percentage: '17%'
		    },{
		    	factors: '<strong>Police</strong> (Number of Police Stations)',
		    	percentage: '17%'
		    },{
		    	factors: '<strong>Hospital</strong> (Number of Hospitals)',
		    	percentage: '12%'
		    },{
		    	factors: '<strong>Fire</strong> (Number of Fire Brigade)',
		    	percentage: '7%'
		    }]
		});		
    }


	$("#legend-tips-close").click(function(){
		legendClose();
	});
	
	function legendClose(){
		$("#map1-legend-tips").html('<a style="color:white" href="javascript:void(0);" id="clickableTip">Tips</a>');
		$("#map1-legend-tips").animate({
            width: '40px',
            top: '353px'
        }, 300);
		
		$("#clickableTip").click(function(){
			legendOpen();
		});
	}
	
	function legendOpen(){
		$("#map1-legend-tips").animate({
            width: '260px',
            top: '302px'
        }, 300, function() {
        	if(selectedLGAButtonIndex == 1){
    			$("#map1-legend-tips").html('Tips: <br>"1st area" button selected now<br>1. Click map to select 1st Area<br>2. Click "2nd area" button to switch&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-right"></i><i id="legend-tips-close" class="fa fa-times" style="position: relative;left: 18px;top: -59px;"></i>');
    		}else{
    			$("#map1-legend-tips").html('Tips: <br>"2nd area" button selected now<br>1. Click map to select 2nd Area<br>2. Click "1st area" button to switch&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-right"></i><i id="legend-tips-close" class="fa fa-times" style="position: relative;left: 22px;top: -59px;"></i>');
    		}
    		
    		$("#legend-tips-close").click(function(){
    			legendClose();
    		});
        });
		
		
	}
	
	$("#level2Dropdown").hide(); 
    	
    // event for dropdown menu select
	$(".dropdown-menu1 li a").click(function(){
			if($("#level2Dropdown").is(":visible")){
				if($("#level2SelectedItem").attr('title') == $(this)[0].name){
					$(this).parent().parent().parent().children().first().children().first().html($(this).text());
			      	$(this).parent().parent().parent().children().first().children().first().attr('title', $(this)[0].name);
					return;
				}
			}else{
				if($("#level1SelectedItem").attr('title') == $(this)[0].name){
					$(this).parent().parent().parent().children().first().children().first().html($(this).text());
			      	$(this).parent().parent().parent().children().first().children().first().attr('title', $(this)[0].name);
					return;
				}
			}
			$(this).parent().parent().parent().children().first().children().first().html($(this).text());
			$(this).parent().parent().parent().children().first().children().first().attr('title', $(this)[0].name);
			
			if($(this)[0].name == 'level1Crime'){
				//$("#level2Dropdown").show(); 
				$("#level2All").trigger("click");
			}else if ($(this)[0].name.indexOf('level2') >= 0){
				//$("#level2Dropdown").show(); 
			}else{
				$("#level2Dropdown").hide(); 
			}
			
			if(($("#compare-table thead tr:nth-child(1) .th-inner:eq(1)").html() == "First LGA" ) 
			  && ($("#compare-table thead tr:nth-child(1) .th-inner:eq(2)").html() == "Second LGA" )){
				changeTableAndSpider($(this)[0].name);
				return;
			}else{
				changeTableAndSpider($(this)[0].name);
				return;
			}
	   });
	
 	// create table by tablehead and tabledata
	function createTable(tableHead, tableData){
		$('#compare-table').bootstrapTable({
	  	        columns: tableHead,
	  	        data: tableData
  	    });
		$("#compare-table thead tr:nth-child(1) .th-inner:eq(1)").css("color",selectedLGAColors[0]);
		$("#compare-table thead tr:nth-child(1) .th-inner:eq(2)").css("color",selectedLGAColors[1]);
	}
    	
 	// change table and spider data by datasource
	function changeTableAndSpider(dataSource){
		var lga1Header = $("#compare-table thead tr:nth-child(1) .th-inner:eq(1)").html();
		var lga2Header = $("#compare-table thead tr:nth-child(1) .th-inner:eq(2)").html();
		$("#compare-table-div").empty();
        $("#compare-table-div").html('<table id="compare-table" data-select-item-name="radioName1" data-cache="false"></table>');
      	//level1All level1Crime level1Accident level2All level2A level2B level2C level2D level2E level2F
        if(dataSource == "level1All"){
        	$("#spiderDiv").css("min-height","707px");
        	$("#spiderTooltipTitle").attr("data-original-title",
        			"The spider chart shows the security ranking score for 6 factors, safer with higher score; check FAQs to know how the score is been calculated");
        	
        	var rowTitleData = ['Population','Offence count','Accident count',
    		                    'Ambulance response time','Fire brigade number',
    		                    'Police station number','Hospital number'];
        	
        	$.getJSON("getLgaTableDataByDrop", { selectedLGA1: lga1Header, selectedLGA2: lga2Header, dataSource: dataSource }, function(results) {
				
	        	var tableHead = [{
		            field: 'rowTitle',
		            title: 'Overall Statistic Data (2015)'
		        }, {
		            field: 'lga1Name',
		            title: lga1Header,
		            formatter: lga1Formatter
		        }, {
		            field: 'lga2Name',
		            title: lga2Header,
		            formatter: lga2Formatter
		        }];
	        	
	        	var lga1TableData = results[0];
	    		var lga2TableData = results[1];
				
	    		var tableData = [];
	    		for(var i=0;i<rowTitleData.length;i++){
	    			tableData.push({
	    				rowTitle: rowTitleData[i],
	    	        	lga1Name: lga1TableData[i],
	    	        	lga2Name: lga2TableData[i]
	    			});
	    		}
	    		
	    		createTable(tableHead, tableData);
	    		
	    		var lga1Pop = lga1TableData[0];
	    		var lga1ActualCrime = lga1TableData[1];
	    		var lga1ActualCrash = lga1TableData[2];
	    		if(lga1Pop != "-"){
	    			results[2][0] = results[2][0]<0?results[2][0].toString():"+"+results[2][0];
	    			var lga1PopAppendHTML = getCellAppendHTMLForOverallTableData(results[2][0], "right", lga1Header, "population");
	    			$("#compare-table tbody tr:nth-child("+(1)+") td:eq("+1+") div").append( lga1PopAppendHTML );
	    		}
	    		if(lga1ActualCrime != "-"){
	    			results[2][1] = results[2][1]<0?results[2][1].toString():"+"+results[2][1];
	    			var lga1CrimeAppendHTML = getCellAppendHTMLForOverallTableData(results[2][1], "right", lga1Header, "offence count");
	    			$("#compare-table tbody tr:nth-child("+(2)+") td:eq("+1+") div").append( lga1CrimeAppendHTML );
	    		}
	    		if(lga1ActualCrash != "-"){
	    			results[2][2] = results[2][2]<0?results[2][2].toString():"+"+results[2][2];
	    			var lga1CrashAppendHTML = getCellAppendHTMLForOverallTableData(results[2][2], "right", lga1Header, "accident count");
	    			$("#compare-table tbody tr:nth-child("+(3)+") td:eq("+1+") div").append( lga1CrashAppendHTML );
	    		}
	    		
	    		var lga2Pop = lga2TableData[0];
	    		var lga2ActualCrime = lga2TableData[1];
	    		var lga2ActualCrash = lga2TableData[2];
	    		if(lga2Pop != "-"){
	    			results[3][0] = results[3][0]<0?results[3][0].toString():"+"+results[3][0];
	    			var lga2PopAppendHTML = getCellAppendHTMLForOverallTableData(results[3][0], "left", lga2Header, "population");
	    			$("#compare-table tbody tr:nth-child("+(1)+") td:eq("+2+") div").append( lga2PopAppendHTML );
	    		}
	    		if(lga2ActualCrime != "-"){
	    			results[3][1] = results[3][1]<0?results[3][1].toString():"+"+results[3][1];
	    			var lga2CrimeAppendHTML = getCellAppendHTMLForOverallTableData(results[3][1], "left", lga2Header, "offence count");
	    			$("#compare-table tbody tr:nth-child("+(2)+") td:eq("+2+") div").append( lga2CrimeAppendHTML );
	    		}
	    		if(lga2ActualCrash != "-"){
	    			results[3][2] = results[3][2]<0?results[3][2].toString():"+"+results[3][2];
	    			var lga2CrashAppendHTML = getCellAppendHTMLForOverallTableData(results[3][2], "left", lga2Header, "accident count");
	    			$("#compare-table tbody tr:nth-child("+(3)+") td:eq("+2+") div").append( lga2CrashAppendHTML );
	    		}
	    		
	    		$('[data-toggle="tooltip"]').tooltip(); 
        	}); 
    		
    		changeSpider(dataSource, rowTitleData, lga1Header, lga2Header);
        	
        }else if(dataSource == "level1Crime"){
        	$("#spiderDiv").css("min-height","668px");
        	$("#spiderTooltipTitle").attr("data-original-title",
        			"The spider chart shows relative data for 6 offence types, calculated by offence count per 100,000 population, and red line is VIC average count");
        	
        	$.getJSON("getLgaTableDataByDrop", { selectedLGA1: lga1Header, selectedLGA2: lga2Header, dataSource: dataSource }, function(results) {
	        	var tableHead = [{
		            field: 'rowTitle',
		            title: 'Offence Statistic Data (2015)'
		        }, {
		        	field: 'lga1Name',
		            title: lga1Header,
		            formatter: lga1Formatter
		        }, {
		            field: 'lga2Name',
		            title: lga2Header,
		            formatter: lga2Formatter
		        }];
	        	
	        	var lga1TableData = results[0];
	    		var lga2TableData = results[1];
	    		
	    		var rowTitleData = ['A Crimes against the person','B Property and deception offences',
	    		                    'C Drug offences','D Public order and security offences',
	    		                    'E Justice procedures offences','F Other offences'];
	    		
	    		var tableData = [];
	    		for(var i=0;i<rowTitleData.length;i++){
	    			tableData.push({
	    				rowTitle: rowTitleData[i],
	    	        	lga1Name: lga1TableData[i],
	    	        	lga2Name: lga2TableData[i]
	    			});
	    		}
	        	createTable(tableHead, tableData);
	        	
	        	
				var lga1TotalNum = eval(lga1TableData.join('+'));
				var lga2TotalNum = eval(lga2TableData.join('+'));

				if(lga1TotalNum == 0 && lga2TotalNum == 0){
					return;
				}
				
				var lga1PercentArr = [];
				for(var i=0;i<lga1TableData.length;i++){
					if(i == lga1TableData.length-1){
						var totalPercent = eval(lga1PercentArr.join('+'));
						lga1PercentArr.push(100 - totalPercent);
					}else{
						lga1PercentArr.push(parseInt(lga1TableData[i] * 100 / lga1TotalNum));
					}
				}
				
				var lga2PercentArr = [];
				for(var i=0;i<lga2TableData.length;i++){
					if(i == lga2TableData.length-1){
						var totalPercent = eval(lga2PercentArr.join('+'));
						lga2PercentArr.push(100 - totalPercent);
					}else{
						lga2PercentArr.push(parseInt(lga2TableData[i] * 100 / lga2TotalNum));
					}
				}
				
				if(lga1TotalNum != 0){
					for(var i=0;i<lga1TableData.length;i++){
						var tooltipTitle = "In 2015, percentage of this offence type for " + lga1Header + " is " + lga1PercentArr[i] + "%";
		    			var cellInnerHTML = numberWithCommas(results[0][i]) + getCellAppendHTML(lga1PercentArr[i], "right", tooltipTitle);
		    			$("#compare-table tbody tr:nth-child("+(i+1)+") td:eq("+1+") div").html(cellInnerHTML);
		    		}
				}
				
				if(lga2TotalNum != 0){
					for(var i=0;i<lga2TableData.length;i++){
						var tooltipTitle = "In 2015, percentage of this offence type for " + lga2Header + " is " + lga2PercentArr[i] + "%";
		    			var cellInnerHTML = numberWithCommas(results[1][i]) + getCellAppendHTML(lga2PercentArr[i], "left", tooltipTitle);
		    			$("#compare-table tbody tr:nth-child("+(i+1)+") td:eq("+2+") div").html(cellInnerHTML);
		    		}
				}
				
				$('[data-toggle="tooltip"]').tooltip();  
        	});
        	
        	var rowTitleData = ['C Drug offences','D Public order and security offences',
    		                    'E Justice procedures offences','F Other offences',
    		                    'A Crimes against the person','B Property and deception offences'];
        	changeSpider(dataSource, rowTitleData, lga1Header, lga2Header);
        	
        }else if(dataSource == "level1Accident"){
        	$("#spiderDiv").css('min-height','785px');
        	$("#spiderTooltipTitle").attr("data-original-title",
        			"The spider chart shows relative data for 9 accident types, calculated by accident count per 100,000 population, and red line is VIC average count");
        	
        	var rowTitleData = ['No collision and no object struck',
        	                    'Vehicle overturned (no collision)','Struck animal',
        	                    'Collision with some other object','Fall from or in moving vehicle',
        	                    'Other accident','Collision with vehicle','Collision with a fixed object',
        	                    'Struck Pedestrian'];
        	$.getJSON("getLgaTableDataByDrop", { selectedLGA1: lga1Header, selectedLGA2: lga2Header, dataSource: dataSource }, function(results) {
	        	var tableHead = [{
		            field: 'rowTitle',
		            title: 'Accident Statistic Data (2015)'
		        }, {
		        	field: 'lga1Name',
		            title: lga1Header,
		            formatter: lga1Formatter
		        }, {
		            field: 'lga2Name',
		            title: lga2Header,
		            formatter: lga2Formatter
		        }];
	        	
	        	var lga1TableData = results[0];
	    		var lga2TableData = results[1];
	    		
	    		var tableData = [];
	    		for(var i=0;i<rowTitleData.length;i++){
	    			tableData.push({
	    				rowTitle: rowTitleData[i],
	    	        	lga1Name: lga1TableData[i],
	    	        	lga2Name: lga2TableData[i]
	    			});
	    		}
	        	createTable(tableHead, tableData);
	        	
	        	var lga1TotalNum = eval(lga1TableData.join('+'));
				var lga2TotalNum = eval(lga2TableData.join('+'));

				if(lga1TotalNum == 0 && lga2TotalNum == 0){
					return;
				}
				
				var lga1PercentArr = [];
				for(var i=0;i<lga1TableData.length;i++){
					if(i == lga1TableData.length-1){
						var totalPercent = eval(lga1PercentArr.join('+'));
						lga1PercentArr.push(100 - totalPercent);
					}else{
						lga1PercentArr.push(parseInt(lga1TableData[i] * 100 / lga1TotalNum));
					}
				}
				
				var lga2PercentArr = [];
				for(var i=0;i<lga2TableData.length;i++){
					if(i == lga2TableData.length-1){
						var totalPercent = eval(lga2PercentArr.join('+'));
						lga2PercentArr.push(100 - totalPercent);
					}else{
						lga2PercentArr.push(parseInt(lga2TableData[i] * 100 / lga2TotalNum));
					}
				}
				
				if(lga1TotalNum != 0){
					for(var i=0;i<lga1TableData.length;i++){
						var tooltipTitle = "In 2015, percentage of this accident type for " + lga1Header + " is " + lga1PercentArr[i] + "%";
		    			var cellInnerHTML = numberWithCommas(results[0][i]) + getCellAppendHTML(lga1PercentArr[i], "right", tooltipTitle);
		    			$("#compare-table tbody tr:nth-child("+(i+1)+") td:eq("+1+") div").html(cellInnerHTML);
		    		}
				}
				
				if(lga2TotalNum != 0){
					for(var i=0;i<lga2TableData.length;i++){
						var tooltipTitle = "In 2015, percentage of this accident type for " + lga2Header + " is " + lga2PercentArr[i] + "%";
		    			var cellInnerHTML = numberWithCommas(results[1][i]) + getCellAppendHTML(lga2PercentArr[i], "left", tooltipTitle);
		    			$("#compare-table tbody tr:nth-child("+(i+1)+") td:eq("+2+") div").html(cellInnerHTML);
		    		}
				}
				
				$('[data-toggle="tooltip"]').tooltip();  
        	});
        	
        	changeSpider(dataSource, rowTitleData, lga1Header, lga2Header);
        }
		
	}
	
 	function calculateTotalScore(lgaData){
 		return Math.round((lgaData[0]*0.3+lgaData[1]*0.17+lgaData[2]*0.17+lgaData[3]*0.07+lgaData[4]*0.17+lgaData[5]*0.12)*100)/100;
 	} 
 	
 	function changeExplainText(dataSource, lga1Header, lga2Header, lga1Data, lga2Data){
 		$("#explainTextUl").empty();
 		if(dataSource == "level1All"){
 			var lga1TotolScore = calculateTotalScore(lga1Data);
 			var lga2TotolScore = calculateTotalScore(lga2Data);
 			$("#explainTextUl").html(
 					'<li>Area is <strong>Safer</strong> with <strong>Higher Score</strong>, Ranking Score for <strong>6</strong> factors</li>'+
 					(("First LGA"==lga1Header)?'':'<li><span style="color:'+selectedLGAColors[0]+'">Overall Security Score is <strong>'+lga1TotolScore+'</strong> for <strong>'+lga1Header+'</strong> in 2015</span></li>')+
 					(("Second LGA"==lga2Header)?'':'<li><span style="color:'+selectedLGAColors[1]+'">Overall Security Score is <strong>'+lga2TotolScore+'</strong> for <strong>'+lga2Header+'</strong> in 2015</span></li>')+
 					(("First LGA"==lga1Header)&&("Second LGA"==lga2Header)?'':'<li><a style="color: black;" id="generateTrendLink" href="javascript:void(0);"><strong style="font-size:22px;color:green">Click <i class="fa fa-hand-o-left"></i></strong> to generate 2011-2015 offence+accident trend</a></li>')
 			);
 			$("#generateTrendLink").click( function() { 
 				generateTrendModal();
			});
 		}else if(dataSource == "level1Crime"){
 			$("#explainTextUl").html(
 					'<li>Area is <strong>Safer</strong> with <strong>Less Offence</strong>, count by per 100,000 population</li>'+
 					'<li><span style="color:'+selectedLGAColors[2]+'">Red: Average offence count for whole Victoria in 2015</span></li>'+
 					(("First LGA"==lga1Header)?'':'<li><span style="color:'+selectedLGAColors[0]+'">Blue: Offence count for <strong>'+lga1Header+'</strong> in 2015</span></li>')+
					(("Second LGA"==lga2Header)?'':'<li><span style="color:'+selectedLGAColors[1]+'">Gray: Offence count for <strong>'+lga2Header+'</strong> in 2015</span></li>')
 			);
 		}else if(dataSource == "level1Accident"){
 			$("#explainTextUl").html(
 					'<li>Area is <strong>Safer</strong> with <strong>Less Accident</strong>, count by per 100,000 population</li>'+
 					'<li><span style="color:'+selectedLGAColors[2]+'">Red: Average accident count for whole Victoria in 2015</span></li>'+
 					(("First LGA"==lga1Header)?'':'<li><span style="color:'+selectedLGAColors[0]+'">Blue: Accident count for <strong>'+lga1Header+'</strong> in 2015</span></li>')+
					(("Second LGA"==lga2Header)?'':'<li><span style="color:'+selectedLGAColors[1]+'">Gray: Accident count for <strong>'+lga2Header+'</strong> in 2015</span></li>')
 			);
 		}
 	}
 	
 	function generateTrendModal(){
 		$('#trendModal').modal('show');
 		var lga1Header = $("#compare-table thead tr:nth-child(1) .th-inner:eq(1)").html();
		var lga2Header = $("#compare-table thead tr:nth-child(1) .th-inner:eq(2)").html();
		
 		$.getJSON("getLgaTrendData", { selectedLGA1: lga1Header, selectedLGA2: lga2Header}, function(results) {
 			var trendIdArr = ["crimeTrend1","crashTrend1","crimeTrend2","crashTrend2"];
 	 		var trendChartTitle = ["Offence security score","Accident security score","Offence number per 100,000 population","Accident number per 100,000 population"];
 	 		var trendChartYText = ["Offence Ranking Score","Accident Ranking Score","Offence Relative Number","Accident Relative Number"];
 	 		//var trendChartToolTips = [" Offence Security Score"," Accident Security Score"," offence/100,000 population"," accident/100,000 population"];
 	 		for(var i =0;i< trendIdArr.length;i++){
 	 			
 	 			var seriesData = [];
 	 			if("First LGA" != lga1Header){
 	 				seriesData.push({
 	 					name: lga1Header,
 	 	 	          	color: selectedLGAColors[0],
 	 	 	            data: results[2*i]
 	 				});
 	 			}
 	 			if("Second LGA" != lga2Header){
 					seriesData.push({
 						name: lga2Header,
 	 	 	          	color: selectedLGAColors[1],
 	 	 	            data: results[2*i+1]
 	 				});
 	 			}
 	 			
 	 			$('#'+trendIdArr[i]+'').highcharts({
 	 				chart:{
 	 					type: 'spline',
 	 					width: 480,
 	 					height: 250
 	 				},
 	 	 	        title: {
 	 	 	            text: trendChartTitle[i],
 	 	 	            x: -20 //center
 	 	 	        },
 	 	 	      	exporting: {
 	                  	enabled: false
 		         	},
 		         	credits: {
 		             	enabled: false
 		         	},
 		         	plotOptions: {
 		         		series: {
 		         			marker: {
 		                        enabled: false
 		                    }
 		         		}
 		         	},
 	 	 	        xAxis: {
 	 	 	            categories: ['2011','2012','2013','2014','2015']
 	 	 	        },
 	 	 	        yAxis: {
 	 	 	            title: {
 	 	 	                text: trendChartYText[i]
 	 	 	            },
 	 	 	            plotLines: [{
 	 	 	                value: 0,
 	 	 	                width: 1,
 	 	 	                color: '#808080'
 	 	 	            }]
 	 	 	        },
 	 	 	        tooltip: {
 	 	 	        	shared: true
 	 	 	        },
 	 	 	        legend: {
 	 	 	            align: 'center',
 	 	 	            verticalAlign: 'bottom',
 	 	 	            borderWidth: 0
 	 	 	        },
 	 	 	        series: seriesData
 	 	 	    });
 	 		}
    	});
 	}
 	
 	// change spider chart dimensions and inner data by datasource
	function changeSpider(dataSource, categories, lga1Header, lga2Header){
		if(dataSource == "level1All"){
			$.getJSON("getLgaSpiderDataByDrop", { selectedLGA1: lga1Header, selectedLGA2: lga2Header, dataSource: dataSource }, function(results) { 
				spiderOptions.title.text = 'Overall Ranking Scores (2015)';
				spiderOptions.xAxis.categories = ['Offence safety ranking score', 'Accident safety ranking score', 'Ambulance response time ranking score', 
				                                  'Fire brigade ranking score', 'Police station ranking score', 'Hospital ranking score'];
	            spiderOptions.tooltip.pointFormat = '<span style="color:{series.color}">{series.name} Ranking Score: <b>{point.y}</b> <br/>';
	            spiderOptions.series = [{
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[0],
					name : ("First LGA"==lga1Header)?'LGA1':lga1Header,
					data : results[0]
				}, {
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[1],
					name : ("Second LGA"==lga2Header)?'LGA2':lga2Header,
					data : results[1]
				}];
				$('#spiderChart').highcharts(spiderOptions);
				
				changeExplainText(dataSource, lga1Header, lga2Header, results[0], results[1]);
			});
        }else if(dataSource == "level1Crime"){
        	$.getJSON("getLgaSpiderDataByDrop", { selectedLGA1: lga1Header, selectedLGA2: lga2Header, dataSource: dataSource }, function(results) {
        		
				spiderOptions.title.text = 'Offence Relative Data (2015)';
	        	spiderOptions.xAxis.categories = categories;
	            spiderOptions.tooltip.pointFormat = '<span style="color:{series.color}">{series.name}: <b>{point.y}</b> offences/100,000 population<br/>';
	            spiderOptions.series = [{
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[2],
					name : 'VIC Average',
					data : results[0]
				},{
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[0],
					name : ("First LGA"==lga1Header)?'LGA1':lga1Header,
					data : results[1]
				}, {
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[1],
					name : ("Second LGA"==lga2Header)?'LGA2':lga2Header,
					data : results[2]
				}];
	    		$('#spiderChart').highcharts(spiderOptions);
	    		
	    		changeExplainText(dataSource, lga1Header, lga2Header, [], []);
			}); 
        	
        }else if(dataSource == "level1Accident"){
        	$.getJSON("getLgaSpiderDataByDrop", { selectedLGA1: lga1Header, selectedLGA2: lga2Header, dataSource: dataSource }, function(results) {
	        	spiderOptions.title.text = 'Accident Relative Data (2015)';
	        	spiderOptions.xAxis.categories = categories;
	            spiderOptions.tooltip.pointFormat = '<span style="color:{series.color}">{series.name}: <b>{point.y}</b> accidents/100,000 population<br/>';
	            spiderOptions.series = [{
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[2],
					name : 'VIC Average',
					data : results[0]
				},{
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[0],
					name : ("First LGA"==lga1Header)?'LGA1':lga1Header,
					data : results[1]
				}, {
					type : 'line',
					fillOpacity : 1,
					color : selectedLGAColors[1],
					name : ("Second LGA"==lga2Header)?'LGA2':lga2Header,
					data : results[2]
				}];
	    		$('#spiderChart').highcharts(spiderOptions);
	    		
	    		changeExplainText(dataSource, lga1Header, lga2Header, [], []);
        	}); 
        }
	}
	
	// Topojson method use to parse topojson file
	L.TopoJSON = L.GeoJSON.extend({
	    addData: function(jsonData) {
	      if (jsonData.type === "Topology") {
	        for (key in jsonData.objects) {
	          geojson = topojson.feature(jsonData, jsonData.objects[key]);
	          L.GeoJSON.prototype.addData.call(this, geojson);
	        }
	      }
	      else {
	        L.GeoJSON.prototype.addData.call(this, jsonData);
	      }
	    }
  	});
	
	// init map and add google map as layer
	var map = L.map('map1', {zoomControl: false}).setView([-37.8131869,144.9629796], 8);
    map.scrollWheelZoom.disable(); 
    map.doubleClickZoom.enable();
    new L.Control.Zoom({position: 'bottomright'}).addTo(map);
    var googleRoadMap = new L.Google('ROADMAP');
    map.addLayer(googleRoadMap);
    
    // init the lga layer and add to layer
    var lgaVicLayer = new L.TopoJSON();
    $.getJSON('resources/data/lga_victoria.topo.json').done(lgaVicData); 
    
    // method to add topojson data 
    // and add to map 
    // and add handle layer event
    function lgaVicData(topoData){
        lgaVicLayer.addData(topoData);
        lgaVicLayer.addTo(map);
        lgaVicLayer.eachLayer(handleLgaVicLayer);
        
        $(".leaflet-control-attribution").hide();
        $(".leaflet-control-zoom").css("margin-bottom","40px;");
        //$("path[stroke-dasharray='mouseover']").attr("fill","#ffffff").attr("stroke-opacity","0.5").attr("stroke-width","1")
        $( "path[fill='#ffffff']" ).attr("title", function() {return $(this).attr("stroke-dasharray");}); 
    }
    
    $("#lga-map-tooltip").hide();
    
 	// handle lga layer event
    function handleLgaVicLayer(layer){
    	layer.setStyle({
            fillColor : '#ffffff',
            fillOpacity: 0,
            color:'#555',
            weight:1,
            opacity:.5,
            className: 'leaflet-clickable masterTooltip',
            dashArray: layer.feature.properties.gaz_lga.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim()
          });
    	layer.on({
    		mouseover : mouseoverLga,
            mouseout: mouseoutLga,
            mousemove: mousemoveLga,
            click : selectLGA
          });
    }
 	
 	
 	// init latest ranking map and add google map as layer
	var latestRankingMap = L.map('latestRanking').setView([-37.2131869,144.9629796], 7);
	latestRankingMap.scrollWheelZoom.disable(); 
	latestRankingMap.doubleClickZoom.enable();
    var googleRoadMap = new L.Google('ROADMAP');
    latestRankingMap.addLayer(googleRoadMap);
    
    // init the lga layer and add to layer
    var latestRankingLgaLayer = new L.TopoJSON();
    $.getJSON('resources/data/lga_victoria.topo.json').done(latestRankingLgaVicData); 
    
    // method to add topojson data 
    // and add to map 
    // and add handle layer event
    function latestRankingLgaVicData(topoData){
    	latestRankingLgaLayer.addData(topoData);
    	latestRankingLgaLayer.addTo(latestRankingMap);
    	latestRankingLgaLayer.eachLayer(handleLatestRankingLgaVicLayer);
        
    	initHistogram();
    }
    
 	// handle lga layer event
    function handleLatestRankingLgaVicLayer(layer){
    	layer.setStyle({
            fillColor : '#ffffff',
            fillOpacity: 0,
            color:'#555',
            weight:1,
            opacity:.5,
            dashArray: "latest-rank-"+layer.feature.properties.gaz_lga.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim()
          });
    	layer.on({
    		mouseover : mouseoverLatestRankingMap
          });
    }
    
 	function mouseoverLatestRankingMap(){
 		selectHistogramAndLga(this.feature.properties.gaz_lga.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim());
 	}
 	
 	var histogramChart;
 	var latestRankingData;
 	
 	function initHistogram(){
 		$.getJSON("getLgaHistogramData", function(results) {
 			latestRankingData = results;
 			
 			var histogramOptionsOnRankingMap = histogramOptions({ onHover: selectHistogramAndLga });
 	        for(var i=0;i<results.length;i++){
 	        	histogramOptionsOnRankingMap.series[0].data.push({"name": results[i].lgaName, "id": results[i].lgaName, "y":results[i].lgaTotalScore});
 	        }
 	       	histogramOptionsOnRankingMap.plotOptions.series.cursor = 'pointer';
 	      	histogramOptionsOnRankingMap.plotOptions.series.pointPadding = 0.1;
 	     	histogramOptionsOnRankingMap.chart.renderTo = 'latest-ranking-histogram';
 	   		histogramOptionsOnRankingMap.exporting = false;

 	   		histogramChart = new Highcharts.Chart( histogramOptionsOnRankingMap );
 	   		
 	   		addLegendToLatestRankingMap();
 	   		// select top 1 as default
 	   		selectHistogramAndLga(latestRankingData[0].lgaName);
	 	   	
    	}); 
 	}
 	
 	function selectHistogramAndLga(lgaName){
 		$("path[stroke-dasharray^='latest-rank-']").attr("fill","#ffffff").attr("fill-opacity","0");   
 		if(histogramChart.get(lgaName) != null){
			if (!histogramChart.get(lgaName).selected) {
				histogramChart.get(lgaName).select();
	        }
			
			$("path[stroke-dasharray='latest-rank-"+lgaName+"']").attr("fill","red").attr("fill-opacity","0.6"); 
			
			var currentLgaData;
			var rankingNo;
			for(var i=0;i<latestRankingData.length;i++){
				if(latestRankingData[i].lgaName == lgaName){
					currentLgaData = latestRankingData[i];
					rankingNo = i+1;
					break;
				}
			}
			$(".latest-ranking-legend.leaflet-control").empty();
			$(".latest-ranking-legend.leaflet-control").html(
					"<strong>Security Ranking score</strong><br>"+
    				"<div style='text-align: center;font-size: 25px;font-weight: 800;margin-top: 10px;'>No."+rankingNo+"</div><br>"+
    				"<div style='margin-top: -10px;'><strong>"+currentLgaData.lgaName+"</strong>"+
    				"<br>Population: "+((currentLgaData.lgaPop==0)?"No Data":numberWithCommas(currentLgaData.lgaPop))+
    				"<br>Total Score: <strong style='color:red;font-size:17px;'>"+((currentLgaData.lgaTotalScore==0)?"No Data":currentLgaData.lgaTotalScore)+"</strong>"+
    				"<br>Offence Security Score: "+((currentLgaData.lgaCrimeScore==0)?"No Data":currentLgaData.lgaCrimeScore)+
    				"<br>Accident Security Score: "+((currentLgaData.lgaCrashScore==0)?"No Data":currentLgaData.lgaCrashScore)+
    				"<br>Police Station Score: "+((currentLgaData.lgaPoliceScore==0)?"No Data":currentLgaData.lgaPoliceScore)+
    				"<br>Ambulance response Score: "+((currentLgaData.lgaAmbulanceScore==0)?"No Data":currentLgaData.lgaAmbulanceScore)+
    				"<br>Hospital Score: "+((currentLgaData.lgaHospitalScore==0)?"No Data":currentLgaData.lgaHospitalScore)+
    				"<br>Fire Brigade Score: "+((currentLgaData.lgaFireBriScore==0)?"No Data":currentLgaData.lgaFireBriScore)+
    				"</div>");
 		}
   	}  
 	
 	//add legend to latest ranking map
    function addLegendToLatestRankingMap(){
    	legend = L.control({position: 'topright'});
    	legend.onAdd = function (map) {

            var div = L.DomUtil.create('div', 'latest-ranking-legend');

            div.innerHTML = "";
            return div;
        };
        
        legend.addTo(latestRankingMap);
        $('.latest-ranking-legend.leaflet-control').attr("style","margin-top: 45px;");
    }
 	
    
  	//compare map js code
    var before = L.map('beforeMap', {attributionControl: false, inertia: false}).setView([-37.8131869,144.9629796], 8);
    before.scrollWheelZoom.disable(); 
    before.doubleClickZoom.enable();
    var googleRoadMap = new L.Google('ROADMAP');
    before.addLayer(googleRoadMap);

    var after = L.map('afterMap', {inertia: false}).setView([-37.8131869,144.9629796], 8);
    after.scrollWheelZoom.disable(); 
    after.doubleClickZoom.enable();
    var googleRoadMap = new L.Google('ROADMAP');
    after.addLayer(googleRoadMap);

    $('#map-container').beforeAfter(before, after, {showFullLinks: false, introPosition: 0.5, animateIntro: true, introDuration: 1000, permArrows: true, arrowHeight: 0.20, labelLeft: -20, labelRight: -12, arrowTop: 0.25, arrowLeftOffset: -60, arrowRightOffset: -19});
    
 	// init the lga layer and add to layer
    var lgaVicLayerForBefore = new L.TopoJSON();
    $.getJSON('resources/data/lga_victoria.topo.json').done(lgaVicDataForBefore); 
 	// init the lga layer and add to layer
    var lgaVicLayerForAfter = new L.TopoJSON();
    $.getJSON('resources/data/lga_victoria.topo.json').done(lgaVicDataForAfter); 
    
    var dataForBeforeMap = [];
    var dataForAfterMap = [];
    var compareMapColorArr = ['#FF9900','#FFCC00','#FFCC66',
                              '#FFFF99','#66FFCC','#33FF99',
                              '#33FF66','#33CC66','#33CC33',
                              '#339900'];
    
    function getCompareMapColor(lgaScore){
    	if(lgaScore==1){
    		return compareMapColorArr[0];
    	}else if(lgaScore>1 && lgaScore<=2){
    		return compareMapColorArr[1];
    	}else if(lgaScore>2 && lgaScore<=3){
    		return compareMapColorArr[2];
    	}else if(lgaScore>3 && lgaScore<=4){
    		return compareMapColorArr[3];
    	}else if(lgaScore>4 && lgaScore<=5){
    		return compareMapColorArr[4];
    	}else if(lgaScore>5 && lgaScore<=6){
    		return compareMapColorArr[5];
    	}else if(lgaScore>6 && lgaScore<=7){
    		return compareMapColorArr[6];
    	}else if(lgaScore>7 && lgaScore<=8){
    		return compareMapColorArr[7];
    	}else if(lgaScore>8 && lgaScore<=9){
    		return compareMapColorArr[8];
    	}else if(lgaScore>9 && lgaScore<=10){
    		return compareMapColorArr[9];
    	}
    }
    
    var beforeMapYear = 2011;
    var afterMapYear = 2015;
    
    function lgaVicDataForBefore(topoData){
    	// add to before and after map
    	lgaVicLayerForBefore.addData(topoData);
    	lgaVicLayerForBefore.addTo(before);
    	lgaVicLayerForBefore.eachLayer(handleLgaVicLayerInBeforeMap);
    	
    	doColorCompareMapsAndAddLegend("beforeMap", beforeMapYear);
    }
    
    function lgaVicDataForAfter(topoData){
     	// add to before and after map
        lgaVicLayerForAfter.addData(topoData);
        lgaVicLayerForAfter.addTo(after);
        lgaVicLayerForAfter.eachLayer(handleLgaVicLayerInAfterMap); 
        
        doColorCompareMapsAndAddLegend("afterMap", afterMapYear);
    }
    
    function doColorCompareMapsAndAddLegend(mapType, year){
    	if(mapType == "beforeMap"){
    		$.getJSON("getLGAScoreForCompareMapByYear", { year: year }, function(results) {
        		dataForBeforeMap = results;
        		
        		if(compareCategory == "compareAll"){
    				for(var i=0;i<results.length;i++){
            			$("path[stroke-dasharray='beforeMap "+results[i].lgaName+"']")
            				.attr("fill",getCompareMapColor(results[i].lgaAvgScore)).attr("fill-opacity","0.5");   			
            		}
    			}else if(compareCategory == "compareCrime"){
    				for(var i=0;i<results.length;i++){
            			$("path[stroke-dasharray='beforeMap "+results[i].lgaName+"']")
            				.attr("fill",getCompareMapColor(results[i].lgaCrimeScore)).attr("fill-opacity","0.5");   			
            		}
    			}else if(compareCategory == "compareAccident"){
    				for(var i=0;i<results.length;i++){
            			$("path[stroke-dasharray='beforeMap "+results[i].lgaName+"']")
            				.attr("fill",getCompareMapColor(results[i].lgaCrashScore)).attr("fill-opacity","0.5");   			
            		}
    			}
    		});
    	}else if(mapType == "afterMap"){
    		$.getJSON("getLGAScoreForCompareMapByYear", { year: year }, function(results) {
            	dataForAfterMap = results;
    			
    			if(compareCategory == "compareAll"){
    				for(var i=0;i<results.length;i++){
            			$("path[stroke-dasharray='afterMap "+results[i].lgaName+"']")
            				.attr("fill",getCompareMapColor(results[i].lgaAvgScore)).attr("fill-opacity","0.5"); 
            		}
    			}else if(compareCategory == "compareCrime"){
    				for(var i=0;i<results.length;i++){
            			$("path[stroke-dasharray='afterMap "+results[i].lgaName+"']")
            				.attr("fill",getCompareMapColor(results[i].lgaCrimeScore)).attr("fill-opacity","0.5"); 
            		}
    			}else if(compareCategory == "compareAccident"){
    				for(var i=0;i<results.length;i++){
            			$("path[stroke-dasharray='afterMap "+results[i].lgaName+"']")
            				.attr("fill",getCompareMapColor(results[i].lgaCrashScore)).attr("fill-opacity","0.5"); 
            		}
    			}
    			
    			if(!$(".info.legend.leaflet-control").is(":visible")){
	    			if(compareCategory == "compareAll"){
	    				addLegendToCompareMap("Offence+Accident <br> Security Score");
	    			}else if(compareCategory == "compareCrime"){
	    				addLegendToCompareMap("Accident <br> Security Score");
	    			}else if(compareCategory == "compareAccident"){
	    				addLegendToCompareMap("Offence <br> Security Score");
	    			}
    			}
    		});
    	}
    }
    
    //add legend to compare map
    function addLegendToCompareMap(legendTitle){
    	
    	var compareMapInfoTooltip = 
    				'<div id="yearlyCompareInfoTooltip" style="color:#e69500;position: absolute;z-index: 1002;right: 0px;margin-top: -15px;width: 200px;margin-right: -150px;">' +
				    	'<a href="javascript:void(0)" data-placement="left" data-toggle="tooltip" class="orange-tooltip" ' +
				    	'	title="This section is the yearly compare for whole VIC offence + accident; ' +
				    	'	drag the button in the center to see difference for selected 2 years; ' +
				    	'	the data could be selected from 2011, 2012, 2013, 2014, 2015; ' +
				    	'	area is safer with higher score; could drill down by dropdown list" >' +
				    	'	<i class="fa fa-question-circle"></i>' +
				    	'</a>' +
					'</div>';
    	
    	legend = L.control({position: 'topright'});
    	legend.onAdd = function (map) {

            var div = L.DomUtil.create('div', 'info legend'),
                grades = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
                labels = [],
                from, to;

            for (var i = grades.length-1; i >=0 ; i--) {
				if(i == 0){
					break;
				}
                from = grades[i-1];
                to = grades[i];
                labels.push(
                    '<i style="background:' + compareMapColorArr[i-1] + '"></i> ' +
                    from + (to ? '&ndash;' + to : '+'));
            }

            div.innerHTML = "<strong>"+legendTitle+"</strong><br>"+labels.join('<br>') + compareMapInfoTooltip;
            return div;
        };
        
        legend.addTo(after);
        $('[data-toggle="tooltip"]').tooltip(); 
        $('.info.legend.leaflet-control').attr("style","margin-top: 45px;");
    }
    
    // handle lga layer event on before map
    function handleLgaVicLayerInBeforeMap(layer){
    	layer.setStyle({
            fillColor : '#ffffff',
            fillOpacity: 0,
            color:'#555',
            weight:1,
            opacity:.5,
            dashArray: "beforeMap "+layer.feature.properties.gaz_lga.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim()
          });
    	layer.on({
    		mouseover: mouseoverCompareMap,
            mouseout: mouseoutCompareMap,
            mousemove: mousemoveCompareMap
          });
    }
    
 	// handle lga layer event on after map
	function handleLgaVicLayerInAfterMap(layer){
		layer.setStyle({
            fillColor : '#ffffff',
            fillOpacity: 0,
            color:'#555',
            weight:1,
            opacity:.5,
            dashArray: "afterMap "+layer.feature.properties.gaz_lga.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim()
          });
		layer.on({
    		mouseover: mouseoverCompareMap,
            mouseout: mouseoutCompareMap,
            mousemove: mousemoveCompareMap
          });
    }
	$("#compare-map-tooltip").hide();
 	function mouseoverCompareMap(e){
 		this.bringToFront();
 		$(".ui-draggable").css({'opacity':1});
 		var noDataStr = "No Data";
    	if(this._path.attributes[10].value.indexOf('beforeMap')>=0){
    		var lgaName = this._path.attributes[10].value.replace('beforeMap','').trim();
    		var lgaData;
    		for(var i=0;i<dataForBeforeMap.length;i++){
    			if(dataForBeforeMap[i].lgaName == lgaName){
    				lgaData = dataForBeforeMap[i];
    				break;
    			}
    		}
    		
    		$("#compare-map-tooltip").show();
    		var x = e.originalEvent.layerX + 30;
    		var y = e.originalEvent.layerY - 600;
    		$("#compare-map-tooltip").attr("style","margin-top:"+y+"px;margin-left:"+x+"px;z-index:1000;");
    		
    		if(compareCategory == "compareAll"){
    			if(typeof lgaData === "undefined"){
    				$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaName+"</strong><br>"+
							"Population: "+noDataStr+"<br>"+
							"Overall Security Score: "+noDataStr+"<br>"+
							"Offence count: "+noDataStr+"<br>"+
							"Accident count: "+noDataStr);
    			}else{
	    			$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaData.lgaName+"</strong><br>"+
								"Population: "+numberWithCommas(lgaData.lgaPop)+"<br>"+
								"Overall Security Score: "+lgaData.lgaAvgScore+"<br>"+
								"Offence count: "+numberWithCommas(lgaData.lgaCrimeCountByPop)+"/100,000 population<br>"+
								"Accident count: "+numberWithCommas(lgaData.lgaCrashCountByPop)+"/100,000 population");
    			}
			}else if(compareCategory == "compareCrime"){
				if(typeof lgaData === "undefined"){
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaName+"</strong><br>"+
							"Population: "+noDataStr+"<br>"+
							"Offence Security Score: "+noDataStr+"<br>"+
							"Offence count: "+noDataStr);
    			}else{
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaData.lgaName+"</strong><br>"+
								"Population: "+numberWithCommas(lgaData.lgaPop)+"<br>"+
								"Offence Security Score: "+lgaData.lgaCrimeScore+"<br>"+
								"Offence count: "+numberWithCommas(lgaData.lgaCrimeCountByPop)+"/100,000 population");
    			}
			}else if(compareCategory == "compareAccident"){
				if(typeof lgaData === "undefined"){
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaName+"</strong><br>"+
							"Population: "+noDataStr+"<br>"+
							"Accident Security Score: "+noDataStr+"<br>"+
							"Accident count: "+noDataStr);
    			}else{
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaData.lgaName+"</strong><br>"+
								"Population: "+numberWithCommas(lgaData.lgaPop)+"<br>"+
								"Accident Security Score: "+lgaData.lgaCrashScore+"<br>"+
								"Accident count: "+numberWithCommas(lgaData.lgaCrashCountByPop)+"/100,000 population");
    			}
			}
    	}else if(this._path.attributes[10].value.indexOf('afterMap')>=0){
    		var lgaName = this._path.attributes[10].value.replace('afterMap','').trim();
    		var lgaData;
    		for(var i=0;i<dataForAfterMap.length;i++){
    			if(dataForAfterMap[i].lgaName == lgaName){
    				lgaData = dataForAfterMap[i];
    				break;
    			}
    		}
    		
    		$("#compare-map-tooltip").show();
    		var x = e.originalEvent.layerX + 30;
    		var y = e.originalEvent.layerY - 600;
    		$("#compare-map-tooltip").attr("style","margin-top:"+y+"px;margin-left:"+x+"px;z-index:1000;");
    		if(compareCategory == "compareAll"){
				if(typeof lgaData === "undefined"){
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaName+"</strong><br>"+
							"Population: "+noDataStr+"<br>"+
							"Overall Security Score: "+noDataStr+"<br>"+
							"Offence count: "+noDataStr+"<br>"+
							"Accident count: "+noDataStr);
    			}else{
	    			$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaData.lgaName+"</strong><br>"+
								"Population: "+numberWithCommas(lgaData.lgaPop)+"<br>"+
								"Overall Security Score: "+lgaData.lgaAvgScore+"<br>"+
								"Offence count: "+numberWithCommas(lgaData.lgaCrimeCountByPop)+"/100,000 population<br>"+
								"Accident count: "+numberWithCommas(lgaData.lgaCrashCountByPop)+"/100,000 population");
    			}
			}else if(compareCategory == "compareCrime"){
				if(typeof lgaData === "undefined"){
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaName+"</strong><br>"+
							"Population: "+noDataStr+"<br>"+
							"Offence Security Score: "+noDataStr+"<br>"+
							"Offence count: "+noDataStr);
    			}else{
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaData.lgaName+"</strong><br>"+
								"Population: "+numberWithCommas(lgaData.lgaPop)+"<br>"+
								"Offence Security Score: "+lgaData.lgaCrimeScore+"<br>"+
								"Offence count: "+numberWithCommas(lgaData.lgaCrimeCountByPop)+"/100,000 population");
    			}
			}else if(compareCategory == "compareAccident"){
				if(typeof lgaData === "undefined"){
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaName+"</strong><br>"+
							"Population: "+noDataStr+"<br>"+
							"Accident Security Score: "+noDataStr+"<br>"+
							"Accident count: "+noDataStr);
    			}else{
					$("#compare-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaData.lgaName+"</strong><br>"+
								"Population: "+numberWithCommas(lgaData.lgaPop)+"<br>"+
								"Accident Security Score: "+lgaData.lgaCrashScore+"<br>"+
								"Accident count: "+numberWithCommas(lgaData.lgaCrashCountByPop)+"/100,000 population");
    			}
			}
    		
    	}
 	}
 	function mouseoutCompareMap(e){
 		this.bringToFront();
 		$("#compare-map-tooltip").hide();
 	}
 	function mousemoveCompareMap(e){
 		this.bringToFront();
 		var x = e.originalEvent.layerX + 30;
		var y = e.originalEvent.layerY - 600;
		$("#compare-map-tooltip").attr("style","margin-top:"+y+"px;margin-left:"+x+"px;z-index:1000;"); 
 	}
 	function numberWithCommas(x) {
 	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
 	}
 	
 	var compareCategory = $("#compareDropdownSelectedItem").attr('title');
 	
 	$("#beforeYearSelected").click(function(){
 		showYearsInCompareMap($(this));
 	});
 	$("#afterYearSelected").click(function(){
 		showYearsInCompareMap($(this));
 	});
 	/* $(".year-selection").click(function(){
 		changeYearInCompareMap("after");
 	}); */
 	
 	function showYearsInCompareMap(button){
 		
 		if(button[0].id.indexOf("before")>=0){
 			$(".beforeButtons").empty();
 			$(".beforeButtons").html(
 					'<button type="button" id="before2011" style="left:-353px" class="btn '+((button[0].innerHTML=="2011")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2011</button>'+
					'<button type="button" id="before2012" style="left:-353px" class="btn '+((button[0].innerHTML=="2012")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2012</button>'+
					'<button type="button" id="before2013" style="left:-353px" class="btn '+((button[0].innerHTML=="2013")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2013</button>'+
					'<button type="button" id="before2014" style="left:-353px" class="btn '+((button[0].innerHTML=="2014")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2014</button>'+
					'<button type="button" id="before2015" style="left:-353px" class="btn '+((button[0].innerHTML=="2015")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2015</button>');
 		}else if(button[0].id.indexOf("after")>=0){
 			$(".afterButtons").empty();
 			$(".afterButtons").html(
 					'<button type="button" id="after2015" class="btn '+((button[0].innerHTML=="2015")?'btn-primary':'btn-default')+' btn-arrow-right year-selection">2015</button>'+
					'<button type="button" id="after2014" class="btn '+((button[0].innerHTML=="2014")?'btn-primary':'btn-default')+' btn-arrow-right year-selection">2014</button>'+
					'<button type="button" id="after2013" class="btn '+((button[0].innerHTML=="2013")?'btn-primary':'btn-default')+' btn-arrow-right year-selection">2013</button>'+
					'<button type="button" id="after2012" class="btn '+((button[0].innerHTML=="2012")?'btn-primary':'btn-default')+' btn-arrow-right year-selection">2012</button>'+
					'<button type="button" id="after2011" class="btn '+((button[0].innerHTML=="2011")?'btn-primary':'btn-default')+' btn-arrow-right year-selection">2011</button>');
 		}
 		$(".year-selection").click(function(){
 	 		changeYearInCompareMap($(this));
 	 		if(button[0].id.indexOf("before")>=0){
 	 			beforeMapYear = $(this)[0].innerHTML;
	 	    	doColorCompareMapsAndAddLegend("beforeMap", beforeMapYear);
 	 		}else if(button[0].id.indexOf("after")>=0){
 	 			afterMapYear = $(this)[0].innerHTML;
	 	    	doColorCompareMapsAndAddLegend("afterMap", afterMapYear);
 	 		}
 	 		
 	 	});
 	}
 	
 	function changeYearInCompareMap(button){
		if(button[0].id.indexOf("before")>=0){
			$(".beforeButtons").empty();
			$(".beforeButtons").html('<button type="button" id="beforeYearSelected" class="btn btn-default btn-arrow-left">'+button[0].innerHTML+'</button>');
 		}else if(button[0].id.indexOf("after")>=0){
			$(".afterButtons").empty();
			$(".afterButtons").html('<button type="button" id="afterYearSelected" class="btn btn-default btn-arrow-right">'+button[0].innerHTML+'</button>');
 		}
		$("#beforeYearSelected").click(function(){
	 		showYearsInCompareMap($(this));
	 	});
	 	$("#afterYearSelected").click(function(){
	 		showYearsInCompareMap($(this));
	 	});
 	}
    // event for dropdown menu select
	$(".dropdown-menu-compare li a").click(function(){
		
			if($("#compareDropdownSelectedItem").attr('title') == $(this)[0].name){
				return;
			}
			
			$(this).parent().parent().parent().children().first().children().first().html($(this).text());
			$(this).parent().parent().parent().children().first().children().first().attr('title', $(this)[0].name);
			
			compareCategory = $(this)[0].name;
			
			if(compareCategory == "compareAll"){
				$('.info.legend.leaflet-control strong').html("Offence+Accident <br> Security Score");
				for(var i=0;i<dataForBeforeMap.length;i++){
	    			$("path[stroke-dasharray='beforeMap "+dataForBeforeMap[i].lgaName+"']")
	    				.attr("fill",getCompareMapColor(dataForBeforeMap[i].lgaAvgScore)).attr("fill-opacity","0.5"); 
	    		}
				for(var i=0;i<dataForAfterMap.length;i++){
	    			$("path[stroke-dasharray='afterMap "+dataForAfterMap[i].lgaName+"']")
	    				.attr("fill",getCompareMapColor(dataForAfterMap[i].lgaAvgScore)).attr("fill-opacity","0.5"); 
	    		}
			}else if(compareCategory == "compareCrime"){
				$('.info.legend.leaflet-control strong').html("Offence <br> Security Score");
				for(var i=0;i<dataForBeforeMap.length;i++){
	    			$("path[stroke-dasharray='beforeMap "+dataForBeforeMap[i].lgaName+"']")
	    				.attr("fill",getCompareMapColor(dataForBeforeMap[i].lgaCrimeScore)).attr("fill-opacity","0.5"); 
	    		}
				for(var i=0;i<dataForAfterMap.length;i++){
	    			$("path[stroke-dasharray='afterMap "+dataForAfterMap[i].lgaName+"']")
	    				.attr("fill",getCompareMapColor(dataForAfterMap[i].lgaCrimeScore)).attr("fill-opacity","0.5"); 
	    		}
			}else if(compareCategory == "compareAccident"){
				$('.info.legend.leaflet-control strong').html("Accident <br> Security Score");
				for(var i=0;i<dataForBeforeMap.length;i++){
	    			$("path[stroke-dasharray='beforeMap "+dataForBeforeMap[i].lgaName+"']")
	    				.attr("fill",getCompareMapColor(dataForBeforeMap[i].lgaCrashScore)).attr("fill-opacity","0.5"); 
	    		}
				for(var i=0;i<dataForAfterMap.length;i++){
	    			$("path[stroke-dasharray='afterMap "+dataForAfterMap[i].lgaName+"']")
	    				.attr("fill",getCompareMapColor(dataForAfterMap[i].lgaCrashScore)).attr("fill-opacity","0.5"); 
	    		}
			}
	   });
 	
    
    
    // selected LGA colors, lga1 and lga2 color
    var selectedLGAColors = ["#7cb5ec","#868686","#ff0000"];
    
    // When click lga area on topojson area, color the area
    // and get the crime data from backend
    function selectLGA(){
    	this.bringToFront();
    	var selectedLGA = this.feature.properties.gaz_lga;
    	
    	if(selectedLGAButtonIndex == 1){
    		if(selectedLGAColors[1] == this._path.attributes[6].value){
    			return;
    		}
    		$( "path[fill='"+selectedLGAColors[0]+"']" ).attr("fill","#ffffff").attr("stroke-opacity","0.5").attr("stroke-width","1");
    		this.setStyle({
                fillColor:selectedLGAColors[0],
                fillOpacity: 0.4,
                weight:2,
                opacity: 1,
                dashArray: " "
            });
    		
    		getSelectedLGAData(selectedLGA, selectedLGAButtonIndex);
    		
    	}else if(selectedLGAButtonIndex == 2){
    		if(selectedLGAColors[0] == this._path.attributes[6].value){
    			return;
    		}
    		$( "path[fill='"+selectedLGAColors[1]+"']" ).attr("fill","#ffffff").attr("stroke-opacity","0.5").attr("stroke-width","1");
    		this.setStyle({
                fillColor:selectedLGAColors[1],
                fillOpacity: 0.4,
                weight:2,
                opacity: 1,
                dashArray: " "
            });
    		
    		getSelectedLGAData(selectedLGA, selectedLGAButtonIndex);
    		
    	}
    }
    
    function mouseoverLga(e){
    	this.bringToFront();
    	var x = e.originalEvent.layerX + 30;
		var y = e.originalEvent.layerY - 390;
		$("#lga-map-tooltip").attr("style","margin-top:"+y+"px;margin-left:"+x+"px;z-index:1000;");
        
        var lgaName = this.feature.properties.gaz_lga.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim();
        $("#lga-map-tooltip").show();
        $("#lga-map-tooltip").html("<strong style='font-size:1.2em;'>"+lgaName+"</strong><br>"+
				"<span style='font-size:0.8em;'>click to show details</span>");
        
    	if(jQuery.inArray( this._path.attributes[6].value, selectedLGAColors ) >= 0){
    		return;
    	}
        this.setStyle({
            fillColor:selectedLGAColors[selectedLGAButtonIndex-1],
            fillOpacity: 0.4,
            weight:2,
            opacity: 1,
            dashArray: "mouseover"
        }); 
    }
    
	function mouseoutLga(){
		this.bringToFront();
		$("path[stroke-dasharray='mouseover']").attr("fill","#ffffff").attr("fill-opacity","0").attr("stroke-opacity","0.5").attr("stroke-width","1")
		.attr("stroke-dasharray"," ");
		
		$("#lga-map-tooltip").hide();
    }
	
	function mousemoveLga(e){
		this.bringToFront();
		var x = e.originalEvent.layerX + 30;
		var y = e.originalEvent.layerY - 390;
		$("#lga-map-tooltip").attr("style","margin-top:"+y+"px;margin-left:"+x+"px;z-index:1000;");
    }
    
    // lga data set and lga crime count data set
    var lgaDataSet = [];
    var lgaCrimeCountSet = [];
    
    //compare-table
    var tableData = [];
    
    {
	    var tableHead = [{
	        field: 'rowTitle',
	        title: 'Overall Statistic Data (2015)'
	    }, {
	        field: 'lga1Name',
	        title: 'First LGA',
	        formatter: lga1Formatter
	    }, {
	        field: 'lga2Name',
	        title: 'Second LGA',
	        formatter: lga2Formatter
	    }];
		
		var lga1TableData = ['-','-','-','-','-','-','-'];
		var lga2TableData = ['-','-','-','-','-','-','-'];
		var rowTitleData = ['Population','Offence count','Accident count',
		                    'Ambulance response time','Fire brigade number',
		                    'Police station number','Hospital number'];
		var tableData = [];
		for(var i=0;i<rowTitleData.length;i++){
			tableData.push({
				rowTitle: rowTitleData[i],
	        	lga1Name: lga1TableData[i],
	        	lga2Name: lga2TableData[i]
			});
		}
		
		createTable(tableHead, tableData);
		$("#compare-table thead tr:nth-child(1) .th-inner:eq(1)").css("color",selectedLGAColors[0]);
		$("#compare-table thead tr:nth-child(1) .th-inner:eq(2)").css("color",selectedLGAColors[1]);
    }
    
    // set lga1 column color
    function lga1Formatter(value) {
        return '<div  style="color: ' + selectedLGAColors[0] + '">' +
        	numberWithCommas(value) +
                '</div>';
    }
    
 	// set lga2 column color
    function lga2Formatter(value) {
        return '<div  style="color: ' + selectedLGAColors[1] + '">' +
        	numberWithCommas(value) +
                '</div>';
    }
 	
    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    
    // AJAX invoke to get lga crime data from backend 
    function getSelectedLGAData(selectedLGA, selectedLGAButtonIndex){
    	
    	selectedLGA = selectedLGA.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim();
    	$("#compare-table thead tr:nth-child(1) .th-inner:eq("+selectedLGAButtonIndex+")").css("color",selectedLGAColors[selectedLGAButtonIndex-1]);
    	$("#compare-table thead tr:nth-child(1) .th-inner:eq("+selectedLGAButtonIndex+")").html(selectedLGA);
    	
    	var dataSource = "";
    	if($("#level2Dropdown").is(":visible")){
    		dataSource = $("#level2SelectedItem").attr("title");
    	}else{
    		dataSource = $("#level1SelectedItem").attr("title");
    	}
    	
    	$.getJSON("getSelectedLGAData", { selectedLGA: selectedLGA, dataSource: dataSource }, function(results) {
    		for(var i=0;i<results[0].length;i++){
    			var cellInnerHTML = numberWithCommas(results[0][i]);
    			$("#compare-table tbody tr:nth-child("+(i+1)+") td:eq("+selectedLGAButtonIndex+") div").html(cellInnerHTML);
    		}
    		
    		var dataPlace = (selectedLGAButtonIndex==1)?"right":"left";
    		if("level1All" == dataSource){
   				var lgaPop = results[0][0];
    			if(lgaPop != "-"){
    				var actualCrime = results[0][1];
    				var actualCrash = results[0][2];
    				var crimePercent = parseInt(actualCrime * 100 * 100 / lgaPop) / 100;
    				var crashPercent = parseInt(actualCrash * 100 * 100 / lgaPop) / 100;
    				
    				results[2][0] = results[2][0]<0?results[2][0].toString():"+"+results[2][0];
    				var popAppendHTML = getCellAppendHTMLForOverallTableData(results[2][0], dataPlace, selectedLGA, "population");
    				
    				results[2][1] = results[2][1]<0?results[2][1].toString():"+"+results[2][1];
    				var crimeAppendHTML = getCellAppendHTMLForOverallTableData(results[2][1], dataPlace, selectedLGA, "offence count");
    				
    				results[2][2] = results[2][2]<0?results[2][2].toString():"+"+results[2][2];
    				var crashAppendHTML = getCellAppendHTMLForOverallTableData(results[2][2], dataPlace, selectedLGA, "accident count");
    				
    				$("#compare-table tbody tr:nth-child("+(1)+") td:eq("+selectedLGAButtonIndex+") div").append( popAppendHTML );
    				$("#compare-table tbody tr:nth-child("+(2)+") td:eq("+selectedLGAButtonIndex+") div").append( crimeAppendHTML );
    				$("#compare-table tbody tr:nth-child("+(3)+") td:eq("+selectedLGAButtonIndex+") div").append( crashAppendHTML );
    				$('[data-toggle="tooltip"]').tooltip(); 
    			}
			}else{
				var totalNum = eval(results[0].join('+'));
				if(totalNum != 0){
					var percentArr = [];
					for(var i=0;i<results[0].length;i++){
						if(i == results[0].length-1){
							var totalPercent = eval(percentArr.join('+'));
							percentArr.push(100 - totalPercent);
						}else{
							percentArr.push(parseInt(results[0][i] * 100 / totalNum));
						}
					}
					
					for(var i=0;i<results[0].length;i++){
						var tooltipTitle = "";
						if("level1Crime" == dataSource){
							tooltipTitle = "In 2015, percentage of this offence type for " + selectedLGA + " is " + percentArr[i] + "%";
						}else if("level1Accident" == dataSource){
							tooltipTitle = "In 2015, percentage of this accident type for " + selectedLGA + " is " + percentArr[i] + "%";
						}
		    			var cellInnerHTML = numberWithCommas(results[0][i]) + getCellAppendHTML(percentArr[i], dataPlace, tooltipTitle);
		    			$("#compare-table tbody tr:nth-child("+(i+1)+") td:eq("+selectedLGAButtonIndex+") div").html(cellInnerHTML);
		    		}
					
					$('[data-toggle="tooltip"]').tooltip();
				}
			}
    		
    		updateSpiderChart(selectedLGA, selectedLGAButtonIndex, results[1], dataSource);
    		return;
        });
    }
    
	function getCellAppendHTMLForOverallTableData(percent, dataPlace, lga, dataType){
		var color = percent.indexOf("-")>=0?"green":"red";
		var trend = percent.indexOf("-")>=0?" decreased ":" increased ";
		var title = "Compared to year 2014, " + dataType + " for "+ lga + trend + percent.substring(1) + "%";
		return "&nbsp;&nbsp;<span style='color:"+color+"'>( "+percent+"% ) "+
			"<a href='javascript:void(0)' data-placement='"+dataPlace+"' data-toggle='tooltip' "+
			"title='"+title+"' class='orange-tooltip'>"+
			"<i class='fa fa-question-circle'></i></a></span>";
	}    
	
	function getCellAppendHTML(percent, dataPlace, title){
		return "&nbsp;&nbsp;<span style='color:#e69500'>( "+percent+"% ) "+
			"<a href='javascript:void(0)' data-placement='"+dataPlace+"' data-toggle='tooltip' "+
			"title='"+title+"' class='orange-tooltip'>"+
			"<i class='fa fa-question-circle'></i></a></span>";
	}    
    
    // after the crime data updated in table, then update the spider chart
    function updateSpiderChart(selectedLGA, selectedLGAButtonIndex, dataset, dataSource){
    	
    	var spider = $('#spiderChart').highcharts();
    	
   		if(dataSource == "level1All"){
   			$(".highcharts-legend-item:nth-child("+selectedLGAButtonIndex+")").find("text").html(selectedLGA);
   			spider.series[selectedLGAButtonIndex-1].setData(dataset);
   	    	spider.series[selectedLGAButtonIndex-1].name = selectedLGA;
   		}else if(dataSource == "level1Crime" || dataSource == "level1Accident"){
   			$(".highcharts-legend-item:nth-child("+(selectedLGAButtonIndex+1)+")").find("text").html(selectedLGA);
   			spider.series[selectedLGAButtonIndex].setData(dataset);
   	    	spider.series[selectedLGAButtonIndex].name = selectedLGA;
   		}
   		
   		var lga1Header = $("#compare-table thead tr:nth-child(1) .th-inner:eq(1)").html();
		var lga2Header = $("#compare-table thead tr:nth-child(1) .th-inner:eq(2)").html();
		if(dataSource == "level1All"){
			if(selectedLGAButtonIndex == 1){
		   		changeExplainText(dataSource, lga1Header, lga2Header, dataset, spider.series[1].yData);
			}else if(selectedLGAButtonIndex == 2){
		   		changeExplainText(dataSource, lga1Header, lga2Header, spider.series[0].yData, dataset);
			}
		}
	}
    
    // set lga table with crime data
    function setSelectedLGATable(selectedLGA,crimeMajorArr,crimeCountArr,selectedLGAButtonIndex){
    	$("#lga"+selectedLGAButtonIndex+"Name").html("<span style='margin-left:0px;color:"+selectedLGAColors[selectedLGAButtonIndex-1]+";'>"+selectedLGA+"</span>");
    	for(var i=0;i<crimeMajorArr.length;i++){
    		$("#lga"+selectedLGAButtonIndex+"Crime"+crimeMajorArr[i]).html("<span style='margin-left:25px;color:"+selectedLGAColors[selectedLGAButtonIndex-1]+";'>"+crimeCountArr[i]+"</span>");
    	}
    }
    
    var selectedLGAButtonIndex = 1;
    
    $( ".lga-select-tips" ).hover(
   		  function() {
   			  $(this).children().first().toggleClass( "btn-success", false );
  			  $(this).children().first().toggleClass( "btn-primary", true );
   		  }, function() {
   			  if(selectedLGAButtonIndex == 1){
   				$(".second-lga-tip button").toggleClass( "btn-primary", false );
   				$(".second-lga-tip button").toggleClass( "btn-success", true );
 			  }else if(selectedLGAButtonIndex == 2){
 				$(".first-lga-tip button").toggleClass( "btn-primary", false );
 				$(".first-lga-tip button").toggleClass( "btn-success", true );
 			  }
   		  }
   		);
    
    // change the tip text when user click LGA1 or LGA2 button
    $(".lga-select-tips").click(function(){
		if($(this).hasClass("first-lga-tip")){
			$(".first-lga-tip button").toggleClass( "btn-success", false );
			$(".first-lga-tip button").toggleClass( "btn-primary", false );
			$(".first-lga-tip button").toggleClass( "btn-primary", true );
			$(".second-lga-tip button").toggleClass( "btn-success", false );
			$(".second-lga-tip button").toggleClass( "btn-primary", false );
			$(".second-lga-tip button").toggleClass( "btn-success", true );
			selectedLGAButtonIndex = 1;
			if($("#clickableTip").length == 0){
				$("#map1-legend-tips").html('Tips: <br>"1st area" button selected now<br>1. Click map to select 1st Area<br>2. Click "2nd area" button to switch&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-right"></i><i id="legend-tips-close" class="fa fa-times" style="position: relative;left: 18px;top: -59px;"></i>');
				$("#legend-tips-close").click(function(){
					legendClose();
				});
			}
		}else if($(this).hasClass("second-lga-tip")){
			$(".first-lga-tip button").toggleClass( "btn-success", false );
			$(".first-lga-tip button").toggleClass( "btn-primary", false );
			$(".first-lga-tip button").toggleClass( "btn-success", true );
			$(".second-lga-tip button").toggleClass( "btn-success", false );
			$(".second-lga-tip button").toggleClass( "btn-primary", false );
			$(".second-lga-tip button").toggleClass( "btn-primary", true );
			selectedLGAButtonIndex = 2;
			if($("#clickableTip").length == 0){
				$("#map1-legend-tips").html('Tips: <br>"2nd area" button selected now<br>1. Click map to select 2nd Area<br>2. Click "1st area" button to switch&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-right"></i><i id="legend-tips-close" class="fa fa-times" style="position: relative;left: 22px;top: -59px;"></i>');
				$("#legend-tips-close").click(function(){
					legendClose();
				});
			}
		}
    });
    
    // spider chart options
    var spiderOptions = {
            chart: {
                height: 550,
                marginTop: 0,
                polar: true,
                type: 'line'
            },

            title: {
                text: 'Overall Ranking Scores (2015)'
            },

            pane: {
                size: '80%'
            },

            exporting: {
                     enabled: false
            },

            credits: {
                enabled: false
            },
            
            xAxis: {
                labels: {
                    align: 'center'
                },
                categories: ['Offence safety ranking Score', 'Accident safety ranking Score', 'Ambulance response time ranking Score', 
                             'Fire brigade ranking Score', 'Police station ranking Score', 'Hospital ranking Score'],             
                tickmarkPlacement: 'on',
                lineWidth: 0
            },

            yAxis: {
                gridLineInterpolation: 'polygon',
                min: 0
            },
            
            tooltip: {
                shared: true,
                pointFormat: '<span style="color:{series.color}">{series.name} Ranking Score: <b>{point.y}</b> <br/>'
            },

            plotOptions: {
                series: {
                    marker: {
                        enabled: false
                    }
                }
            },

            legend: {
                align: 'bottom',
                verticalAlign: 'top',
                layout: 'vertical',
                y: 10,
                itemStyle: {
                    font: '9pt',
                    color: '#A0A0A0'
                }
            },

			series : [ {
						type : 'line',
						fillOpacity : 1,
						color : selectedLGAColors[0],
						name : 'LGA1',
						data : [0,0,0,0,0,0]
					}, {
						type : 'line',
						fillOpacity : 1,
						color : selectedLGAColors[1],
						name : 'LGA2',
						data : [0,0,0,0,0,0]
					} ]

		};
		$('#spiderChart').highcharts(spiderOptions);

		
		/*
		 * Histogram
		 */
		function histogramOptions(options) {
		  onHover = (options && options.onHover) || null;
		  seriesData = (options && options.data) || [{}];
		  
		  var histOptions = {
		    title: {
		      text: ''
		    },
		    chart: {
		      type: 'column',
		      backgroundColor:'rgba(255, 255, 255, 0)'
		    },
		    plotOptions: {
		      series: {
		        color: '#45d8e1',
		        states: {
		            select: {
		              color: 'red',
		              borderColor: '#ffffff'
		            },
		            hover: {
		              enabled: false
		            }
		        },
		        pointPadding: 0,
		        groupPadding: 0,
		        borderWidth: 0.5
		      }
		    },
		    xAxis: {
		      categories: [],
		      lineWidth: 0,
		      tickWidth: 0,
		      title: {
		        text: ''
		      },
		      labels: {
		        enabled: false
		      },
		      gridLineWidth: 0
		      
		    },
		    yAxis: {
		      lineWidth: 0,
		      tickWidth: 0,
		      title: {
		        text: ''
		      },
		      labels: {
		        enabled: false
		      },
		      gridLineWidth: 0
		    },
		    legend: {
		      enabled: false
		    },
		    tooltip: {
		      enabled: false
		      //formatter: function() {
		      //    return this.x + ': '+ (this.y);
		      //}
		    },
		    credits: {
		      enabled: false
		    },
		    series: [{
		      data: seriesData
		    }]
		  };
		  
		  if (onHover !== null) {
		    histOptions.plotOptions.series.point = {
		      events: {
		        mouseOver: function() {
		          jQuery.doTimeout( 'hover', 100, onHover, this.name);
		        },
		        mouseOut: function() {
		          jQuery.doTimeout( 'hover');
		        },
		      }
		    };
		  }
		  return histOptions;
		}
		
	})(jQuery);
</script>
  
</body>
</html>

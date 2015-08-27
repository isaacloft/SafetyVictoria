<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="Safety Victoria" /> 
<meta name="keywords" content="Safety, Victoria, Crime, Crash">
<meta name="author" content="">
<title>Safety Victoria</title>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.css" />

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
                        <a class="page-scroll" href="#visualization">Safety Visualization</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#projects">Projects</a>
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

	<section id="about" class="services">
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
                            <i class="fa fa-clipboard"></i>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading"><a class="page-scroll" style="color: black;" href="#visualization">Safety Visualization</a></h3>
                            <ul>
                            	<!--  <li>As <strong>Java R&D Engineer</strong></li>-->
                                <li>Score of areas by major crime categories</li>
                                <li>Score of areas by sub crime categories</li>
                                <li>Spider-chart of Index</li>
                                <li>Area selection function</li>
                                <li>Tabular display of default area score and average score</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 wow fadeIn" data-wow-delay=".4s">
                    <div class="media">
                        <div class="pull-left">
                            <i class="fa fa-rocket"></i>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Safety Comparison By Year</h3>
                            <ul>
                                <!-- <li>As <strong>Java R&D Engineer</strong></li> -->
                                <li>Year by year comparison</li>
                                <li>slideable splite line</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 wow fadeIn" data-wow-delay=".6s">
                    <div class="media">
                        <div class="pull-left">
                            <i class="fa fa-pencil"></i>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Safety Comparison By LGA</h3>
                            <ul>
                               <!-- <li>As <strong>Java Software Engineer</strong></li> --> 
                                <li>LGA vs LGA comparison</li>
                                <li>Location search function by postcode</li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="visualization" class="bg-gray" style="padding-top: 13px;">
        <div class="container" style="width:1240px;">
            <div class="row content-row">
                <div class="col-xs-6 section-border wow fadeIn" data-wow-delay=".2s" style="margin-left:0px;height:640px;width:700px;">
                	<div class="row">
                		<div id="map1" class="map" style="width: auto;height: 390px;"></div>
                		<div class="legend-tips" style="display: block;" id="map1-legend-tips">Tips: Click map to select 1st Local Government Areas</div>
                		<div class="first-lga-tip lga-select-tips" style="display: block;">1st LGA</div>
                		<div class="second-lga-tip lga-select-tips" style="display: block;">2nd LGA</div>
                	</div>
                	<div class="row" style="margin-right: 15px; margin-left: 15px;">
	                	<div class="row">
	                		<div class="col-sm-6"><h3 style="font-family: inherit;font-weight: 500;text-transform:none;margin-top:30px;">Overall crime offence <br>count by category</h3></div>
	                		<div class="col-sm-3"><h3 style="font-family: inherit;font-weight: 500;text-transform:none;margin-top:30px;" id="lga1Name"><span style='margin-left:25px;'>-</span></h3></div>
	                		<div class="col-sm-3"><h3 style="font-family: inherit;font-weight: 500;text-transform:none;margin-top:30px;" id="lga2Name"><span style='margin-left:25px;'>-</span></h3></div>
	                	</div>
	                	<div class="row">
	                		<div class="col-sm-6">A Crimes against the person</div>
	                		<div class="col-sm-3 " id="lga1CrimeA"><span style='margin-left:25px;'>-</span></div>
	                		<div class="col-sm-3 " id="lga2CrimeA"><span style='margin-left:25px;'>-</span></div>
	                	</div>
	                	<div class="row">
	                		<div class="col-sm-6 ">B Property and deception offences</div>
	                		<div class="col-sm-3 " id="lga1CrimeB"><span style='margin-left:25px;'>-</span></div>
	                		<div class="col-sm-3 " id="lga2CrimeB"><span style='margin-left:25px;'>-</span></div>
	                	</div>
	                	<div class="row">
	                		<div class="col-sm-6 ">C Drug offences</div>
	                		<div class="col-sm-3 " id="lga1CrimeC"><span style='margin-left:25px;'>-</span></div>
	                		<div class="col-sm-3 " id="lga2CrimeC"><span style='margin-left:25px;'>-</span></div>
	                	</div>
	                	<div class="row">
	                		<div class="col-sm-6 ">D Public order and security offences</div>
	                		<div class="col-sm-3 " id="lga1CrimeD"><span style='margin-left:25px;'>-</span></div>
	                		<div class="col-sm-3 " id="lga2CrimeD"><span style='margin-left:25px;'>-</span></div>
	                	</div>
	                	<div class="row">
	                		<div class="col-sm-6 ">E Justice procedures offences</div>
	                		<div class="col-sm-3 " id="lga1CrimeE"><span style='margin-left:25px;'>-</span></div>
	                		<div class="col-sm-3 " id="lga2CrimeE"><span style='margin-left:25px;'>-</span></div>
	                	</div>
	                	<div class="row">
	                		<div class="col-sm-6 ">F Other offences</div>
	                		<div class="col-sm-3 " id="lga1CrimeF"><span style='margin-left:25px;'>-</span></div>
	                		<div class="col-sm-3 " id="lga2CrimeF"><span style='margin-left:25px;'>-</span></div>
	                	</div>
                	</div>
                </div>
                <div class="col-xs-6 section-border wow fadeIn" data-wow-delay=".4s" style="height:640px;width:530px;">
                    <div id="spiderChart"></div>
                </div>
            </div>
        </div>
    </section>
	
	<section id="projects" class="bg-gray">
        <div class="container text-center wow fadeIn">
            <h2>My Projects</h2>
            <hr class="colored">
            <p>Here are some projects that I've worked on in the past, click <strong>left/right</strong> arrow to see more (more projects on my <strong><a target="_blank" href="https://www.linkedin.com/in/xianghuihongbryan">LinkedIn Page</a></strong>).</p>
        </div>
    </section>

    <section class="portfolio-carousel wow fadeIn">
        <div class="item" style="background-image: url('<c:url value="/resources/img/creative/portfolio/flinders-street-station.jpg" />')">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 col-md-push-8">
                        <div class="project-details">
                            <img src="<c:url value="/resources/img/client-logos/monash-university-logo.png" />" class="img-responsive client-logo" alt="">
                            <span class="project-name">Melbourne Ethnicity Map</span>
                            <span class="project-description">Data visualization, map</span>
                            <hr class="colored">
                            <a target="_blank" href="http://monash.edu/research/city-science/MelbourneEthnicityMap/#map" class="btn btn-outline-light">View Details <i class="fa fa-long-arrow-right fa-fw"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item" style="background-image: url('<c:url value="/resources/img/creative/portfolio/tele-communication.jpg" />')">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 col-md-push-8">
                        <div class="project-details">
                            <img src="<c:url value="/resources/img/client-logos/nokia-logo.png" />" class="img-responsive client-logo" alt="">
                            <span class="project-name">Nokia BTS Site Manager</span>
                            <span class="project-description">Telecommunication, Nokia networks</span>
                            <hr class="colored">
                            <a target="_blank" href="http://networks.nokia.com/" class="btn btn-outline-light">View Details <i class="fa fa-long-arrow-right fa-fw"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item" style="background-image: url('<c:url value="/resources/img/creative/portfolio/online-shopping.jpg" />')">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 col-md-push-8">
                        <div class="project-details">
                            <img src="<c:url value="/resources/img/client-logos/hundsun-logo.jpg" />" class="img-responsive client-logo" alt="">
                            <span class="project-name">Jiangsu Post E-Mall</span>
                            <span class="project-description">online shopping, post, bank credit</span>
                            <hr class="colored">
                            <a target="_blank" href="http://www.11185.com.cn/" class="btn btn-outline-light">View Details <i class="fa fa-long-arrow-right fa-fw"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container wow fadeIn">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
                    <hr class="colored">
                    <p>I'd love to hear from you! Send me a message and we will be connected.</p>
                </div>
            </div>
            <br>
            <br>
            <br>
            <div class="container text-center">
                <div class="row">
                    <div class="col-md-4 contact-details">
                        <h4><i class="fa fa-phone"></i> Call</h4>
                        <p>Connect with me by LinkedIn button below or Email</p>
                    </div>
                    <div class="col-md-4 contact-details">
                        <h4><i class="fa fa-map-marker"></i> Visit</h4>
                        <p>Waverley Road, 
                            <br>Malvern East, 3145</p>
                    </div>
                    <div class="col-md-4 contact-details">
                        <h4><i class="fa fa-envelope"></i> Email</h4>
                        <p><a href="mailto:bryan.hong.1988@gmail.com">bryan.hong.1988@gmail.com</a>
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
                        <p class="small">&copy; 2015 Start Bootstrap by Bryan</p>
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

<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/highcharts-more.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<script>
(function ($) {
	
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
    }
    
    // handle lga layer event
    function handleLgaVicLayer(layer){
    	layer.setStyle({
            fillColor : '#ffffff',
            fillOpacity: 0,
            color:'#555',
            weight:1,
            opacity:.5
          });
    	layer.on({
            click : selectLGA
          });
        /* var selectedCityCouncil = layer.feature.properties.gaz_lga;
        var selectedCityCouncilIndex = cityCouncilArr.indexOf(selectedCityCouncil);
        if(selectedCityCouncilIndex >= 0){
            var totalScore = cityCouncilDataSet[cityCouncilIndex[selectedCityCouncilIndex]].totalScore;
            layer.setStyle({
              fillColor : getCityCouncilColor(totalScore),
              fillOpacity: 1,
              color:'#555',
              weight:1,
              opacity:.5,
              className:"lgaVicCityCouncils",
              dashArray:cityCouncilIndex[selectedCityCouncilIndex]
            });

            layer.on({
              click : selectCityCouncil
            });
        }else{
            layer.setStyle({
              fillColor : '#ffffff',
              fillOpacity: 1,
              color:'#555',
              weight:1,
              opacity:.5
            });
        } */
    }
    
    // selected LGA colors, lga1 and lga2 color
    var selectedLGAColors = ["#7cb5ec","#FF0000"];
    
    // When click lga area on topojson area, color the area
    // and get the crime data from backend
    function selectLGA(){
    	this.bringToFront();
    	var selectedLGA = this.feature.properties.gaz_lga;
    	
    	
    	/* if(selectedLGAColors.indexOf(this.options.fillColor) >= 0){
    		return;
    	} */
    	
    	if(selectedLGAButtonIndex == 1){
    		if(selectedLGAColors[1] == this._path.attributes[6].value){
    			return;
    		}
    		$( "path[fill='"+selectedLGAColors[0]+"']" ).attr("fill","#ffffff").attr("stroke-opacity","0.5").attr("stroke-width","1");
    		this.setStyle({
                fillColor:selectedLGAColors[0],
                fillOpacity: 0.3,
                weight:2,
                opacity: 1
            });
    		
    		getSelectedLGACrime(selectedLGA, selectedLGAButtonIndex);
    		
    	}else if(selectedLGAButtonIndex == 2){
    		if(selectedLGAColors[0] == this._path.attributes[6].value){
    			return;
    		}
    		$( "path[fill='"+selectedLGAColors[1]+"']" ).attr("fill","#ffffff").attr("stroke-opacity","0.5").attr("stroke-width","1");
    		this.setStyle({
                fillColor:selectedLGAColors[1],
                fillOpacity: 0.3,
                weight:2,
                opacity: 1
            });
    		
    		getSelectedLGACrime(selectedLGA, selectedLGAButtonIndex);
    		
    	}
    }
    
    // lga data set and lga crime count data set
    var lgaDataSet = [];
    var lgaCrimeCountSet = [];
    
    // AJAX invoke to get lga crime data from backend 
    function getSelectedLGACrime(selectedLGA, selectedLGAButtonIndex){
    	selectedLGA = selectedLGA.replace("SHIRE", "").replace("CITY", "").trim();
    	$.getJSON("getSelectedLGACrime", { selectedLGA: selectedLGA }, function(results) {
    		
    		lgaDataSet[selectedLGAButtonIndex-1] = results;
    		
    		var crimeMajorArr = ['A','B','C','D','E','F'];
    		var crimeCountArr = [0,0,0,0,0,0];
    		
    		if(results.length == 0){
    			// set '-' to lga table
    			crimeCountArr = ["-","-","-","-","-","-"];
    			setSelectedLGATable(selectedLGA,crimeMajorArr,crimeCountArr,selectedLGAButtonIndex);
    			
    			crimeCountArr = [0,0,0,0,0,0];
    			lgaCrimeCountSet[selectedLGAButtonIndex-1] = crimeCountArr;
    			updateSpiderChart(selectedLGA, selectedLGAButtonIndex);
    			return;
    		}else{
    		
	    		for(var i in results){
	    			var cbl = results[i];
	    			if(cbl.csaOffenceDivision == crimeMajorArr[0]){
	    				crimeCountArr[0] = crimeCountArr[0] + cbl.offenceCount;
	    			}else if(cbl.csaOffenceDivision == crimeMajorArr[1]){
	    				crimeCountArr[1] = crimeCountArr[1] + cbl.offenceCount;
	    			}else if(cbl.csaOffenceDivision == crimeMajorArr[2]){
	    				crimeCountArr[2] = crimeCountArr[2] + cbl.offenceCount;
	    			}else if(cbl.csaOffenceDivision == crimeMajorArr[3]){
	    				crimeCountArr[3] = crimeCountArr[3] + cbl.offenceCount;
	    			}else if(cbl.csaOffenceDivision == crimeMajorArr[4]){
	    				crimeCountArr[4] = crimeCountArr[4] + cbl.offenceCount;
	    			}else if(cbl.csaOffenceDivision == crimeMajorArr[5]){
	    				crimeCountArr[5] = crimeCountArr[5] + cbl.offenceCount;
	    			}
	    		}
	    		
	    		lgaCrimeCountSet[selectedLGAButtonIndex-1] = crimeCountArr;
	    		setSelectedLGATable(selectedLGA,crimeMajorArr,crimeCountArr,selectedLGAButtonIndex);
	    		
	    		for(var i=0;i< crimeCountArr.length;i++){
	    			console.log(i);
	    			var crimeCount = crimeCountArr[i];
	    			var crimeCountPer100000 = crimeCount/(results[0].lgaerp) * 100000;
	    			crimeCountArr[i] = Math.round(crimeCountPer100000);
	    		}
	    		
	    		updateSpiderChart(selectedLGA, selectedLGAButtonIndex);
    		}
        });
    }
    
    // after the crime data updated in table, then update the spider chart
    function updateSpiderChart(selectedLGA, selectedLGAButtonIndex){
    	
    	var spider = $('#spiderChart').highcharts();
    	
    	if(selectedLGAButtonIndex == 1){
    		$(".highcharts-legend-item:first").find("text").html(selectedLGA);
    	}else if(selectedLGAButtonIndex == 2){
    		$(".highcharts-legend-item:last").find("text").html(selectedLGA);
    	}
    	
    	
    	if(spider.series.length < selectedLGAButtonIndex){
    		var spiderData = {
    	            type: 'line',
    	            fillOpacity: 1,
    	            color: selectedLGAColors[selectedLGAButtonIndex-1],
    	            name: selectedLGA,
    	            data: lgaCrimeCountSet[selectedLGAButtonIndex-1]
   	        }
    		spider.addSeries(spiderData);
    	}else {
    		spider.series[selectedLGAButtonIndex-1].setData(lgaCrimeCountSet[selectedLGAButtonIndex-1]);
        	spider.series[selectedLGAButtonIndex-1].name = selectedLGA;
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
    
    // change the tip text when user click LGA1 or LGA2 button
    $(".lga-select-tips").click(function(){
		if($(this).hasClass("first-lga-tip")){
			$(this).css({
				"background":"#006872",
				"color":"white"
			});
			$(".second-lga-tip").css({
				"background":"white",
				"color":"black"
			});
			selectedLGAButtonIndex = 1;
			$("#map1-legend-tips").html("Tips: Click map to select 1st Local Government Areas");
		}else if($(this).hasClass("second-lga-tip")){
			$(this).css({
				"background":"#006872",
				"color":"white"
			});
			$(".first-lga-tip").css({
				"background":"white",
				"color":"black"
			});
			selectedLGAButtonIndex = 2;
			$("#map1-legend-tips").html("Tips: Click map to select 2nd Local Government Areas");
		}
    });
    
    // spider chart options
    var spiderOptions = {
            chart: {
                height: 600,
                polar: true,
                type: 'line'
            },

            title: {
                text: 'Crime Index'
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
                categories: ['A Crimes against the person','B Property and deception offences',
                             'C Drug offences','D Public order and security offences',
                             'E Justice procedures offences','F Other offences'],
                tickmarkPlacement: 'on',
                lineWidth: 0
            },

            yAxis: {
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                min: 0
            },

            tooltip: {
                shared: true,
                pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,0f}</b> offences per 100,000 population<br/>'
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
                layout: 'vertical'
            },

            series: [{
                type: 'line',
                fillOpacity: 1,
                color: '#7cb5ec',
                name: 'LGA1',
                data: [5, 5, 5, 5, 5, 5]
            }]

        };
    $('#spiderChart').highcharts(spiderOptions);

})(jQuery);
</script>
  
</body>
</html>

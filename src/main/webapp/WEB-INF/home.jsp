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
                        <a class="page-scroll" href="#visualization">2015 Safety Visualization</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#latestLgaRanking">2015 Safety Ranking</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#yearlyCompare">Yearly Compare</a>
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

	<section id="about" class="services" style="padding-bottom: 300px;">
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
                            <h3 class="media-heading"><a class="page-scroll" href="#visualization">Safety Analysis</a></h3>
                            <ul>
                                <li>Safety Ranking</li>
                                <li>Actual Data</li>
                                <li>Relative Data</li>
                                <li>Area comparison</li>
                                <li>Analytical Drill Down</li>
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
                            <h3 class="media-heading"><a class="page-scroll" href="#latestLgaRanking">2015 Safety Ranking</a></h3>
                            <ul>
                                <li>2015 Ranking</li>
                                <li>2015 Ranking</li>

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

    <section id="visualization" class="bg-gray" style="padding-top: 8px;">
        <div class="container" style="width:1240px;">
            <div class="row content-row">
                <div class="col-xs-6 section-border wow fadeIn" data-wow-delay=".2s" style="margin-left:0px;min-height:640px;width:700px;">
                	<div class="row">
                		<div id="map1" class="map" style="width: auto;height: 390px;"></div>
                		
                		<div id="level1Dropdown" class="dropdown" style="z-index: 999;position: absolute;top: 0px;left: 545px;">
						  <button style="margin-top: 13px;border-radius: 4px;padding: 6px 12px;text-transform: none;font-weight: 400;" 
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
                		<div class="second-lga-tip lga-select-tips" style="display: block;">
                			<button type="button" class="btn btn-success">2nd area</button>
               			</div>
                	</div>
                	<div class="row" id="compare-table-div">
                		<table id="compare-table" data-select-item-name="radioName1" data-cache="false"></table>
                	</div>
                </div>
                <div class="col-xs-6 section-border wow fadeIn" id="spiderDiv" data-wow-delay=".4s" style="min-height:707px;width:530px;">
					<div id="spiderChart" ></div>
					<div id="explainText"  style="position: absolute;margin-top: -40px;">
						<ul id="explainTextUl" style="list-style-type:circle">
						  <li>Area is <strong>Safer</strong> with <strong>Higher Score</strong>, Ranking Score for <strong>6</strong> factors</li>
						</ul>
					</div>
                </div>
            </div>
        </div>
        
		  <!-- Modal -->
		  <div class="modal fade" id="trendModal" role="dialog">
		    <div class="modal-dialog" style="min-width: 1000px;">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title" style="font-family: inherit;text-transform: none;font-weight: 700;text-align: center;">2011-2015 Offence + Accident Trend</h4>
		        </div>
		        <div class="modal-body">
		        	<div class="row">
			          <div id="crimeTrend1" class="col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
			          <div id="crashTrend1" class="col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
		          	</div>
		        	<div class="row" style="margin-top: 20px;">
			          <div id="crimeTrend2" class="col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
			          <div id="crashTrend2" class="col-md-6" style="min-width: 300px; height: 240px; margin: 0 auto"></div>
		          	</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>
    </section>
	
	<section id="latestLgaRanking" style="padding-top:20px;">
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
				<div id="latest-ranking-histogram" class="latest-ranking-histogram">
				</div>
			</div>
        </div>
    </section>
    
    <section id="yearlyCompare" class="bg-gray" style="padding-top:20px;">
        <div class="container text-center wow fadeIn">
            <h2>Yearly compare map</h2>
            <hr class="colored">
            <p>
            	Two years compare for offence and/or accident, area is Safer with Higher Score
            </p>
            <div>
				<div id="map-container">
					<div id="beforeMap" style="height:600px;width:100%;"></div>
					<div id="afterMap" style="height:600px;width:100%;"></div>
				</div>
				<div id="compare-map-tooltip" class="compare-map-tooltip" style="margin-top: -680px;z-index: 1000;">
				</div>
				<div id="compareDropdown" class="dropdown" style="z-index: 999;position:absolute;margin-top: -600px;margin-left: 60px;">
				  <button style="margin-top: 13px;border-radius: 4px;padding: 6px 12px;text-transform: none;font-weight: 400;border-color: red;" 
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
 
<script>
(function ($) {

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
        	}); 
    		
    		changeSpider(dataSource, rowTitleData, lga1Header, lga2Header);
        	
        }else if(dataSource == "level1Crime"){
        	$("#spiderDiv").css("min-height","668px");
        	
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
        	});
        	
        	var rowTitleData = ['C Drug offences','D Public order and security offences',
    		                    'E Justice procedures offences','F Other offences',
    		                    'A Crimes against the person','B Property and deception offences'];
        	changeSpider(dataSource, rowTitleData, lga1Header, lga2Header);
        	
        }else if(dataSource == "level1Accident"){
        	$("#spiderDiv").css('min-height','785px');
        	
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
 					(("First LGA"==lga1Header)&&("Second LGA"==lga2Header)?'':'<li><a id="generateTrendLink" href="javascript:void(0);">Click to generate 2011-2015 offence+accident trend</a></li>')
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
    	//layer.on({
        //  });
    }
    
 	var histogramChart;
 	function initHistogram(){
 		$.getJSON("getLgaHistogramData", function(results) {
 			console.log(results);
 			
 			var histogramOptionsOnRankingMap = histogramOptions({ onHover: selectHistogramAndLga });
 	        for(var i=0;i<results.length;i++){
 	        	histogramOptionsOnRankingMap.series[0].data.push({"name": results[i].lgaName, "id": results[i].lgaName, "y":results[i].lgaTotalScore});
 	        }
 	       	histogramOptionsOnRankingMap.plotOptions.series.cursor = 'pointer';
 	      	histogramOptionsOnRankingMap.plotOptions.series.pointPadding = 0.1;
 	     	histogramOptionsOnRankingMap.chart.renderTo = 'latest-ranking-histogram';
 	   		histogramOptionsOnRankingMap.exporting = false;

 	   		histogramChart = new Highcharts.Chart( histogramOptionsOnRankingMap );
 	        
 	   		// select top 1 lga SOUTHERN GRAMPIANS as default
 	   		selectHistogramAndLga("SOUTHERN GRAMPIANS");
    	}); 
 	}
 	
 	function selectHistogramAndLga(lgaName){
 		$("path[stroke-dasharray^='latest-rank-']").attr("fill","#ffffff").attr("fill-opacity","0");   
		if (!histogramChart.get(lgaName).selected) {
			histogramChart.get(lgaName).select();
        }
		
		
		$("path[stroke-dasharray='latest-rank-"+lgaName+"']").attr("fill","red").attr("fill-opacity","0.6");   
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
    
    var beforeMapYear = 2014;
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

            div.innerHTML = "<strong>"+legendTitle+"</strong><br>"+labels.join('<br>');
            return div;
        };
        
        legend.addTo(after);
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
    	if(this._path.attributes[10].value.startsWith('beforeMap')){
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
    		/* lgaAvgScore: 7
    		lgaCrashCountByPop: 151
    		lgaCrashScore: 10
    		lgaCrimeCountByPop: 7743
    		lgaCrimeScore: 4
    		lgaId: 1
    		lgaName: "BANYULE"
    		lgaPop: 125503
    		year: 2013 */
    	}else if(this._path.attributes[10].value.startsWith('afterMap')){
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
 		
 		if(button[0].id.startsWith("before")){
 			$(".beforeButtons").empty();
 			$(".beforeButtons").html(
 					'<button type="button" id="before2011" style="left:-353px" class="btn '+((button[0].innerHTML=="2011")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2011</button>'+
					'<button type="button" id="before2012" style="left:-353px" class="btn '+((button[0].innerHTML=="2012")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2012</button>'+
					'<button type="button" id="before2013" style="left:-353px" class="btn '+((button[0].innerHTML=="2013")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2013</button>'+
					'<button type="button" id="before2014" style="left:-353px" class="btn '+((button[0].innerHTML=="2014")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2014</button>'+
					'<button type="button" id="before2015" style="left:-353px" class="btn '+((button[0].innerHTML=="2015")?'btn-primary':'btn-default')+' btn-arrow-left year-selection">2015</button>');
 		}else if(button[0].id.startsWith("after")){
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
 	 		if(button[0].id.startsWith("before")){
 	 			beforeMapYear = $(this)[0].innerHTML;
	 	    	doColorCompareMapsAndAddLegend("beforeMap", beforeMapYear);
 	 		}else if(button[0].id.startsWith("after")){
 	 			afterMapYear = $(this)[0].innerHTML;
	 	    	doColorCompareMapsAndAddLegend("afterMap", afterMapYear);
 	 		}
 	 		
 	 	});
 	}
 	
 	function changeYearInCompareMap(button){
		if(button[0].id.startsWith("before")){
			$(".beforeButtons").empty();
			$(".beforeButtons").html('<button type="button" id="beforeYearSelected" class="btn btn-default btn-arrow-left">'+button[0].innerHTML+'</button>');
 		}else if(button[0].id.startsWith("after")){
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
        
        var lgaName = this.feature.properties.gaz_lga.replace("SHIRE", "").replace("CITY", "").replace("RURAL", "").trim();;
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
		$("path[stroke-dasharray='mouseover']").attr("fill","#ffffff").attr("stroke-opacity","0.5").attr("stroke-width","1")
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
                value +
                '</div>';
    }
    
 	// set lga2 column color
    function lga2Formatter(value) {
        return '<div  style="color: ' + selectedLGAColors[1] + '">' +
                value +
                '</div>';
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
    			$("#compare-table tbody tr:nth-child("+(i+1)+") td:eq("+selectedLGAButtonIndex+") div").html(results[0][i]);
    		}
    		updateSpiderChart(selectedLGA, selectedLGAButtonIndex, results[1], dataSource);
    		return;
        });
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
		              color: '#ff9600',
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
		          jQuery.doTimeout( 'hover', 200, onHover, this.name);
		        },
		        mouseOut: function() {
		          jQuery.doTimeout( 'hover');
		        },
		      }
		    };
		  }
		  return histOptions;
		}
		
		/* $.getJSON("getVicAvgCrimeData", function(results) {
			var vicAvgSet = [];
			for (var i = 0; i < results.length; i++) {
				vicAvgSet.push(results[i][0]);
			}
			var spider = $('#spiderChart').highcharts();
			spider.series[0].setData(vicAvgSet);
		}); */
	})(jQuery);
</script>
  
</body>
</html>

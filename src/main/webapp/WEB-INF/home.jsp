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
                                <li>As <strong>Research Assistant Developer</strong></li>
                                <li>Research & Develop Libraries</li>
                                <li>Data Visualization</li>
                                <li>Creating visualization charts</li>
                                <li>Creating maps</li>
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
                            <h3 class="media-heading">Nokia Networks</h3>
                            <ul>
                                <li>As <strong>Java R&D Engineer</strong></li>
                                <li>Develop & maintain</li>
                                <li>Implement & building product</li>
                                <li>Interface within departments</li>
                                <li>FC for product line</li>
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
                            <h3 class="media-heading">Hundsun Tech.</h3>
                            <ul>
                                <li>As <strong>Java Software Engineer</strong></li>
                                <li>Develop & maintain</li>
                                <li>Implement & building product</li>
                                <li>Extend & design new features</li>
                                <li>Design & develop</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="visualization" class="bg-gray">
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-lg-12 wow fadeIn">
                    <h1>This is what I do</h1>
                    <p>I am proficient in JavaSE development, J2EE & web development, data visualization with JavaScript</p>
                    <hr class="colored">
                </div>
            </div>
            <div class="row text-center content-row">
                <div class="col-md-3 col-sm-6 wow fadeIn" data-wow-delay=".2s">
                    <div class="about-content">
                        <i class="fa fa-laptop fa-4x"></i>
                        <h3>JavaSE</h3>
                        <p>3+ year industry experience, several months of Android experience</p>
                    </div>
                </div>   
                <div class="col-md-3 col-sm-6 wow fadeIn" data-wow-delay=".4s">
                    <div class="about-content">
                        <i class="fa fa-institution fa-4x"></i>
                        <h3>J2EE</h3>
                        <p>Almost 2 year industry experience, including Spring, Hibernate, EJB, JPA, Struts, JSP, Servlet, REST web services, Apache, Tomcat, AJAX, Oracle, MySQL</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 wow fadeIn" data-wow-delay=".6s">
                    <div class="about-content">
                        <i class="fa fa-code fa-4x"></i>
                        <h3>Web</h3>
                        <p>Almost 2 year industry experience, including HTML5, JavaScript, JQuery, JSP, JSTL, Velocity, CSS</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 wow fadeIn" data-wow-delay=".8s">
                    <div class="about-content">
                        <i class="fa fa-bar-chart fa-4x"></i>
                        <h3>Visualization</h3>
                        <p>Data Visualization by D3.js, JavaScript, JQuery, WebGL, Three.js, Tween.js, see <a target="_blank" href="http://www.monash.edu/research/city-science/#visualization">Monash City Science Group work</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

  <<%-- h1>All Persons</h1>
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
  <p></p>
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
  
</body>
</html>
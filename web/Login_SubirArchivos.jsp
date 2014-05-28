
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ipn.mx.archivos.manipulacionArchivos"%>
<%@page import="com.ipn.Session.ManejadorSesiones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
  <head>
    <title>AirPadlook</title>
    <meta name="keywords" content="smoothy, responsive bootstrap, one page, green, white, free html5 template, templatemo" />
	<meta name="description" content="Smoothy is free HTML5 template for multi-purpose that is based on responsive bootstrap framework." />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/templatemo_style.css" rel="stylesheet">
   	<link rel="stylesheet" href="css/templatemo_misc.css">

    <link href="css/circle.css" rel="stylesheet">
    <link href="css/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/nivo-slider.css">
    <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,600' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/JavaScript" src="js/slimbox2.js"></script> 

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/ddsmoothmenu.js"></script>

<!--/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

-->


<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_flicker", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>


    <%
            ManejadorSesiones sesion = new ManejadorSesiones();
            String nombreUsuario="";
            try{
            nombreUsuario=sesion.getNombre(request);
            }catch(Exception e){e.printStackTrace();}
    %>
    
  </head>
  <body>
    <header>
    <!-- start menu -->
    <div id="templatemo_home">
    	<div class="templatemo_top">
      <div class="container templatemo_container">
        <div class="row">
          <div class="col-sm-3 col-md-3">
            <div class="logo">
              <a rel="nofollow" href="http://www.templatemo.com/preview/templatemo_396_smoothy"><img src="images/templatemo_logo.png" alt="logo"></a>
            </div>
          </div>
          <div class="col-sm-9 col-md-9 templatemo_col9">
          	<div id="top-menu">
            <nav class="mainMenu">
              <ul class="nav">
                                            
                                            
                                             <li><a class="menu" href="#templatemo_portfolio">Archivos</a></li>
                                            <!--
                                            <li><a class="menu" href="#templatemo_about">Sobre nosotros</a></li>
                                            <li><a class="menu" href="#templatemo_portfolio">Portafolio</a></li>
                                            -->
                                            <li><a class="menu" href="#subirarchivos">Subir Archivo</a></li>
                                            <li><a class="menu" href="perfil.jsp">Mi perfil</a></li>
                                            <li><a class="menu" href="index.html">Logout</a></li>
                                            
                                            
                                        </ul>
            </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    <div class="clear"></div>
    <!-- end menu -->
      	 
  </header>
  	<div class="templatemo_lightgrey_about" id="templatemo_about">
	<div class="container">
    	<div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">
        	<div class="item project-post">
						<div class="templatemo_about_box">
                        	<div class="square_coner">
                     		   <span class="texts-a"><i class="fa fa-bell-o"></i></span>
                      	  </div>                          
                     	   Diseño de interfaz interactivo</div>
						<div class="col-xs-12 col-sm-6 col-md-3 hover-box" >
							<div class="inner-hover-box">								
								<p>La interfaz esta diseñada para ser amigable con los usuarios, ademas de facilitar de manera considerable el almacenamiento y administracion de archivos.</p>
							</div>
						</div>
					</div> 	
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">
        	<div class="item project-post">
						<div class="templatemo_about_box">
                        	<div class="square_coner">
                     		   <span class="texts-a"><i class="fa fa-tablet"></i></span>
                      	  </div>
                     	   Notificaciones directas</div>
						<div class="col-xs-6 col-sm-6 col-md-3 hover-box" >
							<div class="inner-hover-box">								
								<p>Envio de notificaciones a tu correo electronico para informar sobre algun problema, aviso importante o promocion disponible</p>
							</div>
						</div>
					</div> 	
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12 templatemo_margintop10">
        	<div class="item project-post">
						<div class="templatemo_about_box">
                        	<div class="square_coner">
                     		   <span class="texts-a"><i class="fa fa-lock"></i></span>
                      	  </div>
                     	   Seguridad Web</div>
						<div class="col-xs-6 col-sm-6 col-md-3 hover-box" >
							<div class="inner-hover-box">								
								<p>Tus archivos nunca pudieron estar mas seguros. Solo tu tendras acceso a ellos, a no ser que desees compartirlos con algun conocido.</p>
							</div>
						</div>
					</div> 	
        </div>
        <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12 templatemo_margintop10">
        	<div class="item project-post">
						<div class="templatemo_about_box">
                        	<div class="square_coner">
                     		   <span class="texts-a"><i class="fa fa-rocket"></i></span>
                      	  </div>
                     	   Servicio Rapido</div>
						<div class="col-xs-6 col-sm-6 col-md-3 hover-box" >
							<div class="inner-hover-box">								
								<p>Solo necesitas iniciar sesion, y listo!!!... Tus archivos estaran disponibles a cualquier hora.</p>
							</div>
						</div>
					</div> 	
        </div>
    </div>
    </div>

    <div class="clear"></div>
    <div class="clear"></div>
    
    
    <!--Our Portfolio Start-->
    <div class="templatemo_portfolio" id="templatemo_portfolio">
        
        <h2>Bienvenido <%=nombreUsuario%></h2>
            <p>Tus archivos disponibles y faciles de compartir...</p>
           	
            <div class="container">
           	  <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/1.jpg" alt="portfolio 1">
								<div class="overlay-p">
									<a href="images/portfolio/1.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Blue Sky</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
              <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/2.jpg" alt="portfolio 2">
								<div class="overlay-p">
									<a href="images/portfolio/2.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Forest</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
              <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/3.jpg" alt="portfolio 3">
								<div class="overlay-p">
									<a href="images/portfolio/3.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Forest</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
              <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/4.jpg" alt="portfolio 4">
								<div class="overlay-p">
									<a href="images/portfolio/4.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Black and White</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
             </div>
               <div class="clear"></div>
              <div class="container">
              		<div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/5.jpg" alt="portfolio 5">
								<div class="overlay-p">
									<a href="images/portfolio/5.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Rotary</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
              <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/6.jpg" alt="portfolio 6">
								<div class="overlay-p">
									<a href="images/portfolio/6.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Rotary</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
              <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/7.jpg" alt="portfolio 7">
								<div class="overlay-p">
									<a href="images/portfolio/7.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Blue Sky</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
              <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb">
								<img src="images/portfolio/8.jpg" alt="portfolio 8">
								<div class="overlay-p">
									<a href="images/portfolio/8.jpg" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>Black and White</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
						</div>
      
              </div>
              
              </div>
            <a class="btn btn-large btn-primary" href="#">View More</a>
    </div>
    <!--Our Portfolio End-->
    
    
    <div class="clear"></div>
    
    <!--Our Partner End-->
    
    <!--Our Client Start-->
    <div class="templatemo_reasonbg" id="subirarchivos">
    	<h2>Sube tus archivos</h2>
        <br>
        <div class="container">
        	<div class="col-xs-11 templatemo_col12 templatemo_clientwrapper">
                    
                     <h:form enctype="multipart/form-data">
                <h:panelGrid columns="2">
               
                <h:inputFile value="#{fileUploadFormBean.fileUpload}"  id="fileUpload" /> 
                <input type="submit" name="Subir" value="Subir" class="btn btn-primary">
                </h:panelGrid>
                <br>
                <h:panelGrid rendered="#{not empty(fileUploadFormBean.fileUpload)}" columns="2"  >
                
                <h:outputText value="fileName:" />
                <h:outputText value="#{fileUploadFormBean.fileUpload.submittedFileName}" />
                
                <h:outputText value="contentType:" />
                <h:outputText value="#{fileUploadFormBean.fileUpload.contentType}" />
                
                <h:outputText value="size:" />
                <h:outputText value="#{fileUploadFormBean.fileUpload.size}" />
                
                <h:outputText value="Path:" />
                <h:outputText value="#{fileUploadFormBean.fileUpload.headerNames}" />
                
                <h:outputText value="Se ha cargado correctamente!!!" />
                <h:outputText value="#{fileUploadFormBean.uno()}" />
                </h:panelGrid>
                </h:form>
                    
            	
                
          </div>
            <div class="clear"></div>
        </div>
        
	</div>
     <div class="clear"></div>
    <!--Our Client End-->
    
    
    <!--Footer Start-->
    <div class="templatemo_footer">
    	<div class="container">
       	  <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">
            	<h2>About Smoothy</h2>
                <p>Etiam faucibus turpis id ipsum egestas porta. Cras in aliquet purus, ac varius turpis. Proin nibh mauris, lacinia at tincidunt egestas, tincidunt eleifend urna. Aliquam erat volutpat.</p>
          </div>
            <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">
            	<h2>Services</h2>
                <ul>
                  <li>Integer condimentum</li>
                  <li>Quisque eget mi felis</li>
                  <li>Mauris placerat lacinia</li>
                  <li>Cras molestie imperdiet</li>
                  <li>Duis vel consectetur</li>
                </ul>
                <div class="clear"></div>
                <div class="templatemo_morelink"><a href="#">and more... </a></div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">
            	<h2>Flicker</h2>
					<div id="templatemo_flicker" >
          <ul class="nobullet footer_gallery">
                <li><a href="images/flicker/1.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s1.jpg" alt="image 1" /></a></li>
                <li><a href="images/flicker/2.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s2.jpg" alt="image 2" /></a></li>
                <li><a href="images/flicker/3.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s3.jpg" alt="image 3" /></a></li>
                <li><a href="images/flicker/4.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s4.jpg" alt="image 4" /></a></li>
                <li><a href="images/flicker/5.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s5.jpg" alt="image 5" /></a></li>
          	    <li><a href="images/flicker/6.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s6.jpg" alt="image 6" /></a></li>
                <li><a href="images/flicker/7.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s7.jpg" alt="image 7" /></a></li>
                <li><a href="images/flicker/8.jpg" data-rel="lightbox[gallery]"><img src="images/flicker/s8.jpg" alt="image 8" /></a></li>
            </ul>
            <br style="clear: left" />
        </div>
          </div>
            <div class="col-xs-6 col-sm-6 col-md-3 templatemo_col12">
            <h2>Contact</h2>
            	<span class="left col-xs-1 fa fa-map-marker"></span>
                <span class="right col-xs-11">120-240 Nam bibendum consectetur diam et fringilla</span>
                <div class="clear height10"></div>
                <span class="left col-xs-1 fa fa-phone"></span>
                <span class="right col-xs-11">010-020-0680</span>
                <div class="clear height10"></div>
                <span class="left col-xs-1 fa fa-envelope"></span>
                <span class="right col-xs-11">contact@company.com</span>
                <div class="clear height10"></div>
                <span class="left col-xs-1 fa fa-globe"></span>
                <span class="right col-xs-11">www.templatemo.com</span>
                <div class="clear"></div>
            </div>
        </div>
    </div>
   <!--Footer End-->
	<!-- Bottom Start -->
    <div class="templatemo_bottom">
    	<div class="container">
        	<div class="row">
            	<div class="left">Copyright © 2014 <a href="#">Your Company Name</a> - <a href="#">HTML5 Template</a> by <a href="http://www.templatemo.com/preview/templatemo_396_smoothy">Smoothy</a></div>
                <div class="right">
                	<a href="#"><div class="fa fa-rss soc"></div></a>
                    <a href="#"><div class="fa fa-twitter soc"></div></a>
                    <a href="#"><div class="fa fa-linkedin soc"></div></a>
                    <a href="#"><div class="fa fa-dribbble soc"></div></a>
                    <a href="#"><div class="fa fa-facebook soc"></div></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Bottom End -->
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://code.jquery.com/jquery.js"></script> -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cycle2.min.js"></script>
    <script src="js/jquery.cycle2.carousel.min.js"></script>
    <script src="js/jquery.nivo.slider.pack.js"></script>
    <script>$.fn.cycle.defaults.autoSelector = '.slideshow';</script>
    <script type="text/javascript">
      $(function(){
          var default_view = 'grid';
          if($.cookie('view') !== 'undefined'){
              $.cookie('view', default_view, { expires: 7, path: '/' });
          } 
          function get_grid(){
              $('.list').removeClass('list-active');
              $('.grid').addClass('grid-active');
              $('.prod-cnt').animate({opacity:0},function(){
                  $('.prod-cnt').removeClass('dbox-list');
                  $('.prod-cnt').addClass('dbox');
                  $('.prod-cnt').stop().animate({opacity:1});
              });
          }
          function get_list(){
              $('.grid').removeClass('grid-active');
              $('.list').addClass('list-active');
              $('.prod-cnt').animate({opacity:0},function(){
                  $('.prod-cnt').removeClass('dbox');
                  $('.prod-cnt').addClass('dbox-list');
                  $('.prod-cnt').stop().animate({opacity:1});
              });
          }
          if($.cookie('view') == 'list'){ 
              $('.grid').removeClass('grid-active');
              $('.list').addClass('list-active');
              $('.prod-cnt').animate({opacity:0});
              $('.prod-cnt').removeClass('dbox');
              $('.prod-cnt').addClass('dbox-list');
              $('.prod-cnt').stop().animate({opacity:1}); 
          } 

          if($.cookie('view') == 'grid'){ 
              $('.list').removeClass('list-active');
              $('.grid').addClass('grid-active');
              $('.prod-cnt').animate({opacity:0});
                  $('.prod-cnt').removeClass('dboxlist');
                  $('.prod-cnt').addClass('dbox');
                  $('.prod-cnt').stop().animate({opacity:1});
          }

          $('#list').click(function(){   
              $.cookie('view', 'list'); 
              get_list()
          });

          $('#grid').click(function(){ 
              $.cookie('view', 'grid'); 
              get_grid();
          });

          /* filter */
          $('.menuSwitch ul li').click(function(){
              var CategoryID = $(this).attr('category');
              $('.menuSwitch ul li').removeClass('cat-active');
              $(this).addClass('cat-active');
              
              $('.prod-cnt').each(function(){
                  if(($(this).hasClass(CategoryID)) == false){
                     $(this).css({'display':'none'});
                  };
              });
              $('.'+CategoryID).fadeIn(); 
              
          });
      });
    </script>
	<script src="js/jquery.singlePageNav.js"></script>
	
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider({
          prevText: '',
          nextText: '',
          controlNav: false,
        });
    });
    </script>
    <script>
      $(document).ready(function(){

        // hide #back-top first
        $("#back-top").hide();
        
        // fade in #back-top
        $(function () {
          $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
              $('#back-top').fadeIn();
            } else {
              $('#back-top').fadeOut();
            }
          });

          // scroll body to 0px on click
          $('#back-top a').click(function () {
            $('body,html').animate({
              scrollTop: 0
            }, 800);
            return false;
          });
        });

      });
      </script>
      <script type="text/javascript">
      <!--
          function toggle_visibility(id) {
             var e = document.getElementById(id);
             if(e.style.display == 'block'){
                e.style.display = 'none';
                $('#togg').text('show footer');
            }
             else {
                e.style.display = 'block';
                $('#togg').text('hide footer');
            }
          }
      //-->
      </script>
      <script type="text/javascript" src="js/lib/jquery.mousewheel-3.0.6.pack.js"></script>

      <script type="text/javascript">
      $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
          if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
              $('html,body').animate({
                scrollTop: target.offset().top
              }, 1000);
              return false;
            }
          }
        });
      });
      </script>
      <script src="js/stickUp.min.js" type="text/javascript"></script>
      <script type="text/javascript">
        //initiating jQuery
        jQuery(function($) {
          $(document).ready( function() {
            //enabling stickUp on the '.navbar-wrapper' class
            $('.mWrapper').stickUp();
          });
        });
      </script>
      <script>
     $('a.menu').click(function(){
    $('a.menu').removeClass("active");
    $(this).addClass("active");
	});
      </script>
      
      <script> <!--scroll to specific id when click on menu-->
      	 // Cache selectors
var lastId,
    topMenu = $("#top-menu"),
    topMenuHeight = topMenu.outerHeight()+15,
    // All list items
    menuItems = topMenu.find("a"),
    // Anchors corresponding to menu items
    scrollItems = menuItems.map(function(){
      var item = $($(this).attr("href"));
      if (item.length) { return item; }
    });

// Bind click handler to menu items
// so we can get a fancy scroll animation
menuItems.click(function(e){
  var href = $(this).attr("href"),
      offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+1;
  $('html, body').stop().animate({ 
      scrollTop: offsetTop
  }, 300);
  e.preventDefault();
});

// Bind to scroll
$(window).scroll(function(){
   // Get container scroll position
   var fromTop = $(this).scrollTop()+topMenuHeight;
   
   // Get id of current scroll item
   var cur = scrollItems.map(function(){
     if ($(this).offset().top < fromTop)
       return this;
   });
   // Get the id of the current element
   cur = cur[cur.length-1];
   var id = cur && cur.length ? cur[0].id : "";
   
   if (lastId !== id) {
       lastId = id;
       // Set/remove active class
       menuItems
         .parent().removeClass("active")
         .end().filter("[href=#"+id+"]").parent().addClass("active");
   }                   
});
      </script>
</body>
</html>
</f:view>
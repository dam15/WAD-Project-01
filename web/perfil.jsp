            <%
               /* File[] direc = File.listRoots();
                int j;
                for (j = 0; j < direc.length; j++) {
                    System.out.println(direc[j]);
                }
                
                
                File ruta = new File("archivos");
                if(ruta.isDirectory()){
                    System.out.println("Si");
                }
                else{
                System.out.println("no");
                }*/
            %>

    <%@page import="com.ipn.Session.ManejadorSesiones"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<!-- 
    Free Responsive Template by templatemo
    http://www.templatemo.com
-->
<html>
  <head>
    <title><bean:message key="index.title"/></title>
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
        ManejadorSesiones sesion= new ManejadorSesiones();
        String nombre="";
        String paterno="";
        String materno="";
        String email="";
        try{
            nombre=sesion.getNombre(request);
            paterno=sesion.getPaterno(request);
            materno=sesion.getMaterno(request);
            email=sesion.getCorreo(request);
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
              <a rel="nofollow" href="#"><img src="images/templatemo_logo.png" alt="logo"></a>
            </div>
          </div>
          <div class="col-sm-9 col-md-9 templatemo_col9">
          	<div id="top-menu">
            <nav class="mainMenu">
              <ul class="nav">
                                            <li><a class="menu" href="#templatemo_home">Perfil</a></li>
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
              <!--Registro Start -->
    <div class="templatemo_lightgrey" id="templatemo_login1">
    	<div class="templatemo_paracenter">
    	<h2><bean:message key="update.title"/></h2></div>
        <div class="clear"></div>
        <div class="container">
        	<div class="templatemo_paracenter">
                    <bean:message key="update.msj"/>
                </div>
            <div class="clear"></div>
            <div class="container">
        <div class="row">
          <div class="container">
        <div class="row">
          <div class="col-md-3">
              
              <html:form action="/actualiza" method="post" >
            <table >
                <tbody>
                    <tr>
                        <td colspan="2">
                            <bean:write name="ActualizaForm" property="error" filter="false"/>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td><bean:message key="index.registro.nombre"/></td>
                        <td><html:text property="nombre" styleClass="form-control" value="<%=nombre%>"/></td>
                    </tr>
                    <tr>
                        <td><bean:message key="index.registro.paterno"/></td>
                        <td><html:text property="paterno" styleClass="form-control" value="<%=paterno%>"/></td>
                    </tr>
                    <tr>
                        <td><bean:message key="index.registro.materno"/></td>
                        <td><html:text property="materno" styleClass="form-control" value="<%=materno%>"/></td>
                    </tr>
                    <tr>
                        <td><bean:message key="index.registro.email"/></td>
                        <td><html:text property="email" styleClass="form-control" value="<%=email%>"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><html:submit value="Actualizar" styleClass="btn btn-primary"/></td>
                    </tr>
                </tbody>
            </table>
        </html:form>   

          </div>
        </div>
      </div>
        </div>
      </div>
        </div>
  </div>
    
    <!--Registro End-->
    
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
    <div class="templatemo_reasonbg">
    	<h2>Razones para elegir AirPadlook</h2>
       		<p>No hay limite de carga!!!</p>
            <div class="clear height10"></div>
	        <div class="fa fa-bell-o"></div>
            <div class="fa fa-tablet"></div>
            <div class="fa fa-lock"></div>
			<div class="clear height20"></div>
            <a class="btn btn-large btn-primary" href="#templatemo_login1">Conozca más</a>
    </div>

    <div class="clear"></div>

  

   
	<!-- Bottom Start -->
    <div class="templatemo_bottom">
    	<div class="container">
        	<div class="row">
                    <div class="left">Copyright © 2014 <a href="#"><bean:message key="index.company"/></a>by <a href="#"><bean:message key="index.about"/></a></div>
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
<!-- 
    Free Template by templatemo
    http://www.templatemo.com
-->


<!DOCTYPE html>
 <html>
 	<head>
 		<meta charset="utf-8">
 		<title> {{ get_title }} </title>
 		{{ stylesheet_link('/css/bootstrap.min.css') }}
 		{{ stylesheet_link('/css/bootstrap-theme.min.css') }}
 		{{ stylesheet_link('/css/styles.css') }}
    {{ stylesheet_link('/css/scrolling-nav.css') }}
 		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
  	 <nav class="navbar navbar-default navbar-fixed-top">
  		  <div class="container-fluid">
  		    <!-- Brand and toggle get grouped for better mobile display -->
  		    <div class="navbar-header">
  		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
  		        <span class="sr-only">Toggle navigation</span>
  		        <span class="icon-bar"></span>
  		        <span class="icon-bar"></span>
  		        <span class="icon-bar"></span>
  		      </button>
  		      <ul class="nav navbar-nav">
  		      	<li {% if view.url == '/' %}
  		        		class="active"
  		        	{% endif %}
  		        ><a class="navbar-brand" href="/">DaizGroup</a></li>
  		      </ul>
  		    </div>
  		    <?php

  			 	$this->view->url = $this->router->getRewriteUri();
  			 ?>
  		    <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  		      <ul class="nav navbar-nav navbar-right">
  		        <li {% if view.url == '#about' %}
  		        		class="active"
  		        	{% endif %}
  		        ><a href="#about">About Us</a>
              </li>
              <li {% if view.url == '#partners' %}
                  class="active"
                {% endif %}
              ><a href="#partners">Partners</a>
              </li>
              <li {% if view.url == '#services' %}
                  class="active"
                {% endif %}
              ><a href="#services">Services</a>
              </li>
              <li {% if view.url == '#contact' %}
                  class="active"
                {% endif %}
              ><a href="#contact">Contact Us</a>
              </li>
              <li>
                <a href="http://daizgroup.com/lang/en-US">EN</a>
              </li>
              <li>
                <a href="http://daizgroup.com/lang/pt-PT">PT</a>
              </li>
            </ul>
          </div>
  		  </div><!-- /.container-fluid -->
  		</nav>
      <header>
        <!-- um video para o fundo, ou seja, funcionará em vez de imagem, como um video -->
        <div class="frontbg"></div>
        <video autoplay muted loop id="bgvid">
          <source src="http://daizgroup.com/media/myBG.mp4" />
          <source src="http://daizgroup.com/media/myBG.ogv" />
        </video>
      </header>

       {{ content() }}
       {{ javascript_include('/js/jquery-3.1.1.min.js') }}
       {{ javascript_include('/js/bootstrap.min.js') }}
       {{ javascript_include('/js/scrolling-nav.js') }}
      </body>
  </html>

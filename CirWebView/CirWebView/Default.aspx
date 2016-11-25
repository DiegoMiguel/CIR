<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CirWebView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CIR | Centro Integrado de Reciclagem</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Theme Region">
   	<meta name="description" content="">

    <!-- CSS -->
    <link rel="stylesheet" href="Content/css/bootstrap.min.css" >
    <link rel="stylesheet" href="Content/css/font-awesome.min.css">
	<link rel="stylesheet" href="Content/css/icofont.css">
    <link rel="stylesheet" href="Content/css/owl.carousel.css">  
    <link rel="stylesheet" href="Content/css/slidr.css">     
    <link rel="stylesheet" href="Content/css/main.css">  
	<link id="preset" rel="stylesheet" href="Content/css/presets/preset1.css">	
    <link rel="stylesheet" href="Content/css/responsive.css">
	
	<!-- font -->
	<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700' rel='stylesheet' type='text/css'>

	<!-- icons -->
	<link rel="icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.html">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="images/ico/apple-touch-icon-57-precomposed.png">
    <!-- icons -->


</head>

<body>
  <form id="Form1" runat="server">
	<header id="header" class="clearfix">
		<!-- navbar -->
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- navbar-header -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><img class="img-responsive" src="images/logo.png" alt="Logo"></a>
				</div>
				<!-- /navbar-header -->
				
				<div class="navbar-left">
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="index.html">Home</a></li>
							<li><a href="categories.html">Anúncios</a></li>
							<li><a href="Chat.html">Chat</a></li> 
							<li><a href="faq.html">Ajuda</a></li> 
						</ul>
					</div>
				</div>
				
				<!-- nav-right -->
				<div class="nav-right">


					<!-- sign-in -->					
					<ul class="sign-in">
						<li><a href="my-profile.html"><i class="fa fa-user"></i></li>
						<li><a href="View/signin.aspx">Login </a></li>
       				</ul><!-- sign-in -->					

					<a href="View/ad-post.aspx" class="btn">Anuncie!!!</a>
				</div>
				<!-- nav-right -->
			</div><!-- container -->
		</nav><!-- navbar -->
	</header><!-- header -->

	<!-- main -->
	<section id="main" class="clearfix home-default">
		<div class="container">
			<!-- banner -->
			<div align="center">
				<img class="img-responsive" src="images/logo_small.png"  alt="Logo"></a>
			</div>
			<div class="banner-section text-center">
				<h1 class="title sombra">CIR - Centro Integrado de Reciclagem</h1>
				<!--<h3>Search from over 15,00,000 classifieds & Post unlimited classifieds free!</h3>-->
				
				<!-- banner-form -->
				<div class="banner-form">
					<form action="#">
						<!-- category-change -->
						<div class="dropdown category-dropdown">						
							<a data-toggle="dropdown" href="#"><span class="change-text"><< Categoria >></span> <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu category-change">
								<li><a href="#">Papéis     </a></li>
								<li><a href="#">Plásticos  </a></li>
								<li><a href="#">Vidros     </a></li>
								<li><a href="#">Eletrônicos  </a></li>
								<li><a href="#">Latas</a></li>
							</ul>								
						</div><!-- category-change -->
					
						<input type="text" class="form-control" placeholder="Digite sua Busca">
						<button type="submit" class="form-control" value="Search">Buscar</button>
					</form>
				</div><!-- banner-form -->
				
				<!-- banner-socail -->
				<ul class="banner-socail list-inline sombra">
					<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#" title="Youtube"><i class="fa fa-youtube"></i></a></li>
				</ul><!-- banner-socail -->
			</div><!-- banner -->
			
			<!-- main-content -->
			<div class="main-content">
			</div>
					<!--</div>
					
					<!-- product-list -->
				<div class="conta">
					<div class="col-md-9" align="center">
						<!-- categorys -->
						<div class="section cta text-center">
							<ul class="category-list">	
								<li class="category-item">
									<a href="categories.html">
										<div class="category-icon"><img src="images/icon/5.png" alt="images" class="img-responsive"></div>
										<span class="category-title">Papéis</span>
										<span class="category-quantity">(1298)</span>
									</a>
								</li><!-- category-item -->
								
								<li class="category-item">
									<a href="categories.html">
										<div class="category-icon"><img src="images/icon/3.png" alt="images" class="img-responsive"></div>
										<span class="category-title">Plásticos</span>
										<span class="category-quantity">(76212)</span>
									</a>
								</li><!-- category-item -->
								
								<li class="category-item">
									<a href="categories.html">
										<div class="category-icon"><img src="images/icon/2.png" alt="images" class="img-responsive"></div>
										<span class="category-title">Vidros</span>
										<span class="category-quantity">(212)</span>
									</a>
								</li><!-- category-item -->
								
								<li class="category-item">
									<a href="categories.html">
										<div class="category-icon"><img src="images/icon/4.png" alt="images" class="img-responsive"></div>
										<span class="category-title">Eletrônicos</span>
										<span class="category-quantity">(972)</span>
									</a>
								</li><!-- category-item -->
								
								<li class="category-item">
									<a href="categories.html">
										<div class="category-icon"><img src="images/icon/1.png" alt="images" class="img-responsive"></div>
										<span class="category-title">Latas</span>
										<span class="category-quantity">(1298)</span>
									</a>
								</li><!-- category-item -->
								
							</ul>				
						</div><!-- category-ad -->	
						
						<!-- featureds -->
						<div class="section featureds">
							<div class="row">
								<div class="col-sm-12">
									<div class="section-title featured-top">
										<h4>Destaques</h4>
									</div>
								</div>
							</div>
							
							<!-- featured-slider -->
							<div class="featured-slider">
								<div id="featured-slider" >
									<!-- featured -->
									<div class="featured">
										<div class="featured-image">
											<a href="signin.html"><img src="images/featured/1.jpg" alt="" class="img-respocive"></a>
										</div>
										
										<!-- ad-info -->
										<div class="ad-info">
											<h3 class="item-price">R$80,00</h3>
											<h4 class="item-title"><a href="signin.html">Latinhas de refrigerante</a></h4>
											<div class="item-cat">
												<span><a href="signin.html">Latas</a></span> 
											</div>
										</div><!-- ad-info -->
										
										<!-- ad-meta -->
										<div class="ad-meta">
											<div class="meta-content">
												<span class="dated"><a>30/10/2016 22:13</a></span>
											</div>									
											<!-- item-info-right -->
											<div class="user-option pull-right">
												<a data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
												<a data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
											</div><!-- item-info-right -->
										</div><!-- ad-meta -->
									</div><!-- featured -->
									
									<div class="featured">
										<div class="featured-image">
											<a href="signin.html"><img src="images/featured/2.jpg" alt="" class="img-respocive"></a>
										</div>
										
										<!-- ad-info -->
										<div class="ad-info">
											<h3 class="item-price">R$250,00</h3>
											<h4 class="item-title"><a href="signin.html">Garrafas PET variadas</a></h4>
											<div class="item-cat">
												<span><a href="signin.html">Plásticos</a></span> 
											</div>
										</div><!-- ad-info -->
										
										<!-- ad-meta -->
										<div class="ad-meta">
											<div class="meta-content">
												<span class="dated"><a href="signin.html">21/10/2016 12:01</a></span>
											</div>									
											<!-- item-info-right -->
											<div class="user-option pull-right">
												<a data-toggle="tooltip" data-placement="top" title="Queimadas, PB"><i class="fa fa-map-marker"></i> </a>
												<a data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
											</div><!-- item-info-right -->
										</div><!-- ad-meta -->
									</div><!-- featured -->
									
									<div class="featured">
										<div class="featured-image">
											<a href="signin.html"><img src="images/featured/3.jpg" alt="" class="img-respocive"></a>
										</div>
										
										<!-- ad-info -->
										<!-- ad-info -->
										<div class="ad-info">
											<h3 class="item-price">R$2500,00 <span class="Negociável">(Negociável)</span></h3>
											<h4 class="item-title"><a href="signin.html">Monte de pneus para reciclagem</a></h4>
											<div class="item-cat">
												<span><a href="signin.html">Outros</a></span> 
											</div>
										</div><!-- ad-info -->
										
										<!-- ad-meta -->
										<div class="ad-meta">
											<div class="meta-content">
												<span class="dated"><a href="signin.html">12/09/2016 15:14</a></span>
											</div>									
											<!-- item-info-right -->
											<div class="user-option pull-right">
												<a data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
												<a data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
											</div><!-- item-info-right -->
										</div><!-- ad-meta -->
									</div><!-- featured -->
									<div class="featured">
										<div class="featured-image">
											<a href="details.html"><img src="images/trending/4.jpg" alt="" class="img-respocive"></a>
										</div>
										
										<!-- ad-info -->
										<div class="ad-info">
											<h3 class="item-price">R$15,00</h3>
											<h4 class="item-title"><a href="signin.html">Garrafas de vidro</a></h4>
											<div class="item-cat">
												<span><a href="signin.html">Vidros</a></span> 
											</div>
										</div><!-- ad-info -->
										
										<!-- ad-meta -->
										<div class="ad-meta">
											<div class="meta-content">
												<span class="dated"><a href="signin.html">14/08/2016 09:55</a></span>
											</div>									
											<!-- item-info-right -->
											<div class="user-option pull-right">
												<a data-toggle="tooltip" data-placement="top" title="Puxinanã, PB"><i class="fa fa-map-marker"></i> </a>
												<a data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
											</div><!-- item-info-right -->
										</div><!-- ad-meta -->
									</div><!-- featured -->
									
									<div class="featured">
										<div class="featured-image">
											<a href="signin.html"><img src="images/trending/3.jpg" alt="" class="img-respocive"></a>
										</div>
										
										<!-- ad-info -->
										<div class="ad-info">
											<h3 class="item-price">R$50,00</h3>
											<h4 class="item-title"><a href="#">Fardo de Plásticos</a></h4>
											<div class="item-cat">
												<span><a href="signin.html">Plásticos</a></span> 
											</div>
										</div><!-- ad-info -->
										
										<!-- ad-meta -->
										<div class="ad-meta">
											<div class="meta-content">
												<span class="dated"><a >13/10/2016 22:00</a></span>
											</div>									
											<!-- item-info-right -->
											<div class="user-option pull-right">
												<a data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
												<a data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
											</div><!-- item-info-right -->
										</div><!-- ad-meta -->
									</div><!-- featured -->
								</div><!-- featured-slider -->
							</div><!-- #featured-slider -->
						</div><!-- featureds -->


						<!-- trending-ads -->
						<div class="section trending-ads">
							<div class="section-title tab-manu">
								<!--<h4>Trending Ads</h4>
								 <!-- Nav tabs -->      
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#recent-ads"  data-toggle="tab">Adições Recentes</a></li>
									<li role="presentation"><a href="#popular" data-toggle="tab">Populares</a></li>
									<li role="presentation"><a href="#hot-ads"  data-toggle="tab">Mais visitadas</a></li>
								</ul>
							</div>

				  			<!-- Tab panes -->
							<div class="tab-content">
								<!-- tab-pane -->
								<div role="tabpanel" class="tab-pane fade in active" id="recent-ads">
									<!-- ad-item -->
									<div class="ad-item row">
										<!-- item-image -->
										<div class="item-image-box col-sm-4">
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/1.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div>
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50,00</h3>
												<h4 class="item-title"><a href="signin.html">TV antigas</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Eletrônicos</a></span> /
													<span><a href="signin.html">Tv & Rádio</a></span>
												</div>	
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a>21/10/2016 15:34 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/2.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$15.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="signin.html">Joarnais antigos</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Papéis</a></span> /
													<span><a href="signin.html">Joarnais & Revistas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a>12/09/2016 13:00 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor do Montante</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Remígio, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/4.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$1,00</h3>
												<h4 class="item-title"><a href="signin.html">Garrafas de Vidro</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Vidros</a></span> /
													<span><a href="signin.html">Garrafas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/10/2016 09:00</a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="João Pessoa, PB"><i class="fa fa-map-marker"></i> </a>
													<a data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/3.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="signin.html">Fardo de Plastico</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Plásticos</a></span> /
													<span><a href="signin.html">Sacos & Sacolas</a></span>
												</div>	
											</div><!-- ad-info -->											
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/10/2016 22:00 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Lagoa Seca, PB"><i class="fa fa-map-marker"></i> </a>
													<a data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->		
									
								</div><!-- tab-pane -->
								
								<!-- tab-pane -->
								<div role="tabpanel" class="tab-pane fade" id="popular">

									<!-- ad-item -->
									<div class="ad-item row">
										<!-- item-image -->
										<div class="item-image-box col-sm-4">
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/1.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div>
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50,00</h3>
												<h4 class="item-title"><a href="signin.html">TV antigas</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Eletrônicos</a></span> /
													<span><a href="signin.html">Tv & Rádio</a></span>
												</div>	
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a>21/10/2016 15:34 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/2.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$15.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="#">Joarnais antigos</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Papéis</a></span> /
													<span><a href="signin.html">Joarnais & Revistas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/09/2016 13:00 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor do Montante</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Remígio, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/4.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$1,00</h3>
												<h4 class="item-title"><a href="signin.html">Garrafas de Vidro</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Vidros</a></span> /
													<span><a href="signin.html">Garrafas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/10/2016 09:00</a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="João Pessoa, PB"><i class="fa fa-map-marker"></i> </a>
													<a data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/3.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="signin.html">Fardo de Plastico</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Plásticos</a></span> /
													<span><a href="signin.html">Sacos & Sacolas</a></span>
												</div>	
											</div><!-- ad-info -->											
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/10/2016 22:00 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Lagoa Seca, PB"><i class="fa fa-map-marker"></i> </a>
													<a data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->									
								</div><!-- tab-pane -->

								<!-- tab-pane -->
								<div role="tabpanel" class="tab-pane fade" id="hot-ads">
									<!-- ad-item -->
									<div class="ad-item row">
										<!-- item-image -->
										<div class="item-image-box col-sm-4">
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/1.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div>
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50,00</h3>
												<h4 class="item-title"><a href="signin.html">TV antigas</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Eletrônicos</a></span> /
													<span><a href="signin.html">Tv & Rádio</a></span>
												</div>	
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >21/10/2016 15:34 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/2.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$15.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="signin.html">Joarnais antigos</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Papéis</a></span> /
													<span><a href="signin.html">Joarnais & Revistas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/09/2016 13:00 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor do Montante</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Remígio, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/4.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$1,00</h3>
												<h4 class="item-title"><a href="#">Garrafas de Vidro</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Vidros</a></span> /
													<span><a href="signin.html">Garrafas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/10/2016 09:00</a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="João Pessoa, PB"><i class="fa fa-map-marker"></i> </a>
													<a data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="signin.html"><img src="images/trending/3.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="signin.html">Fardo de Plastico</a></h4>
												<div class="item-cat">
													<span><a href="signin.html">Plásticos</a></span> /
													<span><a href="signin.html">Sacos & Sacolas</a></span>
												</div>	
											</div><!-- ad-info -->											
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a >12/10/2016 22:00 </a></span>
													<a class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a data-toggle="tooltip" data-placement="top" title="Lagoa Seca, PB"><i class="fa fa-map-marker"></i> </a>
													<a data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->										
								</div><!-- tab-pane -->
							</div>
						</div><!-- trending-ads -->		

					</div><!-- product-list -->

						</div>
				</div><!-- row -->
			</div><!-- main-content -->
		</div><!-- container -->
	</section><!-- main -->
	
	<!-- download -->
	<section id="download" class="clearfix parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<h2>Baixe na loja de seu celular</h2>
				</div>
			</div><!-- row -->

			<!-- row -->
			<div class="row">
				<!-- download-app -->
				<div class="col-sm-4">
					<a href="#" class="download-app">
						<img src="images/icon/16.png" alt="Image" class="img-responsive">
						<span class="pull-left">
							<span>Disponível no</span>
							<strong>Google Play</strong>
						</span>
					</a>
				</div><!-- download-app -->

				<!-- download-app -->
				<div class="col-sm-4">
					<a href="#" class="download-app">
						<img src="images/icon/17.png" alt="Image" class="img-responsive">
						<span class="pull-left">
							<span>Disponível na</span>
							<strong>App Store</strong>
						</span>
					</a>
				</div><!-- download-app -->

				<!-- download-app -->
				<div class="col-sm-4">
					<a href="#" class="download-app">
						<img src="images/icon/18.png" alt="Image" class="img-responsive">
						<span class="pull-left">
							<span>Disponível na</span>
							<strong>Windows Store</strong>
						</span>
					</a>
				</div><!-- download-app -->
			</div><!-- row -->
		</div><!-- contaioner -->
	</section><!-- download -->
	
				</div><!-- row -->
			</div><!-- container -->
		</section><!-- footer-top -->

	<footer id="footer" class="clearfix">	
		<div class="footer-bottom clearfix text-center">
			<div class="container">
				<p>Copyright &copy; 2016 </p>
			</div>
		</div><!-- footer-bottom -->
	</footer><!-- footer -->
	
	
	
	
    <!-- JS -->
    <script src="Scripts/js/jquery.min.js"></script>
    <script src="Scripts/js/modernizr.min.js"></script>
    <script src="Scripts/js/bootstrap.min.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="Scripts/js/gmaps.min.js"></script>
	<script src="Scripts/js/goMap.js"></script>
	<script src="Scripts/js/map.js"></script>
    <script src="Scripts/js/owl.carousel.min.js"></script>
    <script src="Scripts/js/smoothscroll.min.js"></script>
    <script src="Scripts/js/scrollup.min.js"></script>
    <script src="Scripts/js/price-range.js"></script> 
    <script src="Scripts/js/jquery.countdown.js"></script>    
    <script src="Scripts/js/custom.js"></script>
	<script src="Scripts/js/switcher.js"></script>
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-73239902-1', 'auto');
	  ga('send', 'pageview');

	</script>
</form>
</body>
</html>

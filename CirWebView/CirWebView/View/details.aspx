<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="CirWebView.View.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section id="main" class="clearfix details-page">
		<div class="container">
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="../Default.aspx">Home</a></li>
					<li><a href="#">Vidros</a></li>
					<li>Garrafas</li>
				</ol><!-- breadcrumb -->						
				<h2 class="title">Detalhes</h2>
			</div>
						
			<div class="section slider">					
				<div class="row">
					<!-- carousel -->
					<div class="col-md-7">
						<div id="product-carousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#product-carousel" data-slide-to="0" class="active">
									<img src="images/slider/list-1.jpg" alt="Carousel Thumb" class="img-responsive">
								</li>
								<li data-target="#product-carousel" data-slide-to="1">
									<img src="images/slider/list-2.jpg" alt="Carousel Thumb" class="img-responsive">
								</li>
								<li data-target="#product-carousel" data-slide-to="2">
									<img src="images/slider/list-3.jpg" alt="Carousel Thumb" class="img-responsive">
								</li>
								<li data-target="#product-carousel" data-slide-to="3">
									<img src="images/slider/list-4.jpg" alt="Carousel Thumb" class="img-responsive">
								</li>
								<li data-target="#product-carousel" data-slide-to="4">
									<img src="images/slider/list-5.jpg" alt="Carousel Thumb" class="img-responsive">
								</li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<!-- item -->
								<div class="item active">
									<div class="carousel-image">
										<!-- image-wrapper -->
										<img src="images/slider/1.jpg" alt="Featured Image" class="img-responsive">
									</div>
								</div><!-- item -->

								<!-- item -->
								<div class="item">
									<div class="carousel-image">
										<!-- image-wrapper -->
										<img src="images/slider/2.jpg" alt="Featured Image" class="img-responsive">
									</div>
								</div><!-- item -->

								<!-- item -->
								<div class="item">
									<div class="carousel-image">
										<!-- image-wrapper -->
										<img src="images/slider/3.jpg" alt="Featured Image" class="img-responsive">
									</div>
								</div><!-- item -->

								<!-- item -->
								<div class="item">
									<div class="carousel-image">
										<!-- image-wrapper -->
										<img src="images/slider/4.jpg" alt="Featured Image" class="img-responsive">
									</div>
								</div><!-- item -->

								<!-- item -->
								<div class="item">
									<div class="carousel-image">
										<!-- image-wrapper -->
										<img src="images/slider/5.jpg" alt="Featured Image" class="img-responsive">
									</div>
								</div><!-- item -->
							</div><!-- carousel-inner -->

							<!-- Controls -->
							<a class="left carousel-control" href="#product-carousel" role="button" data-slide="prev">
								<i class="fa fa-chevron-left"></i>
							</a>
							<a class="right carousel-control" href="#product-carousel" role="button" data-slide="next">
								<i class="fa fa-chevron-right"></i>
							</a><!-- Controls -->
						</div>
					</div><!-- Controls -->	

					<!-- slider-text -->
					<div class="col-md-5">
						<div class="slider-text">
							<h2>R$50.00</h2>
							<h3 class="title">Garrafas de Bebidas de Vidro</h3>
							<span class="icon"><i class="fa fa-clock-o"></i><a href="#">20/10/2016 20:59</a></span>
							<span class="icon"><i class="fa fa-map-marker"></i><a href="#">Campina Grande , PB</a></span>
							<span class="icon"><i class="fa fa-suitcase online"></i><a href="#">Profissional <strong>(online)</strong></a></span>
							
							<!-- short-info -->
							<div class="short-info">
								<h4>Informações:</h4>
								<p><strong>Condições: </strong><a href="#">Inteiras</a> </p>
								<p><strong>Quantidade: </strong><a href="#">25</a> </p>
							</div><!-- short-info -->
							
							<!-- contact-with -->
							<div class="contact-with">
								<h4>Contato </h4>
								<span class="btn btn-red show-number">
									<i class="fa fa-phone-square"></i>
									<span class="hide-text">Telefone </span> 
									<span class="hide-number">(83) 9 9999-8888</span>
								</span>
								<a href="#" class="btn"><i class="fa fa-envelope-square"></i>Envie email</a>
								<a href="chat.aspx" class="btn"><i class="fa fa-wechat"></i>Chat</a>
							</div><!-- contact-with -->
							
							<!-- social-links -->
							<div class="social-links">
								<h4>Compartilhe</h4>
								<ul class="list-inline">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
									<li><a href="#"><i class="fa fa-tumblr-square"></i></a></li>
								</ul>
							</div><!-- social-links -->						
						</div>
					</div><!-- slider-text -->				
				</div>				
			</div><!-- slider -->

			<div class="description-info">
				<div class="row">
					<!-- description -->
					<div class="col-md-8">
						<div class="description">
							<h4>Description</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est </p><br>
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni।</p>
						</div>
					</div><!-- description -->

					<!-- description-short-info -->
					<div class="col-md-4">					
						<div class="short-info">
							<h4>Mais Informações</h4>
							<!-- social-icon -->
							<ul>
								<li><i class="fa fa-shopping-cart"></i><a href="#">Entrega: Retirada</a></li>
								<li><i class="fa fa-user-plus"></i><a href="#">Anúncios de <span>ChicoCatador123</span></a></li>
								<li><i class="fa fa-print"></i><a href="#">Imprimir este Anúncio</a></li>
								<li><i class="fa fa-reply"></i><a href="#">Envicar para um amigo</a></li>
								<li><i class="fa fa-heart-o"></i><a href="#">Salvar no Favoritos</a></li>
								<li><i class="fa fa-exclamation-triangle"></i><a href="#">Denunciar este anúncio</a></li>
							</ul><!-- social-icon -->
						</div>
					</div>
				</div><!-- row -->
			</div><!-- description-info -->	
			
			<div class="recommended-info">
				<div class="row">
					<div class="col-sm-8">				
						<div class="section recommended-ads">
							<div class="featured-top">
								<h4>Recomendado para você</h4>
							</div>
							<!-- ad-item -->
									<div class="ad-item row">
										<!-- item-image -->
										<div class="item-image-box col-sm-4">
											<div class="item-image">
												<a href="details.aspx"><img src="images/trending/1.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div>
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50,00</h3>
												<h4 class="item-title"><a href="#">TV antigas</a></h4>
												<div class="item-cat">
													<span><a href="#">Eletrônicos</a></span> /
													<span><a href="#">Tv & Rádio</a></span>
												</div>	
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a href="#">21/10/2016 15:34 </a></span>
													<a href="#" class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a href="#" data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" href="#" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="details.aspx"><img src="images/trending/2.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$15.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="#">Joarnais antigos</a></h4>
												<div class="item-cat">
													<span><a href="#">Papéis</a></span> /
													<span><a href="#">Joarnais & Revistas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a href="#">12/09/2016 13:00 </a></span>
													<a href="#" class="tag"><i class="fa fa-tags"></i> Valor do Montante</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a href="#" data-toggle="tooltip" data-placement="top" title="Remígio, PB"><i class="fa fa-map-marker"></i> </a>
													<a class="online" href="#" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="details.aspx"><img src="images/trending/4.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$1,00</h3>
												<h4 class="item-title"><a href="#">Garrafas de Vidro</a></h4>
												<div class="item-cat">
													<span><a href="#">Vidros</a></span> /
													<span><a href="#">Garrafas</a></span>
												</div>										
											</div><!-- ad-info -->
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a href="#">12/10/2016 09:00</a></span>
													<a href="#" class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a href="#" data-toggle="tooltip" data-placement="top" title="João Pessoa, PB"><i class="fa fa-map-marker"></i> </a>
													<a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->

									<!-- ad-item -->
									<div class="ad-item row">
										<div class="item-image-box col-sm-4">
											<!-- item-image -->
											<div class="item-image">
												<a href="details.aspx"><img src="images/trending/3.jpg" alt="Image" class="img-responsive"></a>
											</div><!-- item-image -->
										</div><!-- item-image-box -->
										
										<!-- rending-text -->
										<div class="item-info col-sm-8">
											<!-- ad-info -->
											<div class="ad-info">
												<h3 class="item-price">R$50.00 <span>(Negociável)</span></h3>
												<h4 class="item-title"><a href="#">Fardo de Plastico</a></h4>
												<div class="item-cat">
													<span><a href="#">Plásticos</a></span> /
													<span><a href="#">Sacos & Sacolas</a></span>
												</div>	
											</div><!-- ad-info -->											
											
											<!-- ad-meta -->
											<div class="ad-meta">
												<div class="meta-content">
													<span class="dated"><a href="#">12/10/2016 22:00 </a></span>
													<a href="#" class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
												</div>									
												<!-- item-info-right -->
												<div class="user-option pull-right">
													<a href="#" data-toggle="tooltip" data-placement="top" title="Lagoa Seca, PB"><i class="fa fa-map-marker"></i> </a>
													<a href="#" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
												</div><!-- item-info-right -->
											</div><!-- ad-meta -->
										</div><!-- item-info -->
									</div><!-- ad-item -->	
						</div>
					</div><!-- recommended-ads -->

					<div class="col-sm-4 text-center">
						<div class="recommended-cta">					
							<div class="cta">
								<!-- single-cta -->						
								<div class="single-cta">
									<!-- cta-icon -->
									<div class="cta-icon icon-secure">
										<img src="images/icon/13.png" alt="Icon" class="img-responsive">
									</div><!-- cta-icon -->

									<h4>Segurança</h4>
									<p></p>
								</div><!-- single-cta -->
								
								<!-- single-cta -->
								<div class="single-cta">
									<!-- cta-icon -->
									<div class="cta-icon icon-support">
										<img src="images/icon/14.png" alt="Icon" class="img-responsive">
									</div><!-- cta-icon -->

									<h4>Suporte</h4>
									<p></p>
								</div><!-- single-cta -->
							

								<!-- single-cta -->
								<div class="single-cta">
									<!-- cta-icon -->
									<div class="cta-icon icon-trading" >
										<img src="images/icon/15.png" alt="Icon" class="img-responsive">
									</div><!-- cta-icon -->

									<h4>Fácil Negociação</h4>
									<p></p>
								</div><!-- single-cta -->

								
							</div>
						</div><!-- cta -->
					</div><!-- recommended-cta-->
				</div><!-- row -->
			</div><!-- recommended-info -->
		</div><!-- container -->
	</section><!-- main -->

</asp:Content>

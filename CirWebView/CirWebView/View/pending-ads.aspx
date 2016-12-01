<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="pending-ads.aspx.cs" Inherits="CirWebView.View.pending_ads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- ad-profile-page -->
	<section id="main" class="clearfix  ad-profile-page">
		<div class="container">
		
			<div class="breadcrumb-section">
				<h2 class="title">Meu Perfil</h2>
			</div><!-- banner -->
			
			<div class="ad-profile section">	
				<div class="user-profile">
					<div class="user-images">
						<img src="images/user.jpg" alt="User Images" class="img-responsive">
					</div>
					<div class="user">
						<h2>Oi, <a href="#">Luciano Silveira</a></h2>
						<h5>Seu último login foi em 10/10/2016 as 21:35</h5>
					</div>

					<div class="favorites-user">
						<div class="my-ads">
							<a href="my-ads.aspx">23<small>Meus Anúncios</small></a>
						</div>
						<div class="favorites">
							<a href="favourite-ads.aspx">18<small>Favoritos</small></a>
						</div>
					</div>								
				</div><!-- user-profile -->
						
				<ul class="user-menu">
					<li class="active"><a href="my-profile.aspx">Perfil</a></li>
					<li><a href="my-ads.aspx">Meus Anúncios</a></li>
					<li><a href="favourite-ads.aspx">Favoritos</a></li>
					<li><a href="archived-ads.aspx">Concluídos </a></li>
					<li><a href="pending-ads.aspx">Pendentes de Aprovação</a></li>
					<li><a href="delete-account.aspx">Encerrar Conta</a></li>
				</ul>
			</div><!-- ad-profile -->				
			<div class="ads-info">
				<div class="row">
					<div class="col-sm-8">
						<div class="my-ads section">
							<h2>Pendentes</h2>
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
										<h3 class="item-price">R$100,00</h3>
										<h4 class="item-title"><a href="#">TVs Antigas </a></h4>
										<div class="item-cat">
											<span><a href="#">Eletrônicos</a></span> /
											<span><a href="#">Tv</a></span>
										</div>										
									</div><!-- ad-info -->
									
									<!-- ad-meta -->
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated">Postado em: <a href="#">20/10/2016</a></span>
											<span class="visitors">Visitantes: 221</span> 
										</div>										
										<!-- item-info-right -->
										<div class="user-option pull-right">
											<a class="edit-item" href="#" data-toggle="tooltip" data-placement="top" title="Editar"><i class="fa fa-pencil"></i></a>
											<a class="delete-item" href="#" data-toggle="tooltip" data-placement="top" title="Deletar"><i class="fa fa-times"></i></a>
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
										<h3 class="item-price">R$5.00 <span>(Negociável)</span></h3>
										<h4 class="item-title"><a href="#">Jornais Antigos</a></h4>
										<div class="item-cat">
											<span><a href="#">Papeis</a></span> /
											<span><a href="#">Jornais</a></span>
										</div>										
									</div><!-- ad-info -->
									
									<!-- ad-meta -->
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated">Postado em: <a href="#">19/10/2016 22:00 </a></span>
											<span class="visitors">Visitantes: 221</span>
										</div>									
										<!-- item-info-right -->
										<div class="user-option pull-right">
											<a class="edit-item" href="#" data-toggle="tooltip" data-placement="top" title="Editar"><i class="fa fa-pencil"></i></a>
											<a class="delete-item" href="#" data-toggle="tooltip" data-placement="top" title="Deletar"><i class="fa fa-times"></i></a>
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
										<h3 class="item-price">R$190.00 <span>(Negociável)</span></h3>
										<h4 class="item-title"><a href="#">Fardo de Plático</a></h4>
										<div class="item-cat">
											<span><a href="#">Pláticos</a></span> /
											<span><a href="#">Reciclado</a></span>
										</div>										
									</div><!-- ad-info -->									
																	
									<!-- ad-meta -->
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated">Postado em: <a href="#">10/10/2016 </a></span>
											<span class="visitors">Visitantes: 221</span> 
										</div>									
										<!-- item-info-right -->
										<div class="user-option pull-right">
											<a class="edit-item" href="#" data-toggle="tooltip" data-placement="top" title="Editar"><i class="fa fa-pencil"></i></a>
											<a class="delete-item" href="#" data-toggle="tooltip" data-placement="top" title="Deletar"><i class="fa fa-times"></i></a>
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
										<h3 class="item-price">R$5,00</h3>
										<h4 class="item-title"><a href="#">Garrafas de Vidro</a></h4>
										<div class="item-cat">
											<span><a href="#">Vidros</a></span> /
											<span><a href="#">Garrafas</a></span>
										</div>										
									</div><!-- ad-info -->
																		
									<!-- ad-meta -->
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated">Postado em: <a href="#">20/10/2016 </a></span>
											<span class="visitors">Visitantes 221</span> 
										</div>									
										<!-- item-info-right -->
										<div class="user-option pull-right">
											<a class="edit-item" href="#" data-toggle="tooltip" data-placement="top" title="Editar"><i class="fa fa-pencil"></i></a>
											<a class="delete-item" href="#" data-toggle="tooltip" data-placement="top" title="Deletar"><i class="fa fa-times"></i></a>
										</div><!-- item-info-right -->
									</div><!-- ad-meta -->
								</div><!-- item-info -->
							</div><!-- ad-item -->
						</div>
					</div><!-- my-ads -->

					<!-- recommended-cta-->
					<div class="col-sm-4 text-center">
						<!-- recommended-cta -->
						<div class="recommended-cta">					
							<div class="cta">
								<!-- single-cta -->						
								<div class="single-cta">
									<!-- cta-icon -->
									<div class="cta-icon icon-secure">
										<img src="images/icon/13.png" alt="Icon" class="img-responsive">
									</div><!-- cta-icon -->

									<h4>Segurança</h4>
									<!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>-->
								</div><!-- single-cta -->

								<!-- single-cta -->
								<div class="single-cta">
									<!-- cta-icon -->
									<div class="cta-icon icon-support">
										<img src="images/icon/14.png" alt="Icon" class="img-responsive">
									</div><!-- cta-icon -->

									<h4>Suporte</h4>
									<!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>-->
								</div><!-- single-cta -->
							

								<!-- single-cta -->
								<div class="single-cta">
									<!-- cta-icon -->
									<div class="cta-icon icon-trading">
										<img src="images/icon/15.png" alt="Icon" class="img-responsive">
									</div><!-- cta-icon -->

									<h4>Fácil Negociação</h4>
									<!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>-->
								</div><!-- single-cta -->
							</div>
						</div><!-- cta -->
					</div><!-- recommended-cta-->				
					
				</div><!-- row -->
			</div><!-- row -->
		</div><!-- container -->
	</section><!-- myads-page -->
</asp:Content>

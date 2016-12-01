<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="delete-account.aspx.cs" Inherits="CirWebView.View.delete_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
			<div class="close-account">
				<div class="row">
					<div class="col-sm-8 text-center">
						<div class="delete-account section">
							<h2>Deletar Conta</h2>
							<h4>Tem a certeza, de que deseja excluir a sua conta?</h4>
							<a href="account-deleted.aspx" class="btn">Deletar Conta</a>
							<a href="my-profile.aspx" class="btn cancle">Cancelar</a>
						</div>
					</div><!-- delete-account -->

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
			</div>
		</div><!-- container -->
	</section><!-- delete-page -->
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="my-profile.aspx.cs" Inherits="CirWebView.View.my_profile" %>
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

			<div class="profile section">
				<div class="row">
					<div class="col-sm-8">
						<div class="user-pro-section">
							<!-- profile-details -->
							<div class="profile-details section">
								<h2>Detalhes</h2>
								<!-- form -->
								<div class="form-group">
									<label>Nome</label>
									<input type="text" class="form-control" placeholder="Luciano Silveira">
								</div>

								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" placeholder="lucianocsilveira@msn.com">
								</div>

								<div class="form-group">
									<label for="name-three">Celular</label>
									<input type="text" class="form-control" placeholder="(83)99188-7562">
								</div>

								<div class="form-group">
									<label>UF</label>
									<select class="form-control">
										<option value="#">Paraíba</option>
										<option value="#">Pernambuco</option>
										<option value="#">Pará</option>
										<option value="#">Paraná</option>
										<option value="#">São Paulo</option>
										</select>
								</div>	


								<div class="form-group">
									<label>Cidade</label>
									<select class="form-control">
										<option value="#">Campina Grande, PB</option>
										<option value="#">Queimadas, PB</option>
										<option value="#">Remígio</option>
										<option value="#">Areia</option>
										<option value="#">Lagoa Seca</option>
										<option value="#">Puxinanã</option>
									</select>
								</div>	

								<div class="form-group">
									<label>Você é</label>
									<select class="form-control">
										<option value="#">Profissional</option>
										<option value="#">Vendedor Individual</option>
									</select>
								</div>					
							</div><!-- profile-details -->

							<!-- change-password -->
							<div class="change-password section">
								<h2>Mudar Senha</h2>
								<!-- form -->
								<div class="form-group">
									<label>Senha Antiga</label>
									<input type="password" class="form-control" >
								</div>
								
								<div class="form-group">
									<label>Nova Senha</label>
									<input type="password" class="form-control">	
								</div>
								
								<div class="form-group">
									<label>Confirmar Senha</label>
									<input type="password" class="form-control">
								</div>															
							</div><!-- change-password -->
							
							<!-- preferences-settings -->
							<div class="preferences-settings section">
								<h2>Prefêrencias</h2>
								<!-- checkbox -->
								<div class="checkbox">
									<label><input type="checkbox" name="receive"> Quero receber a newsletter.</label>
									<label><input type="checkbox" name="want">Quero receber conselhos sobre compra e venda. </label>
								</div><!-- checkbox -->						
							</div><!-- preferences-settings -->
							
							<a href="#" class="btn">Atualizar Perfil</a>
							<a href="#" class="btn cancle">Cancelar</a>
						</div><!-- user-pro-edit -->
					</div><!-- profile -->

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
	</section><!-- ad-profile-page -->
</asp:Content>

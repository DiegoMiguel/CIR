<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="account-deleted.aspx.cs" Inherits="CirWebView.View.account_deleted" %>
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
					</div>								
				</div><!-- user-profile -->
						
			</div><!-- ad-profile -->				
			<div class="close-account">
				<div class="row">
					<div class="col-sm-12 text-center">
						<div class="delete-account section">
							<h1>Conta Deletada</h1>
						</div>
					</div><!-- delete-account -->

									
				</div><!-- row -->
			</div>
		</div><!-- container -->
	</section><!-- delete-page -->

</asp:Content>

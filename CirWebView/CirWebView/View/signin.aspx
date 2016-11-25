<%@ Page Title="" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="CirWebView.View.signin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- signin-page -->
	<section id="main" class="clearfix user-page">
	<div class="container">

			<div class="row text-center">
				<!-- user-login -->			
				<div class="">
					
					<div class="user-account-login">
						<h2>Acessar minha conta</h2>
						<!-- form -->
						<form method="post" action="signin.aspx?action=login">
                            <label id="lblMensagem" class="or-separator-text" style="color:aquamarine"><% Response.Write(mensagem); %></label>
							<div class="form-group">
                                <input type="email" name="txtEmail" required="" onblur="validacaoEmail()" class="form-control" placeholder="email@email.com" />
							</div>
							<div class="form-group">
								<input  type="password" name="txtSenha" required="" class="form-control" placeholder="Senha" />
							</div>
                            <input type="submit" value="Go" class="btn"/>
						</form><!-- form -->

						<!-- forgot-password -->
						<div class="user-option">
							<div class="checkbox pull-left">
								<label for="logged"><input type="checkbox" name="logged" id="logged"/> Mantenha-me conectado </label>
							</div>
							<div class="pull-right forgot-password">
								<a href="#">Esqueci a senha</a>
							</div>
						</div><!-- forgot-password -->
					</div>

					<div class="user-account-cadastro">
						<h2>Ainda não tenho cadastro</h2>
						<form method="post" action="../Default.aspx">
							<div class="form-group">
								<input type="text" id="cadNome" class="form-control" placeholder="Nome" />
							</div>
							<div class="form-group">
								<input type="email" id="cadEmail" class="form-control" placeholder="Email"/>
							</div>
							<div class="form-group">
								<input type="password" id="cadSenha" class="form-control" placeholder="Senha"/>
							</div>
							<div class="form-group">
								<input type="password" id="cadConfSenha" class="form-control" placeholder="Confirmação de Senha"/>
							</div>
							<div class="form-group">
                                <input type="text" id="cadTel" class="form-control" placeholder="0000000000" />
							</div>
							<!-- select -->
							<select class="form-control">
								<option value="#" disabled selected>Selecione sua Cidade</option>
								<option value="#">Campina Grande</option>
								<option value="#">Queimadas</option>
								<option value="#">Lagoa Seca</option>
								<option value="#">Londres</option>
							</select><!-- select -->
							<button type="submit" class="btn">Confirmar</button>	
						</form>
						<!-- checkbox -->
					</div>
				</div><!-- user-login -->			
			</div><!-- row -->	
		</div><!-- container -->
		<div class="section_facebook">
			<p class="or-separator-text">ou</p>
			<button id="fbConnect" class="btnfb btnfb-medium btnfb-facebook" onclick="xt_click(this,&#39;C&#39;,&#39;login_with_facebook&#39;,&#39;N&#39;)">
				Entrar usando o Facebook
			</button>
		</div>
	</section><!-- signin-page -->

</asp:Content>

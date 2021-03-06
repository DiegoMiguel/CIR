﻿<%@ Page Title="" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="CirWebView.View.signin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <script src="../Scripts/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.maskedinput.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function(){
                $('.cnpj').mask('99.999.999/9999-99');
                $('.cpf').mask('999.999.999-99');
        });
    </script>
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
                            <label id="lblMensagem" class="or-separator-text" style="color:aquamarine"><% Response.Write(_loginMessage); %></label>
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
						<form runat="server">
                            <asp:Label class="or-separator-text" style="color:chartreuse" ID="lblError" runat="server"></asp:Label>
							<div class="form-group">
								<asp:TextBox runat="server" required="" type="text" id="cadNome" class="form-control" placeholder="Nome"></asp:TextBox>
                            </div>
                                
                            <div>
                                <asp:RadioButton ID="radioCpf" CssClass="radio-inline" runat="server" Text="CPF" GroupName="ChoiceCpfCnpj" OnCheckedChanged="radioCpf_CheckedChanged" AutoPostBack="True" Checked="True" />
                                <asp:RadioButton ID="radioCnpj" CssClass="radio-inline" runat="server" Text="CNPJ" GroupName="ChoiceCpfCnpj" OnCheckedChanged="radioCnpj_CheckedChanged" AutoPostBack="True" />
                            </div>
                            <div runat="server" class="form-group">
								<asp:TextBox runat="server" required="" ID="cadCpfCnpj" CssClass="form-control cpf"/>
							</div>
							<div class="form-group">
								<asp:TextBox runat="server" required="" onblur="validacaoEmail()" type="email" id="cadEmail" class="form-control" placeholder="Email"/>
							</div>
							<div class="form-group">
								<asp:TextBox runat="server" type="password" required="" id="cadSenha" class="form-control" placeholder="Senha"/>
							</div>
							<div class="form-group">
								<asp:CompareValidator class="or-separator-text" style="color:cadetblue" ID="CompareValidator1" runat="server" ControlToCompare="cadSenha" ControlToValidate="cadConfSenha" Display="Dynamic" ErrorMessage="Senhas não conferem" SetFocusOnError="True"></asp:CompareValidator>
								<asp:TextBox runat="server" type="password" required="" id="cadConfSenha" class="form-control" placeholder="Confirmação de Senha"/>
							</div>
                            <div class="form-group-lg">
                                <asp:DropDownList class="form-group" ID="ddlEstados" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ddlEstados_SelectedIndexChanged"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvDdlEstados" runat="server" ControlToValidate="ddlEstados" InitialValue="----Selecione o Estado----" ErrorMessage="Selecione um Estado!" Display="Dynamic" class="or-separator-text" style="color:cadetblue"/>
                                <br />
                                <asp:DropDownList class="form-group" ID="ddlCidades" runat="server" Visible="False"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rdvDdlCidades" runat="server" ControlToValidate="ddlCidades" 
                                    InitialValue="----Selecione a Cidade ----" ErrorMessage="Selecione uma Cidade!" Display="Dynamic" 
                                    class="or-separator-text" style="color:cadetblue"/><br />
                            </div>
							<asp:Button runat="server" Text="Confirmar" CssClass="btn" ID="btnCadastrar"
                                OnClick="btnCadastrar_Click"></asp:Button>
						</form>
                        
                        <% if(_controleErrosCadastro) { %>
                        <p class="text-primary"><strong>Não foi possível enviar sua solicitação:</strong><br /> Corrija os erros abaixo e tente novamente.</p>
                            <ul class="list-group">
                                <%
                                foreach (string modelError in _erros)
                                {%>
                                <li class="list-group-item"> <%= modelError %></li>
                                 <% }%>
                            </ul>
                        <% } %>
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

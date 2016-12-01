<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="404-page.aspx.cs" Inherits="CirWebView.View._404_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main" class="clearfix text-center">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="found-section section">
						<h1>404</h1>
						<h2>Página não encontrada</h2>
						<p>Não conseguimos encontrar a página que você está procurando.</p>
						<a href="../Default.aspx" class="btn btn-primary">Home</a>
					</div>					
				</div>
			</div>
		</div><!-- container -->
	</section><!-- main -->
	
</asp:Content>

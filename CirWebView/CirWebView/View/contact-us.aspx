<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="CirWebView.View.contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section id="main" class="clearfix contact-us">
		<div class="container">

			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="../Default.aspx">Home</a></li>
				<li>Contato</li>
			</ol><!-- breadcrumb -->						
			<h2 class="title">Envie-nos sua mensagem</h2>

			<!-- gmap -->
			<!--<div id="gmap"></div>-->

			<div class="corporate-info">
				<div class="row">
					<!-- contact-info -->
					<div class="col-sm-4">
						<div class="contact-info">

							<h2>CIR</h2>
							<address>
								<p><strong>Endereço: </strong>Rua do Fogo, Liberdade, Campina Grande</p>
								<p><strong>Telefone:</strong> <a href="#">(83) 98888-7890</a></p>
								<p><strong>Email: </strong><a href="#">contato@cir.com.br</a></p>
							</address>

							<ul class="social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div><!-- contact-info -->
					
					<!-- feedback -->
					<div class="col-sm-8">
						<div class="feedback">
							<h2>Conte-nos o que deseja</h2>
							<form id="contact-form" class="contact-form" name="contact-form" method="post" action="#">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" required="required" placeholder="Nome">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<input type="email" class="form-control" required="required" placeholder="Email">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<input type="text" class="form-control" required="required" placeholder="Assunto">
										</div> 
									</div> 
									
									<div class="col-sm-12">
										<div class="form-group">
											<textarea name="message" id="message" required="required" class="form-control" rows="7" placeholder="Mensagem"></textarea>
										</div>             
									</div>     
								</div>
								<div class="form-group">
									<button type="submit" class="btn">Enviar</button>
								</div>
							</form>
						</div>				
					</div><!-- feedback -->				
				</div><!-- row -->
			</div>
		</div><!-- container -->
	</section><!-- main -->
</asp:Content>

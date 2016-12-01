<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="ad-post-details.aspx.cs" Inherits="CirWebView.View.ad_post_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section id="main" class="clearfix ad-details-page">
		<div class="container">
		
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="../Default.aspx">Home</a></li>
					<li>Anuncie</li>
				</ol><!-- breadcrumb -->						
				<h2 class="title">Vidros</h2>
			</div><!-- banner -->

			<div class="adpost-details">
				<div class="row">	
					<div class="col-md-8">
						<form action="#">
							<fieldset>
								<div class="section postdetails">
									<h4>Anunciar um item <span class="pull-right">* Campo obrigatório</span></h4>
									<div class="form-group selected-product">
										<ul class="select-category list-inline">
											<li>
												<a href="ad-post.aspx">
													<span class="select">
														<img src="images/icon/2.png" alt="Images" class="img-responsive">
													</span>
													Vidros
												</a>
											</li>

											<li class="active">
												<a href="#">Garrafas</a>
											</li>
										</ul>
										<a class="edit" href="#"><i class="fa fa-pencil"></i>Editar</a>
									</div>
									<div class="row form-group">
										<label class="col-sm-3">Tipo de Anúncio<span class="required">*</span></label>
										<div class="col-sm-9 user-type">
											<input type="radio" name="sellType" value="newsell" id="newsell"> <label for="newsell">Eu quero vender </label>
											<input type="radio" name="sellType" value="newbuy" id="newbuy"> <label for="newbuy">Eu queo comprar</label>	
										</div>
									</div>
									<div class="row form-group add-title">
										<label class="col-sm-3 label-title">Título do Anúncio<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="text" placeholder="Garras de cerveja e refrigerantes ">
										</div>
									</div>
									<div class="row form-group add-image">
										<label class="col-sm-3 label-title">Fotos para o seu anúncio <span>(Esta será a sua foto da capa)</span> </label>
										<div class="col-sm-9">
											<h5><i class="fa fa-upload" aria-hidden="true"></i>Selecione fotos para Upload / Arraste e solte <span>Você pode escolher multiplas imagens</span></h5>
											<div class="upload-section">
												<label class="upload-image" for="upload-image-one">
													<input type="file" id="upload-image-one">
												</label>										

												<label class="upload-image" for="upload-image-two">
													<input type="file" id="upload-image-two">
												</label>											
												<label class="upload-image" for="upload-image-three">
													<input type="file" id="upload-image-three">
												</label>										

												<label class="upload-image" for="upload-imagefour">
													<input type="file" id="upload-imagefour">
												</label>
											</div>	
										</div>
									</div>
									<div class="row form-group select-condition">
										<label class="col-sm-3">Condição<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="radio" name="itemCon" value="new" id="new"> 
											<label for="new">Valor Unitário</label>
											<input type="radio" name="itemCon" value="used" id="used"> 
											<label for="used">Valor do Montante</label>
										</div>
									</div>
									<div class="row form-group select-price">
										<label class="col-sm-3 label-title">Preço<span class="required">*</span></label>
										<div class="col-sm-9">
											<label>R$</label>
											<input type="text" class="form-control" id="text1">
											<input type="radio" name="price" value="negotiable" id="negotiable">
											<label for="negotiable">Negociável </label>
										</div>
									</div>
									
									<div class="row form-group item-description">
										<label class="col-sm-3 label-title">Descrição<span class="required">*</span></label>
										<div class="col-sm-9">
											<textarea class="form-control" id="textarea" placeholder="Escreva algumas linhas sobre seu produto" rows="8"></textarea>		
										</div>
									</div>
									<div class="row">
										<div class="col-sm-9 col-sm-offset-3">
											<p>5000 characters left</p>
										</div>
									</div>								
								</div><!-- section -->
								
								
								<div class="section">
									<h4>Faça o seu anúncio premium </h4>
									<p>Mais respostas significa que os compradores mais interessados. Com lotes de compradores interessados, você terá uma melhor chance de vender para o preço que você deseja. <a href="#">Leia mais</a></p>
									<ul class="premium-options">
										<li class="premium">
											<input type="radio" name="premiumOption" value="day-one" id="day-one">
											<label for="day-one">Grátis</label>
											<span>R$0,00</span>
										</li>
										<li class="premium">
											<input type="radio" name="premiumOption" value="day-two" id="day-two">
											<label for="day-two">Adicionado aos TOPs por 3 dias</label>
											<span>R$9,99</span>
										</li>
										<li class="premium">
											<input type="radio" name="premiumOption" value="day-three" id="day-three">
											<label for="day-three">Adicionado aos TOPs por 7 dias</label>
											<span>R$19,99</span>
										</li>
										<li class="premium">
											<input type="radio" name="premiumOption" value="day-four" id="day-four">
											<label for="day-four">Daily Bump Up for 15 days</label>
											<span>R$29,99</span>
										</li>								
									</ul>
								</div><!-- section -->
								
								<div class="checkbox section agreement">
									<label for="send">
										<input type="checkbox" name="send" id="send">
										Ao clicar em "Postar", você concorda com os nossos  <a href="#">Termos de Uso</a> e <a href="#">Política</a>  de Privacidade e reconhecer que você é o legítimo proprietário deste item e está usando o CIR para encontrar um verdadeiro comprador.
									</label>
									<button type="submit" class="btn btn-primary"><a href="published.aspx">Postar</button>
								</div><!-- section -->
								
							</fieldset>
						</form><!-- form -->	
					</div>
				

					<!-- quick-rules -->	
					<div class="col-md-4">
						<div class="section quick-rules">
							<h4>Regras rápidas</h4>
							<p class="lead">Postar no <a href="#">cir.com.br</a> é GRÀTIS! No entanto, todos os anúncios devem seguir nossas regras:</p>

							<ul>
								<li>Certifique-se de que você postar na categoria correta.</li>
								<li>Não publicar o mesmo anúncio mais de uma vez ou repassar um anúncio dentro de 48 horas.</li>
								<li>Não faça upload de fotos com marcas d'água.</li>
								<li>Não postar anúncios contendo vários itens a menos que seja um pacote.</li>
								<li>Não coloque seu e-mail ou números de telefone no título ou descrição.</li>
								
							</ul>
						</div>
					</div><!-- quick-rules -->	
				</div><!-- photos-ad -->				
			</div>	
		</div><!-- container -->
	</section><!-- main -->
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="ad-post.aspx.cs" Inherits="CirWebView.View.ad_post" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- post-page -->
	<section id="main" class="clearfix ad-post-page">
		<div class="container">

			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li>Anuncie</li>
				</ol><!-- breadcrumb -->						
				<h2 class="title">Anuncie grátis</h2>

                <asp:Label runat="server" id="lblSession" class="or-separator-text" style="color:chartreuse"/>
			</div><!-- banner -->

				
				
			<div id="ad-post">
				<div class="row category-tab">	
					<div class="col-md-4 col-sm-6">
						<div class="section cat-option select-category post-option">
							<h4>Selecione a Categoria</h4>
							<ul role="tablist">
								<li><a href="#cat1" aria-controls="cat1" role="tab" data-toggle="tab">
									<span class="select">
										<img src="images/icon/1.png" alt="Images" class="img-">
									</span>
									Latas
								</a></li>

								<li class="active link-active"><a href="#cat2" aria-controls="cat2" role="tab" data-toggle="tab">
									<span class="select">
										<img src="images/icon/2.png" alt="Images" class="img-responsive">
									</span>
									Vidros
								</a></li>
								
								<li><a href="#cat3" aria-controls="cat3" role="tab" data-toggle="tab">
									<span class="select">
										<img src="images/icon/3.png" alt="Images" class="img-responsive">
									</span>
									Plásticos
								</a></li>
								
								<li><a href="#cat4" aria-controls="cat4" role="tab" data-toggle="tab">
									<span class="select">
										<img src="images/icon/4.png" alt="Images" class="img-responsive">
									</span>
									Eletrônicos
								</a></li>
								
								<li><a href="#cat5" aria-controls="cat5" role="tab" data-toggle="tab">
									<span class="select">
										<img src="images/icon/5.png" alt="Images" class="img-responsive">
									</span>
									Papéis
								</a></li>
								
							</ul>
						</div>
					</div>
					
					<!-- Tab panes -->
					<div class="col-md-4 col-sm-6">
						<div class="section tab-content subcategory post-option">
							<h4>Selecione uma sub-categoria</h4>
							<div role="tabpanel" class="tab-pane" id="cat1">
								<ul>
									<li><a href="javascript:void(0)">Latas de Refrigenrantes</a></li>
									<li><a href="javascript:void(0)">Alumínio</a></li>
									<li><a href="javascript:void(0)">Ferro</a></li>
									<li><a href="javascript:void(0)">Zinco</a></li>
									<li><a href="javascript:void(0)">Cobre</a></li>
									<li><a href="javascript:void(0)">Outros</a></li>
								</ul>	
							</div>
							<div role="tabpanel" class="tab-pane active" id="cat2">
								<ul>
									<li><a href="javascript:void(0)">Garrafas</a></li>
									<li><a href="javascript:void(0)">Espelhos</a></li>
									<li><a href="javascript:void(0)">Vidros Temperados</a></li>
									<li><a href="javascript:void(0)">Blindados</a></li>
									<li><a href="javascript:void(0)">Outros</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat3">
								<ul>
									<li><a href="javascript:void(0)">Garrafas PET</a></li>
									<li><a href="javascript:void(0)">Plásticos Virgem</a></li>
									<li><a href="javascript:void(0)">Plásticos Reciclados</a></li>
									<li><a href="javascript:void(0)">Embalagens</a></li>
									<li><a href="javascript:void(0)">Outros</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat4">
								<ul>
									<li><a href="javascript:void(0)">Televisores</a></li>
									<li><a href="javascript:void(0)">Eletrodomesticos</a></li>
									<li><a href="javascript:void(0)">Baterias</a></li>
									<li><a href="javascript:void(0)">Outros</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat5">
								<ul>
									<li><a href="javascript:void(0)">Jornais</a></li>
									<li><a href="javascript:void(0)">Revistas</a></li>
									<li><a href="javascript:void(0)">Reciclados</a></li>
									<li><a href="javascript:void(0)">Outros</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat6">
								<ul>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat7">
								<ul>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat8">
								<ul>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat9">
								<ul>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat10">
								<ul>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
								</ul>
							</div>
							<div role="tabpanel" class="tab-pane" id="cat11">
								<ul>
									<li><a href="javascript:void(0)">Sub Category Item</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="section next-stap post-option">
							<h2>Postagem será publicada em <span>Alguns minutos</span></h2>
							<p>Por favor, NÃO postar vários anúncios para os mesmos itens. Todos duplicado, spam e anúncios erroneamente classificados serão excluídos.</p>
							<div class="btn-section">
								<a href="ad-post-details.html" class="btn">Próximo</a>
								<a href="#" class="btn-info">ou Cancelar</a>
							</div>
						</div>
					</div><!-- next-stap -->
				</div>
			</div>				
		</div><!-- container -->
	</section><!-- post-page -->	
</asp:Content>

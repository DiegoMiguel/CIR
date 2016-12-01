<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="CirWebView.View.categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section id="main" class="clearfix category-page">
		<div class="container">
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="../Default.aspx">Home</a></li>
					<li>Anúncios</li>
				</ol><!-- breadcrumb -->				
			</div>
			<div class="banner">
			
				<!-- banner-form -->
				<div class="banner-form">
					<form action="#">
						<!-- category-change -->
						<div class="dropdown category-dropdown">						
							<a data-toggle="dropdown" href="#"><span class="change-text"><< Categoria >></span> <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu category-change">
								<li><a href="#">Papéis     </a></li>
								<li><a href="#">Plásticos  </a></li>
								<li><a href="#">Vidros     </a></li>
								<li><a href="#">Eletrônicos  </a></li>
								<li><a href="#">Latas</a></li>
							</ul>								
						</div><!-- category-change -->
					
						<input type="text" class="form-control" placeholder="Digite sua Busca">
						<button type="submit" class="form-control" value="Search">Buscar</button>
					</form>
				</div><!-- banner-form -->
			</div>
	
			<div class="category-info">	
				<div class="row">
					<!-- accordion-->
					<div class="col-md-3 col-sm-4">
						<div class="accordion">
							<!-- panel-group -->
							<div class="panel-group" id="accordion">
							 	
								<!-- panel -->
								<div class="panel-default panel-faq">
									<!-- panel-heading -->
									<div class="panel-heading">
										<a data-toggle="collapse" data-parent="#accordion" href="#accordion-one">
											<h4 class="panel-title">Categorias<span class="pull-right"><i class="fa fa-minus"></i></span></h4>
										</a>
									</div><!-- panel-heading -->

									<div id="accordion-one" class="panel-collapse collapse in">
										<!-- panel-body -->
										<div class="panel-body">
											<ul>
												<li><a href="#">Papéis<span>(1029)</span></a></li>
												<li><a href="#">Plásticos<span>(1228)</span></a></li>
												<li><a href="#">Vidros<span>(178)</span></a></li>
												<li><a href="#">Eletrônicos<span>(7163)</span></a></li>
												<li><a href="#">Latas<span>(8709)</span></a></li>
												<li><a href="#">Outros<span>(3129)</span></a></li>
											</ul>
										</div><!-- panel-body -->
									</div>
								</div><!-- panel -->

								   
							 </div><!-- panel-group -->
						</div>
					</div><!-- accordion-->

					<!-- recommended-ads -->
					<div class="col-sm-8 col-md-7">				
						<div class="section recommended-ads">
							<!-- featured-top -->
							<div class="featured-top">
								<h4>Recomendados para você</h4>
								<div class="dropdown pull-right">
								
								<!-- category-change -->
								<div class="dropdown category-dropdown">
									<h5>Ordenar</h5>						
									<a data-toggle="dropdown" href="#"><span class="change-text">Popular</span><i class="fa fa-caret-square-o-down"></i></a>
									<ul class="dropdown-menu category-change">
										<li><a href="#">Preço</a></li>
										<li><a href="#">Postagem</a></li>
									</ul>								
								</div><!-- category-change -->														
								</div>							
							</div><!-- featured-top -->	

							

							<!-- ad-item -->
							<div class="ad-item row">
								<div class="item-image-box col-sm-4">
									<!-- item-image -->
									<div class="item-image">
										<a href="details.aspx"><img src="images/trending/2.jpg" alt="Image" class="img-responsive"></a>
										<span class="featured-ad">Destaque</span>
										
									</div><!-- item-image -->
								</div><!-- item-image-box -->
								
								<!-- rending-text -->
								<div class="item-info col-sm-8">
									<!-- ad-info -->
									<div class="ad-info">
										<h3 class="item-price">R$50,00 <span>(Negociável)</span></h3>
										<h4 class="item-title"><a href="#">Jornais e revistas velhas</a></h4>
										<div class="item-cat">
											<span><a href="#">Papéis</a></span> /
											<span><a href="#">Jornais</a></span>
										</div>										
									</div><!-- ad-info -->
									
									<!-- ad-meta -->
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated"><a href="#">12/10/2016 23:33 </a></span>
											<a href="#" class="tag"><i class="fa fa-tags"></i> Valor do Montante</a>
										</div>									
										<!-- item-info-right -->
										<div class="user-option pull-right">
											<a href="#" data-toggle="tooltip" data-placement="top" title="Campina Grande, PB"><i class="fa fa-map-marker"></i> </a>
											<a class="online" href="#" data-toggle="tooltip" data-placement="top" title="Profissional"><i class="fa fa-suitcase"></i> </a>											
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
										<h3 class="item-price">R$150,00 <span>(Negociável)</span></h3>
										<h4 class="item-title"><a href="#">Fardo de Papel prençado</a></h4>
										<div class="item-cat">
											<span><a href="#">Papéisis</a></span> /
											<span><a href="#">Prensado</a></span>
										</div>										
									</div><!-- ad-info -->									
																	
									<!-- ad-meta -->
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated"><a href="#">22/10/2016 12:55 </a></span>
											<a href="#" class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
										</div>									
										<!-- item-info-right -->
										<div class="user-option pull-right">
											<a href="#" data-toggle="tooltip" data-placement="top" title="Queimadas, PB"><i class="fa fa-map-marker"></i> </a>
											<a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
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
										<span class="featured-ad">Destaque</span>
									</div><!-- item-image -->
								</div><!-- item-image-box -->
								
								<!-- rending-text -->
								<div class="item-info col-sm-8">
									<!-- ad-info -->
									<div class="ad-info">
										<h3 class="item-price">R$5,00</h3>
										<h4 class="item-title"><a href="#">Garrafas de bebida de vidro </a></h4>
										<div class="item-cat">
											<span><a href="#">Vidros</a></span> /
											<span><a href="#">Garrafas</a></span>
										</div>										
									</div><!-- ad-info -->
																		
									<!-- ad-meta -->
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated"><a href="#">12/10/2016 22:10 </a></span>
											<a href="#" class="tag"><i class="fa fa-tags"></i> Valor Unitário</a>
										</div>									
										<!-- item-info-right -->
										<div class="user-option pull-right">
											<a href="#" data-toggle="tooltip" data-placement="top" title="Remígio, PB"><i class="fa fa-map-marker"></i> </a>
											<a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>											
										</div><!-- item-info-right -->
									</div><!-- ad-meta -->
								</div><!-- item-info -->
							</div><!-- ad-item -->					
							
							
							
							
							<!-- pagination  -->
							<div class="text-center">
								<ul class="pagination ">
									<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
									<li><a href="#">1</a></li>
									<li class="active"><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">...</a></li>
									<li><a href="#">10</a></li>
									<li><a href="#">20</a></li>
									<li><a href="#">30</a></li>
									<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>			
								</ul>
							</div><!-- pagination  -->					
						</div>
					</div><!-- recommended-ads -->

					<div class="col-md-2 hidden-xs hidden-sm">
						<div class="advertisement text-center">
							<a href="#"><img src="images/ads/2.jpg" alt="" class="img-responsive"></a>
						</div>
					</div>
				</div>	
			</div>
		</div><!-- container -->
	</section><!-- main -->
</asp:Content>

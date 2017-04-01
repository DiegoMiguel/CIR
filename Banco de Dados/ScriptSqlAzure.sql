SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[ContextKey] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cidades](
	[Cidade_id] [int] IDENTITY(1,1) NOT NULL,
	[UF] [varchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[Cidade] [varchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cidade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Usuario_id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](45) COLLATE Latin1_General_CI_AS NOT NULL,
	[CPF_CNPJ] [varchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[Cidade_id] [int] NOT NULL,
	[Data_Cadastro] [date] NULL,
	[Email] [varchar](45) COLLATE Latin1_General_CI_AS NOT NULL,
	[Senha] [varchar](16) COLLATE Latin1_General_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[Usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[Categoria_Produto_id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Categoria_Produto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anuncio](
	[Anuncio_id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Data] [date] NOT NULL,
	[Descricao] [varchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Tipo_Categoria] [int] NOT NULL,
	[Imagem] [text] COLLATE Latin1_General_CI_AS NOT NULL,
	[Categoria_Produto_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Anuncio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[Email] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[SecurityStamp] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[PhoneNumber] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[ClaimType] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[ClaimValue] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProviderKey] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[UserId] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[RoleId] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_master](
	[Chat_Master_id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id_Anuncio] [int] NOT NULL,
	[Anuncio_id] [int] NOT NULL,
	[Usuario_Chat] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Chat_Master_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_detalhe](
	[Chat_Detalhe_id] [int] IDENTITY(1,1) NOT NULL,
	[Chat_Master_id] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Chat_Anunciante] [text] COLLATE Latin1_General_CI_AS NOT NULL,
	[Chat_Usuario] [varchar](45) COLLATE Latin1_General_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Chat_Detalhe_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[denuncias](
	[Denuncia_id] [int] IDENTITY(1,1) NOT NULL,
	[Anuncio_id] [int] NOT NULL,
	[Descricao] [text] COLLATE Latin1_General_CI_AS NOT NULL,
	[Data] [date] NOT NULL,
	[Usuario_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Denuncia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preferencias](
	[preferencia_id] [int] IDENTITY(1,1) NOT NULL,
	[categoria_produto_id] [int] NOT NULL,
	[usuario_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[preferencia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view v_chat
as
select cm.Chat_Master_id, u.Usuario_id Usuario_id_Anuncio, u.Nome Usuario_Anuncio,u2.Usuario_id Usuario_id_Chat, u2.Nome Usuario_Chat,cd.Data,cd.Chat_Anunciante,cd.Chat_Usuario from chat_master cm
inner join usuarios u on u.Usuario_id=cm.Usuario_id_Anuncio
inner join usuarios u2 on u2.Usuario_id=cm.Usuario_Chat
inner join chat_detalhe cd on cd.Chat_Master_id=cm.Chat_Master_id
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view v_usuarios
as
select u.Usuario_id,u.Nome,u.CPF_CNPJ,u.Data_Cadastro,u.Email,u.Senha,c.Cidade,c.UF from usuarios u
inner join cidades c on c.Cidade_id = u.Usuario_id
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Cidade] FOREIGN KEY([Cidade_id])
REFERENCES [dbo].[cidades] ([Cidade_id])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_Cidade]
GO
ALTER TABLE [dbo].[anuncio]  WITH CHECK ADD  CONSTRAINT [FK_catprod] FOREIGN KEY([Categoria_Produto_id])
REFERENCES [dbo].[categoria] ([Categoria_Produto_id])
GO
ALTER TABLE [dbo].[anuncio] CHECK CONSTRAINT [FK_catprod]
GO
ALTER TABLE [dbo].[anuncio]  WITH CHECK ADD  CONSTRAINT [FK_usr_anuncio] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[usuarios] ([Usuario_id])
GO
ALTER TABLE [dbo].[anuncio] CHECK CONSTRAINT [FK_usr_anuncio]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[chat_master]  WITH CHECK ADD  CONSTRAINT [FK_anuncio_chat] FOREIGN KEY([Anuncio_id])
REFERENCES [dbo].[anuncio] ([Anuncio_id])
GO
ALTER TABLE [dbo].[chat_master] CHECK CONSTRAINT [FK_anuncio_chat]
GO
ALTER TABLE [dbo].[chat_master]  WITH CHECK ADD  CONSTRAINT [FK_usr_chat] FOREIGN KEY([Usuario_id_Anuncio])
REFERENCES [dbo].[usuarios] ([Usuario_id])
GO
ALTER TABLE [dbo].[chat_master] CHECK CONSTRAINT [FK_usr_chat]
GO
ALTER TABLE [dbo].[chat_master]  WITH CHECK ADD  CONSTRAINT [FK_usr_chat2] FOREIGN KEY([Usuario_Chat])
REFERENCES [dbo].[usuarios] ([Usuario_id])
GO
ALTER TABLE [dbo].[chat_master] CHECK CONSTRAINT [FK_usr_chat2]
GO
ALTER TABLE [dbo].[chat_detalhe]  WITH CHECK ADD  CONSTRAINT [FK_master_id] FOREIGN KEY([Chat_Master_id])
REFERENCES [dbo].[chat_master] ([Chat_Master_id])
GO
ALTER TABLE [dbo].[chat_detalhe] CHECK CONSTRAINT [FK_master_id]
GO
ALTER TABLE [dbo].[denuncias]  WITH CHECK ADD  CONSTRAINT [FK_anunciodenuncia] FOREIGN KEY([Anuncio_id])
REFERENCES [dbo].[anuncio] ([Anuncio_id])
GO
ALTER TABLE [dbo].[denuncias] CHECK CONSTRAINT [FK_anunciodenuncia]
GO
ALTER TABLE [dbo].[denuncias]  WITH CHECK ADD  CONSTRAINT [FK_usrdenuncia] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[usuarios] ([Usuario_id])
GO
ALTER TABLE [dbo].[denuncias] CHECK CONSTRAINT [FK_usrdenuncia]
GO
ALTER TABLE [dbo].[preferencias]  WITH CHECK ADD  CONSTRAINT [FK_categoria] FOREIGN KEY([categoria_produto_id])
REFERENCES [dbo].[categoria] ([Categoria_Produto_id])
GO
ALTER TABLE [dbo].[preferencias] CHECK CONSTRAINT [FK_categoria]
GO
ALTER TABLE [dbo].[preferencias]  WITH CHECK ADD  CONSTRAINT [FK_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios] ([Usuario_id])
GO
ALTER TABLE [dbo].[preferencias] CHECK CONSTRAINT [FK_usuario]
GO
-- BCPArgs:1:[dbo].[__MigrationHistory] in "c:\SQLAzureMW\BCPData\dbo.__MigrationHistory.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:1000:[dbo].[cidades] in "c:\SQLAzureMW\BCPData\dbo.cidades.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:12:[dbo].[usuarios] in "c:\SQLAzureMW\BCPData\dbo.usuarios.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:3:[dbo].[categoria] in "c:\SQLAzureMW\BCPData\dbo.categoria.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:2:[dbo].[anuncio] in "c:\SQLAzureMW\BCPData\dbo.anuncio.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:9:[dbo].[AspNetUsers] in "c:\SQLAzureMW\BCPData\dbo.AspNetUsers.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:1:[dbo].[chat_master] in "c:\SQLAzureMW\BCPData\dbo.chat_master.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:5:[dbo].[chat_detalhe] in "c:\SQLAzureMW\BCPData\dbo.chat_detalhe.dat" -E -n -C RAW -b 1000 -a 4096
GO
-- BCPArgs:1:[dbo].[denuncias] in "c:\SQLAzureMW\BCPData\dbo.denuncias.dat" -E -n -C RAW -b 1000 -a 4096
GO


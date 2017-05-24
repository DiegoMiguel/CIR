/* Deletando coluna Tipo_Categoria, já existe uma coluna para ligação com categoria*/
ALTER TABLE dbo.anuncio DROP COLUMN Tipo_Categoria ;  

/*Campo Imagem e Descricao em anuncio podem ser nulos*/
ALTER TABLE [dbo].[anuncio] ALTER COLUMN [Descricao] VARCHAR (255) NULL;
ALTER TABLE [dbo].[anuncio] ALTER COLUMN [Imagem] TEXT NULL;
GO

/* Formatando o campo de data em anúncio
 para Data e Hora*/
ALTER TABLE [dbo].[anuncio] DROP COLUMN [Data];
GO
ALTER TABLE [dbo].[anuncio]
    ADD [Data] DATETIME DEFAULT getDate() NOT NULL;
GO

/* Adicionando tabela Thumbnail em anuncio */
ALTER TABLE [dbo].[anuncio]
    ADD [Thumbnail] TEXT NULL;
GO

/* Alterando tabelas para aceitar ON DELETE CASCADE */
ALTER TABLE [dbo].[anuncio] DROP CONSTRAINT [FK_usr_anuncio];
GO
ALTER TABLE [dbo].[anuncio]
    ADD CONSTRAINT [FK_usr_anuncio] FOREIGN KEY ([Usuario_id]) REFERENCES [dbo].[usuarios] ([Usuario_id]) ON DELETE CASCADE;
	GO

ALTER TABLE [dbo].[denuncias] DROP CONSTRAINT [FK_anunciodenuncia];
GO
ALTER TABLE [dbo].[denuncias]
    ADD CONSTRAINT [FK_anunciodenuncia] FOREIGN KEY ([Anuncio_id]) REFERENCES [dbo].[anuncio] ([Anuncio_id]) ON DELETE CASCADE;
GO

ALTER TABLE [dbo].[preferencias] DROP CONSTRAINT [FK_usuario];
GO
ALTER TABLE [dbo].[preferencias]
    ADD CONSTRAINT [FK_usuario] FOREIGN KEY ([usuario_id]) REFERENCES [dbo].[usuarios] ([Usuario_id]) ON DELETE CASCADE;
	GO

	ALTER TABLE [dbo].[chat_detalhe] DROP CONSTRAINT [FK_master_id];
GO
ALTER TABLE [dbo].[chat_master] DROP CONSTRAINT [FK_anuncio_chat];
GO
ALTER TABLE [dbo].[chat_detalhe]
    ADD CONSTRAINT [FK_master_id] FOREIGN KEY ([Chat_Master_id]) REFERENCES [dbo].[chat_master] ([Chat_Master_id]) ON DELETE CASCADE;
	GO
ALTER TABLE [dbo].[chat_master]
    ADD CONSTRAINT [FK_anuncio_chat] FOREIGN KEY ([Anuncio_id]) REFERENCES [dbo].[anuncio] ([Anuncio_id]) ON DELETE CASCADE;



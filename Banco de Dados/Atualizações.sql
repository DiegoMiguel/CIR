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

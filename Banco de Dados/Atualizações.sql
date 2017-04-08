/* Deletando coluna Tipo_Categoria, já existe uma coluna para ligação com categoria*/
ALTER TABLE dbo.anuncio DROP COLUMN Tipo_Categoria ;  

/* Formatando o campo de data em anúncio
 para Data e Hora*/
 ALTER TABLE [dbo].[anuncio] DROP CONSTRAINT [DF__anuncio__Data__48CFD27E];
 GO
ALTER TABLE [dbo].[anuncio] DROP COLUMN [Data];
GO
ALTER TABLE [dbo].[anuncio]
    ADD [Data] DATETIME DEFAULT getDate() NOT NULL;
GO

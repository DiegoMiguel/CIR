/* Deletando coluna Tipo_Categoria, j� existe uma coluna para liga��o com categoria*/
ALTER TABLE dbo.anuncio DROP COLUMN Tipo_Categoria ;  

/* Formatando o campo de data em an�ncio
 para Data e Hora*/
 ALTER TABLE [dbo].[anuncio] DROP CONSTRAINT [DF__anuncio__Data__48CFD27E];
 GO
ALTER TABLE [dbo].[anuncio] DROP COLUMN [Data];
GO
ALTER TABLE [dbo].[anuncio]
    ADD [Data] DATETIME DEFAULT getDate() NOT NULL;
GO

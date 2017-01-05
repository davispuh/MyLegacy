
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 01/17/2012 14:11:26
-- Generated from EDMX file: Data.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LocalData];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'MathTable'
CREATE TABLE [dbo].[MathTable] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Equation] nvarchar(15)  NOT NULL,
    [Answer] float  NOT NULL
);
GO

-- Creating table 'SentenceTable'
CREATE TABLE [dbo].[SentenceTable] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Sentence] nvarchar(100)  NOT NULL,
    [Word] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'VariantTable'
CREATE TABLE [dbo].[VariantTable] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Variant] int  NOT NULL,
    [SentencesId] int  NOT NULL
);
GO

-- Creating table 'HallOfFameTable'
CREATE TABLE [dbo].[HallOfFameTable] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(20)  NOT NULL,
    [Correct] int  NOT NULL,
    [GameType] tinyint  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'MathTable'
ALTER TABLE [dbo].[MathTable]
ADD CONSTRAINT [PK_MathTable]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SentenceTable'
ALTER TABLE [dbo].[SentenceTable]
ADD CONSTRAINT [PK_SentenceTable]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VariantTable'
ALTER TABLE [dbo].[VariantTable]
ADD CONSTRAINT [PK_VariantTable]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HallOfFameTable'
ALTER TABLE [dbo].[HallOfFameTable]
ADD CONSTRAINT [PK_HallOfFameTable]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SentencesId] in table 'VariantTable'
ALTER TABLE [dbo].[VariantTable]
ADD CONSTRAINT [FK_SentencesVariants]
    FOREIGN KEY ([SentencesId])
    REFERENCES [dbo].[SentenceTable]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SentencesVariants'
CREATE INDEX [IX_FK_SentencesVariants]
ON [dbo].[VariantTable]
    ([SentencesId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

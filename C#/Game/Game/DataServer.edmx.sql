
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 01/17/2012 06:05:32
-- Generated from EDMX file: Data.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DataServer];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[MathTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MathTable];
GO
IF OBJECT_ID(N'[dbo].[WordTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WordTable];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'MathTable'
CREATE TABLE [dbo].[MathTable] (
    [Id] uniqueidentifier  NOT NULL,
    [Question] nvarchar(20)  NOT NULL,
    [Answer] float  NOT NULL
);
GO

-- Creating table 'WordTable'
CREATE TABLE [dbo].[WordTable] (
    [Id] uniqueidentifier  NOT NULL,
    [Question] nvarchar(100)  NOT NULL,
    [Answer] nvarchar(20)  NOT NULL
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

-- Creating primary key on [Id] in table 'WordTable'
ALTER TABLE [dbo].[WordTable]
ADD CONSTRAINT [PK_WordTable]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

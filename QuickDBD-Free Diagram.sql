-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/42INVD
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Campaign] (
    [Category] int  NOT NULL ,
    [Count] string  NOT NULL ,
    CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED (
        [Category] ASC
    )
)

CREATE TABLE [Category] (
    [Category_id] int  NOT NULL ,
    [Category_name] int  NOT NULL ,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED (
        [Category_id] ASC
    )
)

CREATE TABLE [Contact] (
    [first_name] int  NOT NULL ,
    [last_name] VARCHAR(100)  NOT NULL ,
    [email] VARCHAR(100)  NOT NULL 
)

CREATE TABLE [Subcategory] (
    [subcategory_id] int  NOT NULL ,
    [subcategory_name] int  NOT NULL ,
    CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

CREATE INDEX [idx_Campaign_Count]
ON [Campaign] ([Count])

COMMIT TRANSACTION QUICKDBD
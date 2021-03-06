USE [ASPCRUD]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5.08.2017 16:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ContactCreateOrUpdate]    Script Date: 5.08.2017 16:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ContactCreateOrUpdate]
@ConatctID int,
@Name varchar(50),
@Mobile varchar(50),
@Address varchar(250)
AS
BEGIN
IF(@ConatctID=0)
	BEGIN
	INSERT INTO Contact(Name,Mobile,Address)
	VALUES(@Name,@Mobile,@Address)
	END
ELSE
	BEGIN
	UPDATE Contact
	SET
		Name = @Name,
		Mobile = @Mobile,
		Address = @Address
	WHERE ContactID= @ConatctID
	END

END


GO
/****** Object:  StoredProcedure [dbo].[ContactDeleteByID]    Script Date: 5.08.2017 16:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ContactDeleteByID]
@ContactID int
AS
	BEGIN
	DELETE FROM Contact
	WHERE ContactID = @ContactID
	END

GO
/****** Object:  StoredProcedure [dbo].[ContactViewAll]    Script Date: 5.08.2017 16:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ContactViewAll]
AS
	BEGIN
	SELECT *
	FROM Contact
	END

GO
/****** Object:  StoredProcedure [dbo].[ContactViewByID]    Script Date: 5.08.2017 16:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ContactViewByID]
@ContactID int
As
	BEGIN
	SELECT *
	FROm Contact
	WHERE ContactID = @ContactID
	END


GO

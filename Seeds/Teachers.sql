SET IDENTITY_INSERT [dbo].[Teachers] ON
INSERT INTO [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (1, N'Jack ', CAST(15000.0000 AS Money), N'Underhill')
INSERT INTO [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (2, N'Dave', CAST(18000.0000 AS Money), N'McQueen')
INSERT INTO [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (3, N'Paul', CAST(14500.0000 AS Money), N'Robinson')
SET IDENTITY_INSERT [dbo].[Teachers] OFF

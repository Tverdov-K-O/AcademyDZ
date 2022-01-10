SET IDENTITY_INSERT [dbo].[Departments] ON
INSERT INTO [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (1, CAST(50000.0000 AS Money), N'Software
Development', 1)
INSERT INTO [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (2, CAST(100000.0000 AS Money), N'Mental Illness', 2)
INSERT INTO [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (3, CAST(80000.0000 AS Money), N'Laying the Foundation', 3)
SET IDENTITY_INSERT [dbo].[Departments] OFF

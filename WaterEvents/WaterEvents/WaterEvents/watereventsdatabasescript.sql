USE [mtweb_dk_db]
GO
/****** Object:  Table [dbo].[umbracoUserType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userTypeAlias] [nvarchar](50) NULL,
	[userTypeName] [nvarchar](255) NOT NULL,
	[userTypeDefaultPermissions] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoUserType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoUserType] ON
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F7')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (2, N'writer', N'Writer', N'CAH:F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (4, N'translator', N'Translator', N'AF')
SET IDENTITY_INSERT [dbo].[umbracoUserType] OFF
/****** Object:  Table [dbo].[umbracoUserLogins]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogins](
	[contextID] [uniqueidentifier] NOT NULL,
	[userID] [int] NOT NULL,
	[timeout] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [nvarchar](200) NULL,
	[ParentId] [int] NULL,
	[group] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTaskType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTaskType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON
INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON
INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trashed] [bit] NOT NULL,
	[parentID] [int] NOT NULL,
	[nodeUser] [int] NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-97, 0, -1, 0, 1, N'-1,-97', 2, N'aa2c52a0-ce87-4e65-a47c-7df09358585d', N'List View - Members', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B60 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-96, 0, -1, 0, 1, N'-1,-96', 2, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B5B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-95, 0, -1, 0, 1, N'-1,-95', 2, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B56 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 1, N'-1,-92', 35, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27AF8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 1, N'-1,-90', 34, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27AFD AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 1, N'-1,-89', 33, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textbox multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B0B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 1, N'-1,-88', 32, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B10 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 1, N'-1,-87', 4, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B15 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 1, N'-1,-51', 2, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B18 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 1, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B1F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B24 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B2B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B31 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B38 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B3F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-38, 0, -1, 0, 1, N'-1,-38', 2, N'fd9f1447-6c61-4a7c-9595-5aa39147d318', N'Folder Browser', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B44 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B49 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B4D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(0x0000A42A00C27AEB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(0x0000A42A00C27AE6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(0x0000A42A00C27ADE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 0, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A42A00C27B66 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 0, 1, N'-1,1032', 2, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A42A00C27B6A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 0, 1, N'-1,1033', 2, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A42A00C27B70 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1034, 0, -1, 0, 1, N'-1,1034', 2, N'a6857c73-d6e9-480c-b6e6-f15f6ad11125', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B74 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1035, 0, -1, 0, 1, N'-1,1035', 2, N'93929b9a-93a2-4e2a-b239-d99334440a59', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B79 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1036, 0, -1, 0, 1, N'-1,1036', 2, N'2b24165f-9782-4aa3-b459-1de4a4d21f60', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B7F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1040, 0, -1, 0, 1, N'-1,1040', 2, N'21e798da-e06e-4eda-a511-ed257f78d4fa', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B83 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B88 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1043, 0, -1, 0, 1, N'-1,1043', 2, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B8E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1044, 0, -1, 0, 1, N'-1,1044', 0, N'd59be02f-1df9-4228-aa1e-01917d806cda', N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(0x0000A42A00C27B93 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1045, 0, -1, 0, 1, N'-1,1045', 2, N'7e3962cc-ce20-4ffc-b661-5897a894ba7e', N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A42A00C27B96 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1046, 0, -1, 0, 1, N'-1,1046', 0, N'81d967b8-2614-4674-b2b1-d59e660cce73', N'Master', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42A00C2BB37 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1047, 0, 1046, 0, 2, N'-1,1046,1047', 0, N'42ab220c-6279-4f99-bdb7-8f0496387e89', N'FrontPage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42A00C2D40C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1048, 0, -1, 0, 1, N'-1,1048', 0, N'98644e5b-360e-452a-b204-71059a001e48', N'Layout', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A42A00C552F6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1049, 0, -1, 0, 1, N'-1,1049', 0, N'aab94770-4090-47f3-906e-b7625329d3bd', N'FrontPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A42A00C573CE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1050, 0, -1, 0, 1, N'-1,1050', 0, N'b058250b-d8e3-4c6c-8288-bc568e73e1f8', N'Forside', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42A00C598E5 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1051, 0, 1046, 0, 2, N'-1,1046,1051', 1, N'2f718b2f-0805-48b3-b959-5789d548512c', N'TextPage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42B00F0B8CB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1052, 0, -1, 0, 1, N'-1,1052', 1, N'7b4bf75d-08ba-4f40-8abf-00715a338fb8', N'TextPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A42B00F0D9AB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1053, 0, 1046, 0, 2, N'-1,1046,1053', 2, N'66a419ee-b99c-42f5-857d-c1467a3d9c7e', N'Events', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42B01047CAA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1054, 0, 1050, 0, 2, N'-1,1050,1054', 0, N'db0b7a4d-f716-40a7-8e69-5fd7067bb40c', N'Arrangementer', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B0104E820 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1055, 0, -1, 0, 1, N'-1,1055', 1, N'4f0a1f93-3b4c-45cb-85f7-4c96f4d4c51a', N'Items', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42B0105920B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1056, 0, 1055, 0, 2, N'-1,1055,1056', 0, N'b5e6c32f-de21-415d-9797-c98913b48609', N'Event', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42B01059EE6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1057, 0, -1, 0, 1, N'-1,1057', 1, N'89d3cd47-f0c8-47c7-af43-2ec0635c8968', N'Events', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A42B01067F9A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1058, 0, 1054, 0, 3, N'-1,1050,1054,1058', 3, N'eb71d0b0-9d38-4e0a-ad2f-f9e1edb33d66', N'Betingelser', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B0123D40F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1059, 0, 1050, 0, 2, N'-1,1050,1059', 3, N'6e1a9bfb-1cf3-4f49-902f-54fbdd3da012', N'Om os', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B01262863 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1060, 0, 1054, 0, 3, N'-1,1050,1054,1060', 2, N'186e9b75-14fe-44c4-b529-7b1ef45f73ea', N'Spørgsmål og svar', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B0128765B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1061, 0, 1046, 0, 2, N'-1,1046,1061', 3, N'2d0e2362-05db-4c07-8cd3-c1ccb307f8b0', N'Locations', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42B0129C5FB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1062, 0, 1055, 0, 2, N'-1,1055,1062', 1, N'18737540-08aa-4c2a-8431-d91e8ca69622', N'Locations - Region', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42B012A0143 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1063, 0, 1055, 0, 2, N'-1,1055,1063', 2, N'4d28834a-712a-4695-8b6f-3b8a580d087e', N'Location', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A42B012A3F90 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1064, 0, 1050, 0, 2, N'-1,1050,1064', 1, N'87130b0d-dd96-4a52-a193-584bf5b6a06c', N'Lokationer', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B012AD662 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1065, 0, 1064, 0, 3, N'-1,1050,1064,1065', 0, N'19688778-b0ce-40af-88cd-490d048007bd', N'Sjælland', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B012AFC91 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1066, 0, 1064, 0, 3, N'-1,1050,1064,1066', 1, N'f1406bd0-f1bd-406a-a83e-72ef965eff29', N'Fyn', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B012B0755 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1067, 1, -20, 0, 1, N'-1,-20,1067', 1, N'733a582a-4afa-4ad6-82f3-6b45422f8de4', N'Jylland', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B012B1672 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1068, 0, 1065, 0, 4, N'-1,1050,1064,1065,1068', 0, N'478fdc64-aaeb-4eb1-ab74-35ef85bf47f7', N'Søernes sejlklub', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B012B368E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1069, 0, 1066, 0, 4, N'-1,1050,1064,1066,1069', 0, N'974bf878-a0a5-434a-8229-bf77e41c6fdb', N'Østersøgade 8', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B012C96C3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1070, 0, 1066, 0, 4, N'-1,1050,1064,1066,1070', 1, N'eb28bec5-44da-4b1b-87af-fc32edd28f00', N'Middelfart roklub', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B012CCCB2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1071, 0, -1, 0, 1, N'-1,1071', 1, N'603a02eb-996f-41d8-ae2e-1486df6f74ab', N'Locations', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A42B012DBBF8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1072, 0, 1050, 0, 2, N'-1,1050,1072', 2, N'08bf30a9-9ba9-41fe-9a05-e1cb8c2a7451', N'Priser', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A42B01331F3C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1073, 0, -1, 0, 1, N'-1,1073', 0, N'53b0ddd4-bef9-461c-a36c-3aa3ad695aef', N'Media', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A42B013C79AE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1074, 0, 1073, 0, 2, N'-1,1073,1074', 0, N'099a7561-73f0-4016-8e2f-d5c64bed5afe', N'Slideshow', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A42B013C8A3F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1075, 0, 1074, 0, 3, N'-1,1073,1074,1075', 0, N'e11b6921-c754-486a-8ce1-e6852ae102d8', N'pic4.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A42B013C97BE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1076, 0, 1074, 0, 3, N'-1,1073,1074,1076', 0, N'c0d50048-802a-43fe-9d45-f33c3b7a1a89', N'pic2.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A42B013C97C1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1077, 0, 1074, 0, 3, N'-1,1073,1074,1077', 0, N'968763a3-126c-4e63-8d58-6fe244a35633', N'pic3.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A42B013C97C2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1078, 0, 1074, 1, 3, N'-1,1073,1074,1078', 3, N'de38d927-ce73-45e6-805b-5cdf16c2e76e', N'pic1.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A42B013C97E0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1079, 0, 1046, 0, 2, N'-1,1046,1079', 4, N'86dec571-5a7f-462b-8eac-e6ed93401b77', N'ContactPage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A43100ACBD36 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1080, 0, 1050, 0, 2, N'-1,1050,1080', 4, N'71b36bfc-0e9e-4b61-a079-4d802c2555af', N'Kontakt', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A43100AD489A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1081, 0, -1, 0, 1, N'-1,1081', 1, N'991eb832-cd29-4864-8935-51ad59d16021', N'ContactPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A43100B16EF7 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1082, 0, 1054, 0, 3, N'-1,1050,1054,1082', 0, N'3b344e09-a4e5-4a9e-ba76-3f85475715d1', N'Waterballs', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A43100E81A59 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1083, 0, 1073, 0, 2, N'-1,1073,1083', 1, N'3e1a6cb9-f531-455a-b44f-c8fe723396ff', N'Tests', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A43100E8F237 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1084, 0, 1083, 0, 3, N'-1,1073,1083,1084', 0, N'487a5650-528c-42a2-b882-49bd4bc47b26', N'200x200 placeholder', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A43100E907EE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1085, 0, 1054, 0, 3, N'-1,1050,1054,1085', 1, N'e644c74b-4bd2-49a6-b023-8aa5f06a6d0a', N'Landballs', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A43100E98C5A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1086, 0, 1064, 0, 3, N'-1,1050,1064,1086', 2, N'a6795ab5-7e1a-4885-b95d-f6668b3ed2b5', N'Jylland', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A43100F0F1C6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1087, 1, -20, 1, 1, N'-1,-20,1087', 2, N'313d4f7c-31e4-4724-8d36-bf03fc1f4f93', N'spaceballs', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A43800F2C533 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1088, 1, -20, 1, 1, N'-1,-20,1088', 3, N'b46c3015-8901-43d8-98d7-ac7b67ce8e98', N'spaceballs (1)', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A43800F3A12E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1089, 0, 1073, 1, 2, N'-1,1073,1089', 2, N'cfbf75bd-9bce-42cc-a8ac-527a89ee3d78', N'cp', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A43800F9906E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1090, 0, -1, 0, 1, N'-1,1090', 1, N'5162ef6b-4855-45dd-81f7-617987997bfa', N'landballs pic.png', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A43800FCEDD9 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1091, 0, -1, 0, 1, N'-1,1091', 2, N'2a3848df-5bc1-4920-a971-d350f8e9e8c6', N'waterballs pic.png', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A43800FCF442 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1092, 0, -1, 0, 1, N'-1,1092', 3, N'59780333-4f7e-4d40-882b-dad2075e5769', N'picture.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A43800FDCC57 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1093, 1, -20, 1, 1, N'-1,-20,1093', 4, N'd9fa6a0f-36e0-4e27-b1ad-5852817c01a4', N'Priser', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A43800FF9666 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1094, 0, -1, 0, 1, N'-1,1094', 4, N'589fba17-a793-4409-98f8-03222f73afaf', N'flydebro.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A438010625BC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1095, 0, -1, 0, 1, N'-1,1095', 5, N'ef31696c-d542-4804-b1f9-9bacc6962304', N'om os.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A43801062A96 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1096, 0, 1086, 1, 4, N'-1,1050,1064,1086,1096', 0, N'78acb1ed-6f7e-4c12-aaf8-7a94eb05f7f6', N'vejle', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A438010A4DBA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1097, 0, 1086, 1, 4, N'-1,1050,1064,1086,1097', 1, N'1a7bb03a-1b2b-40fd-8389-93b22b1dea5f', N'Kolding', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A438010BB1E8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1098, 0, 1086, 1, 4, N'-1,1050,1064,1086,1098', 2, N'3ad30d84-d170-4477-8a93-f45199eb9037', N'Århus C', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A438010BEE59 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1099, 0, 1086, 1, 4, N'-1,1050,1064,1086,1099', 3, N'87604019-6013-4680-9e4d-fb808797d1df', N'Oddervej', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A438010DE280 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1100, 0, 1086, 1, 4, N'-1,1050,1064,1086,1100', 4, N'42ec263f-c1af-4a36-9944-9d122660d138', N'Horsens', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A438010E2C6C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1101, 0, 1086, 1, 4, N'-1,1050,1064,1086,1101', 5, N'b7e6ad8f-c5f9-4194-b73d-ae500e408f19', N'Silkeborg', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A438010E4D6B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1102, 0, -1, 0, 1, N'-1,1102', 6, N'85418b3d-82a7-46e0-a3bb-3e5277f53a68', N'picture2.jpg', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A438011172EB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1103, 0, 1055, 0, 2, N'-1,1055,1103', 3, N'5b41c17c-a85d-4082-8d56-9cd75006692d', N'Link', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A46900DE5575 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1104, 0, 1054, 0, 3, N'-1,1050,1054,1104', 4, N'79fe2a29-b73c-4829-bc76-e81aac0ff13a', N'Priser', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A46900DE9F86 AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[NodeId] [int] NOT NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1, 0, 1046, CAST(0x0000A42A00C2BB94 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2, 0, 1047, CAST(0x0000A42A00C2D441 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (3, 0, -1, CAST(0x0000A42A00C30167 AS DateTime), N'Publish', N'ContentService.RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (4, 0, 1047, CAST(0x0000A42A00C30185 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (5, 0, 1047, CAST(0x0000A42A00C58326 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (6, 0, 1047, CAST(0x0000A42A00C5895C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (7, 0, 0, CAST(0x0000A42A00C59129 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (8, 0, 1050, CAST(0x0000A42A00C59987 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (9, 0, 1051, CAST(0x0000A42B00F0B92D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (10, 0, 1047, CAST(0x0000A42B00F5B53C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (11, 0, 1053, CAST(0x0000A42B01047D19 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (12, 0, -1, CAST(0x0000A42B010493B5 AS DateTime), N'Publish', N'ContentService.RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (13, 0, 1053, CAST(0x0000A42B010495EC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (14, 0, 1047, CAST(0x0000A42B01049FA1 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (15, 0, 1053, CAST(0x0000A42B0104D82D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (16, 0, 0, CAST(0x0000A42B0104E1AC AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (17, 0, 1054, CAST(0x0000A42B0104E8A6 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (18, 0, 1055, CAST(0x0000A42B01059244 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (19, 0, 1056, CAST(0x0000A42B01059F1C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (20, 0, 1053, CAST(0x0000A42B0105AA4F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (21, 0, 1056, CAST(0x0000A42B0105C3AF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (22, 0, 1053, CAST(0x0000A42B0105DA9D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (23, 0, 1056, CAST(0x0000A42B0105EB11 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (24, 0, 1053, CAST(0x0000A42B01071DBB AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (25, 0, 1054, CAST(0x0000A42B010727AC AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (26, 0, 1051, CAST(0x0000A42B0123BB8A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (27, 0, 0, CAST(0x0000A42B0123C516 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (28, 0, 1058, CAST(0x0000A42B0123D494 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (29, 0, 1051, CAST(0x0000A42B01247B2E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (30, 0, 1058, CAST(0x0000A42B0124D971 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (31, 0, 0, CAST(0x0000A42B01262036 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (32, 0, 1059, CAST(0x0000A42B012628CA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (33, 0, 1051, CAST(0x0000A42B01263D38 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (34, 0, 1051, CAST(0x0000A42B01264F1D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (35, 0, 1051, CAST(0x0000A42B012661FF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (36, 0, 1059, CAST(0x0000A42B0126EACA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (37, 0, 1058, CAST(0x0000A42B0127DFFA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (38, 0, 0, CAST(0x0000A42B01282690 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (39, 0, 1060, CAST(0x0000A42B012876E0 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (40, 0, 1061, CAST(0x0000A42B0129C650 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (41, 0, 1061, CAST(0x0000A42B0129ECFE AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (42, 0, 1062, CAST(0x0000A42B012A0180 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (43, 0, 1062, CAST(0x0000A42B012A3303 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (44, 0, 1063, CAST(0x0000A42B012A4025 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (45, 0, 1063, CAST(0x0000A42B012A6BA9 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (46, 0, 1061, CAST(0x0000A42B012A7C28 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (47, 0, 1062, CAST(0x0000A42B012A872F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (48, 0, 1062, CAST(0x0000A42B012A8D61 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (49, 0, 1047, CAST(0x0000A42B012AC839 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (50, 0, 0, CAST(0x0000A42B012ACF3F AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (51, 0, 1064, CAST(0x0000A42B012AD6CB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (52, 0, 0, CAST(0x0000A42B012AE782 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (53, 0, 0, CAST(0x0000A42B012AEEB0 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (54, 0, 1065, CAST(0x0000A42B012AFCF7 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (55, 0, 0, CAST(0x0000A42B012B02C4 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (56, 0, 1066, CAST(0x0000A42B012B07EA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (57, 0, 0, CAST(0x0000A42B012B10DA AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (58, 0, 1067, CAST(0x0000A42B012B16D6 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (59, 0, 0, CAST(0x0000A42B012B1AE6 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (60, 0, 1068, CAST(0x0000A42B012B36FB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (61, 0, 1063, CAST(0x0000A42B012B7D0F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (62, 0, 1063, CAST(0x0000A42B012B957B AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (63, 0, 1063, CAST(0x0000A42B012BD1F1 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (64, 0, 1068, CAST(0x0000A42B012C2164 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (65, 0, 1063, CAST(0x0000A42B012C3A30 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (66, 0, 0, CAST(0x0000A42B012C6685 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (67, 0, 1069, CAST(0x0000A42B012C9735 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (68, 0, 0, CAST(0x0000A42B012C9DE6 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (69, 0, 1070, CAST(0x0000A42B012CCD22 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (70, 0, 1061, CAST(0x0000A42B012CFB73 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (71, 0, 1061, CAST(0x0000A42B012D089D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (72, 0, 1061, CAST(0x0000A42B012D2461 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (73, 0, 1061, CAST(0x0000A42B012D3797 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (74, 0, 1061, CAST(0x0000A42B012D528E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (75, 0, 1061, CAST(0x0000A42B012E89F4 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (76, 0, 1064, CAST(0x0000A42B012E99D3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (77, 0, 1064, CAST(0x0000A42B012EB9FE AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (78, 0, 0, CAST(0x0000A42B013310FC AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (79, 0, 1072, CAST(0x0000A42B01331FAB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (80, 0, 0, CAST(0x0000A42B01333705 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (81, 0, 0, CAST(0x0000A42B013C74F6 AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (82, 0, 1073, CAST(0x0000A42B013C7A23 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (83, 0, 0, CAST(0x0000A42B013C84BE AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (84, 0, 1074, CAST(0x0000A42B013C8A8E AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (85, 0, 0, CAST(0x0000A42B013C977A AS DateTime), N'New', N'Media ''pic1.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (86, 0, 0, CAST(0x0000A42B013C978B AS DateTime), N'New', N'Media ''pic2.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (87, 0, 0, CAST(0x0000A42B013C978B AS DateTime), N'New', N'Media ''pic4.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (88, 0, 0, CAST(0x0000A42B013C9790 AS DateTime), N'New', N'Media ''pic3.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (89, 0, 1075, CAST(0x0000A42B013C982C AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (90, 0, 1076, CAST(0x0000A42B013C9831 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (91, 0, 1077, CAST(0x0000A42B013C9831 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (92, 0, 1078, CAST(0x0000A42B013C988B AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (93, 0, 1074, CAST(0x0000A42B013CA062 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (94, 0, 1047, CAST(0x0000A42B013CBD41 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (95, 0, 1047, CAST(0x0000A42B013CE47B AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (96, 0, 1047, CAST(0x0000A42B013CFA15 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (97, 0, 1047, CAST(0x0000A42B013D02F3 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (98, 0, 1047, CAST(0x0000A42B013D11D2 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (99, 0, 1047, CAST(0x0000A42B013D32FB AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (100, 0, 1050, CAST(0x0000A42B013D4E96 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
print 'Processed 100 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (101, 0, 1050, CAST(0x0000A42B013E22A6 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (102, 0, 1075, CAST(0x0000A42B0144E762 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (103, 0, 1076, CAST(0x0000A42B0144F6B1 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (104, 0, 1077, CAST(0x0000A42B0145041D AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (105, 0, 1078, CAST(0x0000A42B01450BE5 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (106, 0, 1079, CAST(0x0000A43100ACBDAC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (107, 0, 1079, CAST(0x0000A43100ACFFAD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (108, 0, 1047, CAST(0x0000A43100AD0FD3 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (109, 0, 1079, CAST(0x0000A43100AD390C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (110, 0, 0, CAST(0x0000A43100AD4135 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (111, 0, 1080, CAST(0x0000A43100AD4943 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (112, 0, 1079, CAST(0x0000A43100B18F18 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (113, 0, 1080, CAST(0x0000A43100B19743 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (114, 0, 1079, CAST(0x0000A43100CE0E2E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (115, 0, 1079, CAST(0x0000A43100CE2272 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (116, 0, 1079, CAST(0x0000A43100CE3A7C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (117, 0, 1080, CAST(0x0000A43100CF0370 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (118, 0, 1079, CAST(0x0000A43100CFF440 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (119, 0, 1079, CAST(0x0000A43100D092BE AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (120, 0, 1079, CAST(0x0000A43100D1C9C0 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (121, 0, 1079, CAST(0x0000A43100D2038B AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (122, 0, 1079, CAST(0x0000A43100D2C565 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (123, 0, 1079, CAST(0x0000A43100D2E5A3 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (124, 0, 1080, CAST(0x0000A43100D30A93 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (125, 0, 1080, CAST(0x0000A43100D4B98A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (126, 0, 1079, CAST(0x0000A43100DD6174 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (127, 0, 1079, CAST(0x0000A43100DD7166 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (128, 0, 1080, CAST(0x0000A43100DD9698 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (129, 0, 1080, CAST(0x0000A43100DEF5AB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (130, 0, 1080, CAST(0x0000A43100DF4786 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (131, 0, 1047, CAST(0x0000A43100E4A81D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (132, 0, 1047, CAST(0x0000A43100E4CB2D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (133, 0, 1047, CAST(0x0000A43100E5BD8D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (134, 0, 1050, CAST(0x0000A43100E5CCE4 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (135, 0, 0, CAST(0x0000A43100E7F6D2 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (136, 0, 1082, CAST(0x0000A43100E81D55 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (137, 0, 1056, CAST(0x0000A43100E87A1F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (138, 0, 1056, CAST(0x0000A43100E892CC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (139, 0, 1056, CAST(0x0000A43100E8B8C2 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (140, 0, 0, CAST(0x0000A43100E8ED3D AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (141, 0, 1083, CAST(0x0000A43100E8F2A4 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (142, 0, 0, CAST(0x0000A43100E907C4 AS DateTime), N'New', N'Media ''000000.gif'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (143, 0, 1084, CAST(0x0000A43100E9083F AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (144, 0, 1084, CAST(0x0000A43100E911D9 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (145, 0, 1082, CAST(0x0000A43100E92589 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (146, 0, 1056, CAST(0x0000A43100E93412 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (147, 0, 1056, CAST(0x0000A43100E93963 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (148, 0, 1082, CAST(0x0000A43100E967B1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (149, 0, 0, CAST(0x0000A43100E98139 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (150, 0, 1085, CAST(0x0000A43100E98CD5 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (151, 0, 1053, CAST(0x0000A43100EB2E0C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (152, 0, 1053, CAST(0x0000A43100EB421B AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (153, 0, 1053, CAST(0x0000A43100EB55FD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (154, 0, 1054, CAST(0x0000A43100EB7877 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (155, 0, 1064, CAST(0x0000A43100F0ACA5 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (156, 0, 1067, CAST(0x0000A43100F0E0EC AS DateTime), N'UnPublish', N'UnPublish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (157, 0, 1067, CAST(0x0000A43100F0E135 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (158, 0, 0, CAST(0x0000A43100F0EBFC AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (159, 0, 1086, CAST(0x0000A43100F0F22D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (160, 0, 1072, CAST(0x0000A43100F30038 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (161, 0, 1080, CAST(0x0000A43100F30C86 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (162, 0, 1084, CAST(0x0000A4310113556E AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (163, 0, 1084, CAST(0x0000A431011358AC AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (164, 0, 1084, CAST(0x0000A43101135E88 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (165, 0, 1068, CAST(0x0000A43200E19043 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (166, 0, 0, CAST(0x0000A43800B66A58 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (167, 1, 1082, CAST(0x0000A43800F25FA1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (168, 1, 1082, CAST(0x0000A43800F269F5 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (169, 1, 0, CAST(0x0000A43800F2B277 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (170, 1, 1087, CAST(0x0000A43800F2C545 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (171, 1, 0, CAST(0x0000A43800F314D4 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (172, 1, 1087, CAST(0x0000A43800F3762B AS DateTime), N'UnPublish', N'UnPublish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (173, 1, 1087, CAST(0x0000A43800F37639 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (174, 1, 0, CAST(0x0000A43800F38A05 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (175, 1, 1088, CAST(0x0000A43800F3A16B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (176, 1, 1080, CAST(0x0000A43800F5AE70 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (177, 1, 0, CAST(0x0000A43800F9676E AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (178, 1, 1089, CAST(0x0000A43800F9907C AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (179, 1, 1060, CAST(0x0000A43800F9D74A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (180, 1, 1088, CAST(0x0000A43800FB109F AS DateTime), N'UnPublish', N'UnPublish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (181, 1, 1088, CAST(0x0000A43800FB10A8 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (182, 1, 1082, CAST(0x0000A43800FBE4D7 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (183, 1, 1085, CAST(0x0000A43800FCD0B3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (184, 0, 0, CAST(0x0000A43800FCEDBD AS DateTime), N'New', N'Media ''landballs pic.png'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (185, 0, 1090, CAST(0x0000A43800FCEE0D AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (186, 0, 0, CAST(0x0000A43800FCF439 AS DateTime), N'New', N'Media ''waterballs pic.png'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (187, 0, 1091, CAST(0x0000A43800FCF450 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (188, 1, 1082, CAST(0x0000A43800FD159F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (189, 1, 1085, CAST(0x0000A43800FD8E8B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (190, 0, 0, CAST(0x0000A43800FDCC4E AS DateTime), N'New', N'Media ''picture.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (191, 0, 1092, CAST(0x0000A43800FDCC61 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (192, 1, 1050, CAST(0x0000A43800FE0980 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (193, 1, 0, CAST(0x0000A43800FF72B1 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (194, 1, 1093, CAST(0x0000A43800FF966F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (195, 1, 1060, CAST(0x0000A43800FFF51A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (196, 1, 1093, CAST(0x0000A43801003F7F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (197, 1, 1060, CAST(0x0000A4380100B3E6 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (198, 1, 1058, CAST(0x0000A4380104C186 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (199, 1, 1058, CAST(0x0000A438010513EB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (200, 1, 1058, CAST(0x0000A4380105275D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (201, 1, 1064, CAST(0x0000A4380105AF7C AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
print 'Processed 200 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (202, 1, 1064, CAST(0x0000A4380106178B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (203, 0, 0, CAST(0x0000A438010625B8 AS DateTime), N'New', N'Media ''flydebro.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (204, 0, 1094, CAST(0x0000A438010625D8 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (205, 0, 0, CAST(0x0000A43801062A92 AS DateTime), N'New', N'Media ''om os.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (206, 0, 1095, CAST(0x0000A43801062AA0 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (207, 1, 1064, CAST(0x0000A4380106540B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (208, 1, 1064, CAST(0x0000A43801066656 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (209, 1, 1064, CAST(0x0000A4380106A7F1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (210, 1, 1064, CAST(0x0000A4380106C01D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (211, 1, 1064, CAST(0x0000A4380106C9C3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (212, 1, 1064, CAST(0x0000A438010703C0 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (213, 1, 1064, CAST(0x0000A438010750BF AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (214, 1, 1064, CAST(0x0000A438010787B3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (215, 1, 0, CAST(0x0000A4380107DFF4 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (216, 1, 1068, CAST(0x0000A4380108898C AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (217, 1, 1068, CAST(0x0000A438010892C2 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (218, 1, 1068, CAST(0x0000A4380108B790 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (219, 1, 1068, CAST(0x0000A4380108C88E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (220, 1, 1068, CAST(0x0000A4380108D4FD AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (221, 1, 1068, CAST(0x0000A4380108DE2E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (222, 1, 1069, CAST(0x0000A43801090F78 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (223, 1, 1070, CAST(0x0000A438010956D8 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (224, 1, 0, CAST(0x0000A43801099638 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (225, 1, 1096, CAST(0x0000A438010A4DCD AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (226, 1, 0, CAST(0x0000A438010B8BFC AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (227, 1, 1097, CAST(0x0000A438010BB208 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (228, 1, 0, CAST(0x0000A438010BB821 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (229, 1, 1098, CAST(0x0000A438010BEE67 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (230, 1, 0, CAST(0x0000A438010C4C43 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (231, 1, 1099, CAST(0x0000A438010DE28A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (232, 1, 0, CAST(0x0000A438010E1953 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (233, 1, 1100, CAST(0x0000A438010E2C75 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (234, 1, 0, CAST(0x0000A438010E3D07 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (235, 1, 1101, CAST(0x0000A438010E4D7D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (236, 1, 1101, CAST(0x0000A438010E555D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (237, 1, 1098, CAST(0x0000A438010EA9DE AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (238, 1, 1069, CAST(0x0000A438010F41A0 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (239, 1, 1064, CAST(0x0000A438010F931B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (240, 1, 1064, CAST(0x0000A438010FA752 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (241, 1, 1072, CAST(0x0000A43801103AC2 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (242, 1, 1072, CAST(0x0000A438011166DE AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (243, 0, 0, CAST(0x0000A438011172E2 AS DateTime), N'New', N'Media ''picture2.jpg'' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (244, 0, 1102, CAST(0x0000A43801117307 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (245, 1, 1072, CAST(0x0000A43801129045 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (246, 1, 1072, CAST(0x0000A4380112A980 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (247, 1, 1072, CAST(0x0000A4380112EA1F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (248, 1, 1072, CAST(0x0000A43801135703 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (249, 1, 1059, CAST(0x0000A4380113F0E5 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (250, 1, 1059, CAST(0x0000A4380113FCCC AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (251, 1, 1059, CAST(0x0000A438011419E9 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (252, 1, 1059, CAST(0x0000A438011423BA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (253, 1, 1059, CAST(0x0000A43801142D07 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (254, 1, 1078, CAST(0x0000A4380116DE4B AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (255, 1, 1078, CAST(0x0000A4380116F1C6 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (256, 1, 1078, CAST(0x0000A4380117B9A7 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (257, 0, 1046, CAST(0x0000A46900C66F33 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (258, 0, 1046, CAST(0x0000A46900C6846D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (259, 0, 1046, CAST(0x0000A46900C6BD7A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (260, 0, 1046, CAST(0x0000A46900C6C835 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (261, 0, 1046, CAST(0x0000A46900C6D733 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (262, 0, 1046, CAST(0x0000A46900C7AA06 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (263, 0, 1046, CAST(0x0000A46900C80213 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (264, 0, 1046, CAST(0x0000A46900C8276D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (265, 0, 1046, CAST(0x0000A46900C84F69 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (266, 0, 1046, CAST(0x0000A46900C9075E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (267, 0, 1103, CAST(0x0000A46900DE5604 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (268, 0, 1103, CAST(0x0000A46900DE7049 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (269, 0, 1053, CAST(0x0000A46900DE84ED AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (270, 0, 1093, CAST(0x0000A46900DE91FD AS DateTime), N'UnPublish', N'UnPublish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (271, 0, 1093, CAST(0x0000A46900DE929F AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (272, 0, 0, CAST(0x0000A46900DE9673 AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (273, 0, 1104, CAST(0x0000A46900DEA05D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (274, 0, 1103, CAST(0x0000A46900DEACE8 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (275, 0, 1103, CAST(0x0000A46900DEC773 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (276, 0, 1104, CAST(0x0000A46900DEE051 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (277, 0, 1050, CAST(0x0000A46900E1D45A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (278, 0, 1082, CAST(0x0000A46900E25C20 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (279, 0, 1072, CAST(0x0000A46900E2F897 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (280, 0, 1072, CAST(0x0000A46900E3310F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (281, 0, 1072, CAST(0x0000A46900E3A0AA AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (282, 0, 1072, CAST(0x0000A46900E3E28B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (283, 0, 1059, CAST(0x0000A46900E42C56 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (284, 0, 1046, CAST(0x0000A46900E47476 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (285, 0, 1080, CAST(0x0000A46900E49868 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (286, 0, 1080, CAST(0x0000A46900E4C418 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (287, 0, 1080, CAST(0x0000A46900E507B2 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (288, 0, 1080, CAST(0x0000A46900E515FF AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (289, 0, 1050, CAST(0x0000A46900EBF1ED AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (290, 0, 1054, CAST(0x0000A46900ECCB25 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (291, 0, 1064, CAST(0x0000A46900ED56A3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (292, 0, 1072, CAST(0x0000A46900ED81D9 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (293, 0, 1059, CAST(0x0000A46900EDAEEE AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (294, 0, 1080, CAST(0x0000A46900EE1B00 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (295, 0, 1082, CAST(0x0000A46900EE4F0E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (296, 0, 1082, CAST(0x0000A46900EE65E4 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (297, 0, 1082, CAST(0x0000A46900EE939C AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (298, 0, 1082, CAST(0x0000A46900EEA0A1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (299, 0, 1085, CAST(0x0000A46900EEDA90 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (300, 0, 1085, CAST(0x0000A46900EEF027 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (301, 0, 1085, CAST(0x0000A46900EF067E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (302, 0, 1064, CAST(0x0000A46900EF2A99 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
print 'Processed 300 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (303, 0, 1064, CAST(0x0000A46900EF31DE AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (304, 0, 1064, CAST(0x0000A46900EF5E46 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (305, 0, 1064, CAST(0x0000A46900EF73BB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (306, 0, 1072, CAST(0x0000A46900EFC5D2 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (307, 0, 1059, CAST(0x0000A46900EFE44E AS DateTime), N'Publish', N'Save and Publish performed by user')
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](10) NULL,
	[languageCultureName] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
/****** Object:  Table [dbo].[cmsStylesheetProperty]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheetProperty](
	[nodeId] [int] NOT NULL,
	[stylesheetPropertyEditor] [bit] NULL,
	[stylesheetPropertyAlias] [nvarchar](50) NULL,
	[stylesheetPropertyValue] [nvarchar](400) NULL,
 CONSTRAINT [PK_cmsStylesheetProperty] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NOT NULL,
	[key] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroScriptType] [nvarchar](255) NULL,
	[macroScriptAssembly] [nvarchar](255) NULL,
	[macroXSLT] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroPython] [nvarchar](255) NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDataType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[dbType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsDataType] ON
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-28, -97, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-27, -96, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-26, -95, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (1, -49, N'Umbraco.TrueFalse', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (2, -51, N'Umbraco.Integer', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (3, -87, N'Umbraco.TinyMCEv3', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (4, -88, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (5, -89, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (6, -90, N'Umbraco.UploadField', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (7, -92, N'Umbraco.NoEdit', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (8, -36, N'Umbraco.DateTime', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (9, -37, N'Umbraco.ColorPickerAlias', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (10, -38, N'Umbraco.FolderBrowser', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (11, -39, N'Umbraco.DropDownMultiple', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (12, -40, N'Umbraco.RadioButtonList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (13, -41, N'Umbraco.Date', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (14, -42, N'Umbraco.DropDown', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (15, -43, N'Umbraco.CheckBoxList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (16, 1034, N'Umbraco.ContentPickerAlias', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (17, 1035, N'Umbraco.MediaPicker', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (18, 1036, N'Umbraco.MemberPicker', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (21, 1040, N'Umbraco.RelatedLinks', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (22, 1041, N'Umbraco.Tags', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (24, 1043, N'Umbraco.ImageCropper', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (25, 1045, N'Umbraco.MultipleMediaPicker', N'Nvarchar')
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1047)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1051)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1053)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1061)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1046, 1079)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1055, 1056)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1055, 1062)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1055, 1063)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1055, 1103)
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[isContainer] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (535, 1046, N'Master', N'.sprTreeFolder', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (536, 1047, N'FrontPage', N'icon-home color-red', N'folder.png', N'', 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (537, 1051, N'Textpage', N'icon-document', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (538, 1053, N'Events', N'icon-umb-translation color-green', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (539, 1055, N'Items', N'.sprTreeFolder', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (540, 1056, N'Event', N'icon-wand color-blue', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (541, 1061, N'Locations', N'icon-tree color-orange', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (542, 1062, N'LocationsRegion', N'icon-location-nearby color-green', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (543, 1063, N'Location', N'icon-facebook-like color-blue', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (544, 1079, N'Contactpage', N'icon-message color-blue', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (545, 1103, N'Link', N'icon-link', N'folder.png', N'Create a deep link to another page.', 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[editorAlias] [nvarchar](255) NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsStylesheet]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheet](
	[nodeId] [int] NOT NULL,
	[filename] [nvarchar](100) NOT NULL,
	[content] [ntext] NULL,
 CONSTRAINT [PK_cmsStylesheet] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomains]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoDomains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[master] [int] NULL,
	[alias] [nvarchar](100) NULL,
	[design] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (1, 1048, NULL, N'Layout', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
    Layout = null;
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (2, 1049, 1048, N'FrontPage', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (3, 1052, 1048, N'TextPage', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (4, 1057, 1048, N'Events', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (5, 1071, 1048, N'Locations', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (6, 1081, 1048, N'ContactPage', N' ')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userType] [int] NOT NULL,
	[startStructureID] [int] NOT NULL,
	[startMediaID] [int] NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userLanguage]) VALUES (0, 0, 0, 1, -1, -1, N'Mads Tjørnfelt', N'madstjornfelt@gmail.com', N't2NOK9oGGoSjr/NzD8rypu1IUNM=', N'madstjornfelt@gmail.com', N'en')
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userLanguage]) VALUES (1, 0, 0, 1, -1, -1, N'Michael', N'Michael', N't2NOK9oGGoSjr/NzD8rypu1IUNM=', N'michael@waterevents.dk', N'en')
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
/****** Object:  Table [dbo].[umbracoUser2NodePermission]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodePermission](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2app]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2app](
	[user] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED 
(
	[user] ASC,
	[app] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'forms')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'users')
/****** Object:  Table [dbo].[cmsTask]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTask](
	[closed] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskTypeId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[parentUserId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentGroupId] [int] NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (3, NULL, 1032, N'Image', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (4, NULL, 1033, N'File', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (5, NULL, 1031, N'Contents', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (11, NULL, 1044, N'Membership', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (12, NULL, 1056, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (13, NULL, 1051, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (14, NULL, 1063, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (15, NULL, 1061, N'Indhold (før adresseliste)', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (16, NULL, 1061, N'Indhold (efter adresseliste)', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (17, NULL, 1047, N'Slideshow', 2)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (18, NULL, 1047, N'Indhold', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (19, NULL, 1079, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (20, NULL, 1079, N'Email indstillinger', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (21, NULL, 1047, N'Facebook link', 2)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (22, NULL, 1053, N'Indhold', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (23, NULL, 1046, N'Søgemaskineoptimering', 100)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (24, NULL, 1103, N'Link', 0)
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1047, 1051, 3)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1047, 1053, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1047, 1061, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1047, 1079, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1053, 1051, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1053, 1056, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1053, 1103, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1061, 1062, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1062, 1063, 0)
/****** Object:  Table [dbo].[cmsDataTypePreValues]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataTypePreValues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datatypeNodeId] [int] NOT NULL,
	[value] [ntext] NULL,
	[sortorder] [int] NOT NULL,
	[alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-4, -97, N'[{"alias":"email","isSystem":1},{"alias":"username","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]', 4, N'includeProperties')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-3, -97, N'asc', 3, N'orderDirection')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-2, -97, N'Name', 2, N'orderBy')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-1, -97, N'10', 1, N'pageSize')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (3, -87, N',code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (5, 1045, N'1', 0, N'multiPicker')
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContent]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContent](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
 CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContent] ON
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (1, 1050, 1047)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (2, 1054, 1053)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (3, 1058, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (4, 1059, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (5, 1060, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (6, 1064, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (7, 1065, 1062)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (8, 1066, 1062)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (9, 1067, 1062)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (10, 1068, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (11, 1069, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (12, 1070, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (13, 1072, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (14, 1073, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (15, 1074, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (16, 1075, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (17, 1076, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (18, 1077, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (19, 1078, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (20, 1080, 1079)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (21, 1082, 1056)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (22, 1083, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (23, 1084, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (24, 1085, 1056)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (25, 1086, 1062)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (26, 1087, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (27, 1088, 1056)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (28, 1089, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (29, 1090, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (30, 1091, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (31, 1092, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (32, 1093, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (33, 1094, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (34, 1095, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (35, 1096, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (36, 1097, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (37, 1098, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (38, 1099, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (39, 1100, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (40, 1101, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (41, 1102, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (42, 1104, 1103)
SET IDENTITY_INSERT [dbo].[cmsContent] OFF
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1047, 1049, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1051, 1052, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1053, 1057, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1061, 1071, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1079, 1081, 1)
/****** Object:  Table [dbo].[cmsDocument]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[documentUser] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[releaseDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[updateDate] [datetime] NOT NULL,
	[templateId] [int] NULL,
	[newest] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'1bdfd36c-faf9-424b-9427-0039bc03c249', N'Waterballs', NULL, NULL, CAST(0x0000A46900EE9393 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 0, 1, N'4602c075-68d8-4419-b680-00442490f4bf', N'Landballs', NULL, NULL, CAST(0x0000A43800FCD084 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 1, N'dca05b06-ecac-4b1b-a97f-01a05de00cee', N'Waterballs', NULL, NULL, CAST(0x0000A43800F25F89 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'd64aab66-27a2-4561-bd82-022693a45f13', N'Lokationer', NULL, NULL, CAST(0x0000A42B012EB96E AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'37738063-34dc-402a-b0b1-02ea91a9a72c', N'Lokationer', NULL, NULL, CAST(0x0000A4380106C9B5 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1066, 1, 0, N'666f6aa1-36b1-4492-861d-04b94449eeb9', N'Fyn', NULL, NULL, CAST(0x0000A42B012B0755 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1087, 0, 1, N'690ef71b-cc0e-4b9e-9029-06c98ab1f768', N'spaceballs', NULL, NULL, CAST(0x0000A43800F2C533 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1097, 1, 1, N'4b5f7da8-9c9e-46f5-b955-074cc90d942e', N'Kolding', NULL, NULL, CAST(0x0000A438010BB1E8 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1068, 0, 0, N'4db988d9-44d4-4846-ae14-092079ebe6d8', N'Søernes sejlklub', NULL, NULL, CAST(0x0000A43200E18FFD AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'f59391d7-e0d4-4785-8858-0b0e6c8e8f6f', N'Priser', NULL, NULL, CAST(0x0000A46900E330F3 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', N'Kontakt', NULL, NULL, CAST(0x0000A43100DEF4D9 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1068, 0, 1, N'abb15004-dd44-4daa-8256-10b278af0f81', N'Søernes sejlklub', NULL, NULL, CAST(0x0000A4380108D4F3 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1104, 1, 0, N'bc57dcde-192f-428a-98eb-1604506d3c68', N'Priser', NULL, NULL, CAST(0x0000A46900DEDF7E AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'1927fb23-ceab-435f-85f6-16c1e19613b1', N'Lokationer', NULL, NULL, CAST(0x0000A46900ED567D AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1093, 0, 0, N'c6e0e638-3932-469e-82a7-172d9e6ee201', N'Priser', NULL, NULL, CAST(0x0000A46900DE9223 AS DateTime), 1052, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1093, 0, 1, N'78b6879c-68cc-48ef-9f6d-18942667422f', N'Priser', NULL, NULL, CAST(0x0000A43800FF9666 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 1, N'7588f3c9-0163-4035-965d-18bb2c623e69', N'Priser', NULL, NULL, CAST(0x0000A438011166D0 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 0, N'8acf220b-38b5-457f-a501-1c89aa274ba4', N'Om os', NULL, NULL, CAST(0x0000A42B01333644 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1058, 0, 1, N'0023a7f9-4071-44fd-9f82-1dfd955d4f35', N'Betingelser', NULL, NULL, CAST(0x0000A4380104C177 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 1, N'7e80f192-ce47-4348-b560-207f6f8fa6c0', N'Priser', NULL, NULL, CAST(0x0000A43801103AB9 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', N'Kontakt', NULL, NULL, CAST(0x0000A43100DD95D7 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1101, 1, 1, N'7917db90-4af2-478e-aad2-2409b5051da8', N'Silkeborg', NULL, NULL, CAST(0x0000A438010E554F AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1060, 0, 1, N'7bbab874-3b75-43db-b76e-25b63d8f71c8', N'Spørgsmål og svar', NULL, NULL, CAST(0x0000A43800FFF511 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 1, N'1c693c8e-bb54-4076-9838-2601d42093f2', N'Priser', NULL, NULL, CAST(0x0000A4380112EA15 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1060, 0, 0, N'620370ef-a220-4dd6-97a3-26b6daa00170', N'Spørgsmål og svar', NULL, NULL, CAST(0x0000A42B0128765B AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1060, 1, 1, N'b65542b0-9f6f-4900-8201-2741d5244566', N'Spørgsmål og svar', NULL, NULL, CAST(0x0000A4380100B3D3 AS DateTime), 1052, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 1, N'813ed90a-931d-4f9a-ad75-2af7bc5c03be', N'Waterballs', NULL, NULL, CAST(0x0000A43800F269EB AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'bd823520-5121-4e0e-ac4c-322ba4b38556', N'Lokationer', NULL, NULL, CAST(0x0000A42B012AD662 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 0, 0, N'62fad2cc-0351-46c0-85b4-3254359cf988', N'Landballs', NULL, NULL, CAST(0x0000A46900EEDA8C AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'284bd552-a01c-4054-8312-348071f3485d', N'Priser', NULL, NULL, CAST(0x0000A43100F2FFCA AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 1, 0, N'1e87f631-88d7-4284-97c2-36f22d61e9a4', N'Waterballs', NULL, NULL, CAST(0x0000A46900EEA098 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 1, N'733f1ac2-dcab-49e5-8105-3898483d97eb', N'Om os', NULL, NULL, CAST(0x0000A438011419E0 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 0, 0, N'd61d774c-3a3c-458b-a651-38f3c7c42f22', N'Forside', NULL, NULL, CAST(0x0000A42B013D4D81 AS DateTime), 1049, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1068, 0, 0, N'a42d0de9-5091-4aa2-b5ce-39698a347685', N'Søernes sejlklub', NULL, NULL, CAST(0x0000A42B012B368E AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 0, 1, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', N'Forside', NULL, NULL, CAST(0x0000A43800FE0972 AS DateTime), 1049, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'eab3b47c-034b-4ed1-a4a2-3c1c95f4a9a6', N'Priser', NULL, NULL, CAST(0x0000A46900E3E274 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'ce88003a-6090-4f21-b9ca-3c2e6d57b066', N'Lokationer', NULL, NULL, CAST(0x0000A43801066648 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1060, 0, 1, N'44132cab-5981-4573-b090-3e17a30b7fae', N'Spørgsmål og svar', NULL, NULL, CAST(0x0000A43800F9D73C AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1060, 0, 0, N'6aa5aaeb-63b8-4c87-aaf8-3ede2efb3c79', N'Spørgsmål og svar', NULL, NULL, CAST(0x0000A43800B66A12 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'744ac84b-f8cd-4284-8175-40c507f4b359', N'Priser', NULL, NULL, CAST(0x0000A46900ED81AA AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1070, 1, 1, N'acb27f83-46a4-442a-acc4-48b0dc036eee', N'Middelfart roklub', NULL, NULL, CAST(0x0000A438010956CA AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 0, N'e48e460c-6ffe-4a28-b953-4a0727febe82', N'Om os', NULL, NULL, CAST(0x0000A46900E42C35 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 0, N'7a7e8a01-3bfd-4446-917a-4a3edfc81a3a', N'Om os', NULL, NULL, CAST(0x0000A42B0126EA4B AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1068, 0, 1, N'43b8dc27-073c-49b3-a7d4-4e80df828015', N'Søernes sejlklub', NULL, NULL, CAST(0x0000A4380108C884 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'ba2530bf-1b7b-4c79-ad46-527a6e821bd2', N'Kontakt', NULL, NULL, CAST(0x0000A43100B196A9 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'98688c04-bc77-4831-b49c-56f9ec196cd3', N'Lokationer', NULL, NULL, CAST(0x0000A4380106A7E3 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 1, 0, N'0478d253-e2a2-4751-a0b0-60c3d45ae1cb', N'Lokationer', NULL, NULL, CAST(0x0000A46900EF73A9 AS DateTime), 1071, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1058, 1, 1, N'1b2298b3-37b5-4020-9389-6387810172e0', N'Betingelser', NULL, NULL, CAST(0x0000A4380105274F AS DateTime), 1052, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1069, 0, 0, N'e230be8b-5c84-495e-a786-64799d21e47b', N'Østersøgade 8', NULL, NULL, CAST(0x0000A42B012C96C3 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'46a763ea-7f34-44b7-b5b6-64839b745799', N'Waterballs', NULL, NULL, CAST(0x0000A43800B669F1 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1088, 0, 1, N'0d71a3ad-1079-4fa3-9253-6594e9c8bd6f', N'spaceballs', NULL, NULL, CAST(0x0000A43800F3A12E AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1068, 0, 1, N'c126f2a5-4710-40d0-b71a-65e0860f30f5', N'Søernes sejlklub', NULL, NULL, CAST(0x0000A4380108B782 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 1, N'1e3fb059-bc80-44d9-8cbb-660707d7f705', N'Waterballs', NULL, NULL, CAST(0x0000A43800FBE4C0 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 0, 0, N'50258e61-f0e5-4afc-a342-66cdcf09bba5', N'Forside', NULL, NULL, CAST(0x0000A42A00C598E5 AS DateTime), 1049, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', N'Lokationer', NULL, NULL, CAST(0x0000A46900EF2A90 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 0, 0, N'4caeffee-126d-40b5-9efe-6af4d6b32368', N'Forside', NULL, NULL, CAST(0x0000A46900E1D430 AS DateTime), 1049, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'c5564bb6-0c82-489d-9aaa-6d8b0d579ad2', N'Lokationer', NULL, NULL, CAST(0x0000A4380106176B AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'c4a319f3-e4eb-4ca0-9cb8-6d90624c060c', N'Lokationer', NULL, NULL, CAST(0x0000A4380105AF6E AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', N'Kontakt', NULL, NULL, CAST(0x0000A46900E515ED AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 1, N'f9b54923-6e14-4e64-a838-6fe6a78326d3', N'Waterballs', NULL, NULL, CAST(0x0000A43800FD1570 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 0, N'652a5ae3-5dc2-4a66-8b11-7291dc3ed195', N'Om os', NULL, NULL, CAST(0x0000A42B01262863 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1093, 0, 0, N'83f28058-22d4-4c05-b195-7578d90b268e', N'Priser', NULL, NULL, CAST(0x0000A46900DE90DE AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1088, 0, 1, N'679cd5b8-4249-464c-a104-7a5215a6ff4c', N'spaceballs (1)', NULL, NULL, CAST(0x0000A43800FB10A4 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'ab0c93ee-7f4d-4ba7-8a9b-7afa3b6fd531', N'Waterballs', NULL, NULL, CAST(0x0000A43100E92517 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'27293c28-5b12-4adf-8200-7b0474dec417', N'Kontakt', NULL, NULL, CAST(0x0000A43100F30BD9 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1068, 0, 1, N'917c9c70-9959-45a3-a642-7e6cfdb3d8fe', N'Søernes sejlklub', NULL, NULL, CAST(0x0000A438010892B4 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'd661447e-baf9-4ae6-a81e-7ef49118515a', N'Lokationer', NULL, NULL, CAST(0x0000A4380106C00F AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', N'Kontakt', NULL, NULL, CAST(0x0000A43100D309DC AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 0, N'994055b0-252b-4a4b-a791-82845fc2c0bd', N'Om os', NULL, NULL, CAST(0x0000A42B012AE6B7 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'3a0ec796-767d-4254-b47a-82c747930e29', N'Kontakt', NULL, NULL, CAST(0x0000A46900E507A4 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', N'Lokationer', NULL, NULL, CAST(0x0000A46900EF31C7 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'0a5bab78-b697-4f27-86e4-84bacf21851c', N'Lokationer', NULL, NULL, CAST(0x0000A438010787A4 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'288d8307-f902-478f-b3dc-877df4ea506b', N'Priser', NULL, NULL, CAST(0x0000A46900E3A09C AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 1, N'248aaab9-5ba0-49ed-b93c-898b3448eafa', N'Priser', NULL, NULL, CAST(0x0000A4380112A972 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 0, 0, N'993b18c1-5c5d-4356-8fb6-8991c2bf24e8', N'Landballs', NULL, NULL, CAST(0x0000A43100E98C5A AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 1, 0, N'54a2ea7f-c01d-4d2d-b4a5-89f8237dfcaf', N'Om os', NULL, NULL, CAST(0x0000A46900EFE432 AS DateTime), 1052, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1054, 0, 0, N'1d7b9daa-9282-45fb-8b62-8a26edb57ee1', N'Arrangementer', NULL, NULL, CAST(0x0000A42B0107270E AS DateTime), 1057, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1104, 0, 0, N'a00f6af4-08b1-4db3-8b49-8a309514cf0d', N'Priser', NULL, NULL, CAST(0x0000A46900DE9F86 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'9273922b-58c9-4a19-a287-8d2e165d4479', N'Lokationer', NULL, NULL, CAST(0x0000A43801070396 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'78e9f171-61a1-4db5-aa50-8df12a7519de', N'Lokationer', NULL, NULL, CAST(0x0000A438010653E1 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1058, 0, 0, N'b8d3f790-67e2-439e-ae62-8e5eb6a3f261', N'Betingelser', NULL, NULL, CAST(0x0000A42B0124D90C AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1070, 0, 0, N'a197af81-9b85-4772-a2e2-9856461519fb', N'Middelfart roklub', NULL, NULL, CAST(0x0000A42B012CCCB2 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 1, N'58ddafec-62c3-4c45-a58b-992589f94972', N'Om os', NULL, NULL, CAST(0x0000A43801142CFD AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1086, 1, 0, N'a45b15b2-bd05-49a2-a8cf-99b44bca782e', N'Jylland', NULL, NULL, CAST(0x0000A43100F0F1C6 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 0, 1, N'aba5de8d-9997-4933-8670-9b7a48d7f254', N'Landballs', NULL, NULL, CAST(0x0000A43800FD8E5C AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'8ca5952d-9c52-4883-938d-9bea31d28324', N'Kontakt', NULL, NULL, CAST(0x0000A46900E4C3E9 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1096, 1, 1, N'3e558c5e-1821-4b3f-b573-9e510aa2e290', N'vejle', NULL, NULL, CAST(0x0000A438010A4DBA AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1068, 1, 1, N'e8e6db35-2341-440d-950f-9ef0913a6148', N'Søernes sejlklub', NULL, NULL, CAST(0x0000A4380108DE1B AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 1, 0, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', N'Kontakt', NULL, NULL, CAST(0x0000A46900EE1AF6 AS DateTime), 1081, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'c96b017b-f99c-4962-8d70-ad81de01a725', N'Lokationer', NULL, NULL, CAST(0x0000A43100F0ABDE AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'a4354c69-784a-40e4-b235-afecad38b46a', N'Priser', NULL, NULL, CAST(0x0000A42B01331F3C AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 0, 0, N'7279de66-de54-47d9-b1fa-b14c7d82523c', N'Forside', NULL, NULL, CAST(0x0000A42B013E20C7 AS DateTime), 1049, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'd82dd954-062c-437f-9a50-b177c987cecf', N'Waterballs', NULL, NULL, CAST(0x0000A46900EE65B5 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1088, 0, 1, N'e9514f7d-bb97-4391-8d8e-b37bc3d3e4b2', N'spaceballs', NULL, NULL, CAST(0x0000A43800FB1083 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 1, 0, N'f7c7da80-6e0f-4b12-9fda-b3fd8acbcdda', N'Landballs', NULL, NULL, CAST(0x0000A46900EF0670 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1058, 0, 0, N'66b013e2-c598-4001-8d0e-b5cded2a9a2d', N'Betingelser', NULL, NULL, CAST(0x0000A42B0127DF2D AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1098, 1, 1, N'a6aa6f03-0d5c-4de0-a42f-bc33b7575a50', N'Århus C', NULL, NULL, CAST(0x0000A438010EA9D5 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1067, 0, 0, N'e0ffbd2e-1e7a-450a-9f7e-be0cfe79b406', N'Jylland', NULL, NULL, CAST(0x0000A42B012B1672 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 1, N'91c8a74c-674e-42b5-a783-c10b423605c8', N'Priser', NULL, NULL, CAST(0x0000A43801129037 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 1, N'2362a9bf-4497-4085-b4d7-c15137647bcb', N'Om os', NULL, NULL, CAST(0x0000A4380113FCC3 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 0, 0, N'c11a55bb-3576-4da8-9409-c3fa5bac65a9', N'Landballs', NULL, NULL, CAST(0x0000A46900EEF014 AS DateTime), NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1099, 1, 1, N'8cf89da8-f840-4cbd-b3bb-c47c3f6b6dba', N'Oddervej', NULL, NULL, CAST(0x0000A438010DE280 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1069, 1, 1, N'0bc12756-0b6b-40b5-8f4b-c60c9770ef11', N'Østersøgade 8', NULL, NULL, CAST(0x0000A438010F4197 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1054, 1, 0, N'7733c2b7-2187-4f40-a2bf-cc8073f506a1', N'Arrangementer', NULL, NULL, CAST(0x0000A46900ECCAD1 AS DateTime), 1057, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1098, 0, 1, N'057bb192-0446-445e-b250-ce0a52c182a3', N'Århus C', NULL, NULL, CAST(0x0000A438010BEE59 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1069, 0, 1, N'b14cbece-dec8-45ba-b396-cec3f7bb8785', N'Østersøgade 8', NULL, NULL, CAST(0x0000A43801090F5C AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1093, 0, 1, N'94015bad-4bbe-4ccd-b993-cf531ac13b79', N'Priser', NULL, NULL, CAST(0x0000A43801003F76 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1087, 0, 1, N'98c4647c-0f81-44d3-ba67-d3757d3a5f07', N'spaceballs', NULL, NULL, CAST(0x0000A43800F37619 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1067, 0, 0, N'0ea42387-b34a-4564-82fc-d3bd9bc1b712', N'Jylland', NULL, NULL, CAST(0x0000A43100F0E054 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1087, 0, 1, N'e1b6dac8-a7fa-4910-9186-d5863f1d9444', N'spaceballs', NULL, NULL, CAST(0x0000A43800F37635 AS DateTime), 1052, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1058, 0, 1, N'8c682d82-683d-4066-87f5-d5d9ae07b4ce', N'Betingelser', NULL, NULL, CAST(0x0000A438010513CF AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'5a4efbbe-12cc-410f-8fa2-d8883b3dd975', N'Priser', NULL, NULL, CAST(0x0000A46900E2F88E AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'b1e1f0da-dd8d-4529-8989-d8e4851c2e54', N'Waterballs', NULL, NULL, CAST(0x0000A43100E96736 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1067, 0, 0, N'ca2420ba-5c55-4d1e-877c-db43af0b08ec', N'Jylland', NULL, NULL, CAST(0x0000A43100F0E101 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'f241dfbb-92ee-430e-b0c6-db5f64527cde', N'Lokationer', NULL, NULL, CAST(0x0000A42B012AE682 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 0, N'f5028395-9571-46b2-a1ae-dc08d990f4cf', N'Priser', NULL, NULL, CAST(0x0000A42B013335FD AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1100, 1, 1, N'9f32767b-11e5-4fe9-b1d2-dcb64b88b7f2', N'Horsens', NULL, NULL, CAST(0x0000A438010E2C6C AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', N'Kontakt', NULL, NULL, CAST(0x0000A43100D4B8EE AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'bf465515-eb57-47b8-bd19-df02f5e4f5c7', N'Lokationer', NULL, NULL, CAST(0x0000A42B012E9931 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'bb557538-0807-4bad-ad47-e308fb2a30a2', N'Waterballs', NULL, NULL, CAST(0x0000A46900E25BE3 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1054, 0, 0, N'b319d30b-9869-41c6-83a3-e3905d89f19d', N'Arrangementer', NULL, NULL, CAST(0x0000A43100EB77CF AS DateTime), 1057, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 1, 0, N'47015313-1ff1-49f5-b409-e5a89e92f6ee', N'Priser', NULL, NULL, CAST(0x0000A46900EFC5AC AS DateTime), 1052, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 1, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', N'Lokationer', NULL, NULL, CAST(0x0000A438010FA744 AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1065, 1, 0, N'5b7a6b2d-6da3-4629-9b0b-e974e56e975d', N'Sjælland', NULL, NULL, CAST(0x0000A42B012AFC91 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 1, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', N'Kontakt', NULL, NULL, CAST(0x0000A43800F5AE62 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', N'Kontakt', NULL, NULL, CAST(0x0000A43100CF02AF AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 0, 0, N'2cc4c4b7-0541-4ee7-b0da-f0f92326de56', N'Forside', NULL, NULL, CAST(0x0000A43100E5CC3D AS DateTime), 1049, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 1, N'd7e69214-52a4-4479-80ee-f186d03ffb12', N'Om os', NULL, NULL, CAST(0x0000A4380113F0C4 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'f8809478-f5c9-4bda-a659-f5309be18ad3', N'Kontakt', NULL, NULL, CAST(0x0000A43100DF4709 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1080, 0, 0, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', N'Kontakt', NULL, NULL, CAST(0x0000A46900E49839 AS DateTime), 1081, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 1, N'5a02dd7b-07b4-4cc8-85a0-f5dfe644fdf6', N'Om os', NULL, NULL, CAST(0x0000A438011423B0 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1059, 0, 0, N'a6dca21e-7381-4643-816e-f84772d5aee2', N'Om os', NULL, NULL, CAST(0x0000A46900EDAEC8 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1058, 0, 0, N'e643684b-18ab-4dd0-8629-f9c54c8511da', N'Betingelser', NULL, NULL, CAST(0x0000A43800B66A16 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1064, 0, 0, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', N'Lokationer', NULL, NULL, CAST(0x0000A46900EF5E3C AS DateTime), 1071, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'61bcf9b7-935f-4869-a7d2-fbee68cf4a43', N'Waterballs', NULL, NULL, CAST(0x0000A46900EE4F00 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 1, 0, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', N'Forside', NULL, NULL, CAST(0x0000A46900EBF1A7 AS DateTime), 1049, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1072, 0, 1, N'81849fa3-4028-4800-9c88-fc39e490ac16', N'Priser', NULL, NULL, CAST(0x0000A438011356F5 AS DateTime), 1052, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1082, 0, 0, N'f0930ef3-a366-4de1-9a4d-ff214fdf4b02', N'Waterballs', NULL, NULL, CAST(0x0000A43100E81A59 AS DateTime), NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 0, 0, N'64180037-ef93-4597-8bb7-ff5ce42d4873', N'Landballs', NULL, NULL, CAST(0x0000A43800B66A08 AS DateTime), NULL, 0)
/****** Object:  Table [dbo].[cmsContentXml]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentXml](
	[nodeId] [int] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1050, N'<FrontPage id="1050" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-24T11:59:25" updateDate="2015-03-28T14:19:02" nodeName="Forside" urlName="forside" path="-1,1050" isDoc="" nodeType="1047" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1049" nodeTypeAlias="FrontPage">
  <seoTitle><![CDATA[Waterevents - Forside]]></seoTitle>
  <seoDescription><![CDATA[Gå tørfodet på vandet i de originale walking waterballs! 
Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.]]></seoDescription>
  <slideshowFolder>1074</slideshowFolder>
  <header><![CDATA[Velkommen til Waterevents!]]></header>
  <bodyText><![CDATA[<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/{localLink:1054}" title="Arrangementer">her.</a><a href="/"><br /></a></p>]]></bodyText>
  <facebookLink><![CDATA[http://facebook.com/waterevents]]></facebookLink>
</FrontPage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1054, N'<Events id="1054" parentID="1050" level="2" creatorID="0" sortOrder="0" createDate="2015-01-25T15:49:55" updateDate="2015-03-28T14:22:08" nodeName="Arrangementer" urlName="arrangementer" path="-1,1050,1054" isDoc="" nodeType="1053" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1057" nodeTypeAlias="Events">
  <seoTitle><![CDATA[Waterevents - Arrangementer]]></seoTitle>
  <seoDescription><![CDATA[Walking waterballs er vores mest populære arrangement. Vi tilbyder også Landballs til dem der gerne vil prøve oplevelsen, men ikke vil på vand]]></seoDescription>
  <header><![CDATA[Arrangementer]]></header>
  <bodyText><![CDATA[<p><span> </span></p>]]></bodyText>
</Events>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1058, N'<Textpage id="1058" parentID="1054" level="3" creatorID="0" sortOrder="3" createDate="2015-01-25T17:42:30" updateDate="2015-02-07T15:50:49" nodeName="Betingelser" urlName="betingelser" path="-1,1050,1054,1058" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Betingelser]]></header>
  <bodyText><![CDATA[<p><strong>Vægten pr. deltager ved arrangementer på vand, må ikke overstige 100 kg.</strong><br /><br /><strong>Fremmøde skal ske 15 min. før aftalt tidspunkt.</strong><br /><br /><strong>Man skal sørge for at have sokker/strømper på eller med, da det er påbudt at have på inde i</strong><br /><strong>boldene.</strong><br /><br /><strong>Der må ikke være nogle skarpe genstande på tøjet ved arrangementet. Så som lynlås på</strong><br /><strong>baglommen i jeans.</strong><br /><br /><strong>Bestilling/bookning.</strong> Det bookede arrangement er bindende ved bestilling/booking. I henhold til<br />lov om visse forbrugeraftaler er f.eks Waterballs/Landballs ikke omfattet af en fortrydelsesret.<br /><br /><strong>Betaling.</strong> Der betales kontant på dagen for arrangementets afholdelse, hvis ikke andet er aftalt.<br /><br /><strong>Ændring.</strong> Ved ændring af tidspunkt eller dato, skal vi kontaktes på mail. Det kan forventes at koste<br />Dkk 100,- i adminstrationsomkostning pr. booking.<br /><br /><strong>Afbestilling.</strong> Ved afbestilling mindre end 7 dage før arrangementets afholdelse opkræves 500,- kr.<br />i afbestillingsgebyr.<br />Ved afbestilling mindre end 2 dage før arrangement datoen eller manglende fremmøde på<br />arrangement datoen fra kundens side, opkræves det fulde aftalte beløb.<br />Waterevents forbeholder sig ret til at aflyse arrangementet pga. dårligt vejr og andre udefra<br />uforudsete hændelser, uden nogen form for kompensation af enhver form.<br />Waterevents og dets instruktører bestemmer udelukket om der kan aflyses pga vejr forhold.<br />Aflyser kunden i et tilfælle hvor vi vurderer at arrangementet kunne være afholdt, anses dette som<br />en afbestilling iht. almindelige betingelser.<br /><br /><strong>Alkohol.</strong> Waterevents og dennes instruktører forholder sig retten til at afvise stærkt berusede personer,<br />ligesom instruktørerne kan nægte enkeltpersoner eller hele hold at deltage i aktiviteterne som følge<br />af dette. Aflyses et arrangement pga. dette, gælder de normale betingelser som ved afbestilling.<br /><br /><strong>Forsikring.</strong> Som led i arrangementets afvikling og inden for det tidsrum arrangementet forløber over,<br />hvor Waterevents er leverandør af aktiviteter, er deltagerne forsikret mod fysisk skade gennem<br />sædvanlig ansvarsforsikring, tegnet i Alm. Brand Forsikring.<br />Den tegnede ansvarsforsikring dækker kun fysiske skader, der hidrører fra mangelfuld instruktion eller<br />fejl/mangler ved det anvendte udstyr.<br />Waterevents ansvarsforsikring dækker ikke øvrige skader uanset om disse er hændelige eller som følge<br />af deltagernes uagtsomme eller forsætlige dispositioner, herunder, men ikke begrænset til, manglende<br />overholdelse af de ved arrangementets gennemførelse, meddelte instrukser og sikkerhedsprocedurer.<br />Det forudsættes i øvrigt, at køberen af arrangementet har den lovpligtig arbejdsskadeforsikring for de<br />deltagende medarbejdere, såfremt der er tale om et firmaarrangement.<br /><br /><strong>Erstatningskrav.</strong> Eventuelle erstatningskrav er underlagt dansk erstatningsret. Ved brug af<br />underleverandører sikrer Waterevents, at disse er behørigt forsikret.<br />Enhver øvrig forsikring af deltagerne, og ethvert erstatningskrav som ikke er omfattet af den af<br />Waterevents eller dennes underleverandører tegnede ansvarsforsikring, er Waterevents og dennes<br />underleverandører uvedkommende.<br />Køberen af arrangementet er opfordret til at undersøge, hvorvidt deltagerne er dækket ind under<br />egen ansvarsforsikring, eller om denne som led i arrangementets afholdelse skal tegne yderligere<br />forsikring.<br />I forbindelse med arrangementet forbeholder Waterevents sig retten til at foretage enhver nødvendig<br />ændring, der påbyder sig som følge af arrangementets karakter, samt vejr- og vindforhold, herunder<br />ændringer vedrørende transportform og aktiviteter begrundet i deltagernes sikkerhed.<br />Enhver ændring vil i videst muligt omfang blive gennemført således at arrangementets samlede<br />karakter og omfang opretholdes, idet sådanne eventuelle programændringer vil være uden betydning<br />for arrangementet og den aftalte pris.<br /><br /></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1059, N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-03-28T14:33:25" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <seoTitle><![CDATA[Waterevents - Om os]]></seoTitle>
  <seoDescription><![CDATA[Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og
vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi
mener der skal til for at gøre jeres arrangement perfekt.]]></seoDescription>
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p style="text-align: center;"><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /><em>Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1060, N'<Textpage id="1060" parentID="1054" level="3" creatorID="0" sortOrder="2" createDate="2015-01-25T17:59:23" updateDate="2015-02-07T15:34:37" nodeName="Spørgsmål og svar" urlName="spoergsmaal-og-svar" path="-1,1050,1054,1060" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Spørgsmål og svar]]></header>
  <bodyText><![CDATA[<p><strong>1. Hvilken påklædning er påkrævet?</strong><br />Ganske almindeligt tøj, uden skarpe genstande, eller andre objekter der kan skade vores bolde.<br />Strømper er at foretrække.<br /><br /><br /><strong>2. Hvor kan vi holde arrangementet, og hvilke krav er der?</strong><br />Vi har en liste over vores faste lokationer, og krav til andre steder valgt af dig, i menuen ”lokationer”.<br /><br /><br /><strong>3. Er der nogle vægtgrænser?</strong><br />Boldene tåler en maxvægt på 100 kg.<br /><br /><br /><strong>4. Kan gravide deltage?</strong><br />Gravide kan sagtens deltage. Aktivitetsniveauet bestemmes helt selv af den enkelte deltager.<br /><br /><br /><strong>5. Er det sikkert?</strong><br />Sikkerhed er altid i top. Vores bolde er godkendte af teknologisk institut, udstyret med sikkerhedsliner,<br />og personalet er uddannet.<br /><br /><br /><br /><strong>6. Må man have indtaget alkohol?</strong><br />Vi forbeholder os ret til at afvise stærkt berusede personer iht. Vores <a href="/arrangementer/betingelser/" target="_parent">betingelser</a></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1064, N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-03-28T14:31:49" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <seoTitle><![CDATA[Waterevents - Lokationer]]></seoTitle>
  <seoDescription><![CDATA[Vi afholder arrangementer i det meste af landet. - Læs mere]]></seoDescription>
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land til vand problemfri.<br /></span></p>
<p> </p>
<p style="text-align: center;"><em> Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1065, N'<LocationsRegion id="1065" parentID="1064" level="3" creatorID="0" sortOrder="0" createDate="2015-01-25T18:08:34" updateDate="2015-01-25T18:08:34" nodeName="Sjælland" urlName="sjaelland" path="-1,1050,1064,1065" isDoc="" nodeType="1062" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="LocationsRegion" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1066, N'<LocationsRegion id="1066" parentID="1064" level="3" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:43" updateDate="2015-01-25T18:08:43" nodeName="Fyn" urlName="fyn" path="-1,1050,1064,1066" isDoc="" nodeType="1062" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="LocationsRegion" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1068, N'<Location id="1068" parentID="1065" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:09:24" updateDate="2015-02-07T16:04:21" nodeName="Søernes sejlklub" urlName="soeernes-sejlklub" path="-1,1050,1064,1065,1068" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Søernes Sejlklub (ved Søpavillonen)
Gyldenløvesgade 24, 1369 København]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1069, N'<Location id="1069" parentID="1066" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:14:24" updateDate="2015-02-07T16:27:36" nodeName="Østersøgade 8" urlName="østersoegade-8" path="-1,1050,1064,1066,1069" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Østersøgade 8, 5000 Odense C
(ved fodboldfabrikken)]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/%C3%98sters%C3%B8gade+8,+5000+Odense+C/@55.407511,10.37848,17z/data=!3m1!4b1!4m2!3m1!1s0x464ce007e1a276eb:0x82472e9b9562d7e?hl=da]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1070, N'<Location id="1070" parentID="1066" level="4" creatorID="0" sortOrder="1" createDate="2015-01-25T18:15:10" updateDate="2015-02-07T16:06:04" nodeName="Middelfart roklub" urlName="middelfart-roklub" path="-1,1050,1064,1066,1070" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Middelfart Roklub, Kongebrovej 66, 
5500 Middelfart]]></address>
  <googleMapsLink><![CDATA[Middelfart Roklub, Kongebrovej 66, 5500 Middelfart]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1072, N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-03-28T14:32:59" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <seoTitle><![CDATA[Waterevents - Priser]]></seoTitle>
  <seoDescription><![CDATA[Priserne er gældende for både Waterballs og Landballs]]></seoDescription>
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores <a href="/{localLink:1058}" title="Betingelser">betingelser</a></span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1073, N'<Folder id="1073" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-25T19:12:15" updateDate="2015-01-25T19:12:15" nodeName="Media" urlName="media" path="-1,1073" isDoc="" nodeType="1031" writerName="Mads Tjørnfelt" writerID="0" version="df70d74b-8eca-48e1-88fe-c9f767a78460" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1074, N'<Folder id="1074" parentID="1073" level="2" creatorID="0" sortOrder="0" createDate="2015-01-25T19:12:29" updateDate="2015-01-25T19:12:47" nodeName="Slideshow" urlName="slideshow" path="-1,1073,1074" isDoc="" nodeType="1031" writerName="Mads Tjørnfelt" writerID="0" version="a5368e38-3ad2-4b34-81e1-12af5cd47245" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1075, N'<Image id="1075" parentID="1074" level="3" creatorID="0" sortOrder="0" createDate="2015-01-25T19:12:40" updateDate="2015-01-25T19:42:56" nodeName="pic4.jpg" urlName="pic4jpg" path="-1,1073,1074,1075" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="ab5f9aa3-db3d-4cb0-a163-6d96d5483d68" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1003/pic4.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[1280]]></umbracoWidth>
  <umbracoHeight><![CDATA[450]]></umbracoHeight>
  <umbracoBytes><![CDATA[385734]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1076, N'<Image id="1076" parentID="1074" level="3" creatorID="0" sortOrder="0" createDate="2015-01-25T19:12:40" updateDate="2015-01-25T19:43:09" nodeName="pic2.jpg" urlName="pic2jpg" path="-1,1073,1074,1076" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="01d798e3-5b1b-42d6-a533-8b092c3adf52" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1002/pic2.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[1280]]></umbracoWidth>
  <umbracoHeight><![CDATA[450]]></umbracoHeight>
  <umbracoBytes><![CDATA[559128]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1077, N'<Image id="1077" parentID="1074" level="3" creatorID="0" sortOrder="0" createDate="2015-01-25T19:12:40" updateDate="2015-01-25T19:43:20" nodeName="pic3.jpg" urlName="pic3jpg" path="-1,1073,1074,1077" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="79e80988-a7c8-4f80-a7e3-58040c382abc" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1004/pic3.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[1280]]></umbracoWidth>
  <umbracoHeight><![CDATA[450]]></umbracoHeight>
  <umbracoBytes><![CDATA[475403]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1078, N'<Image id="1078" parentID="1074" level="3" creatorID="1" sortOrder="3" createDate="2015-01-25T19:12:40" updateDate="2015-02-07T16:58:26" nodeName="pic1.jpg" urlName="pic1jpg" path="-1,1073,1074,1078" isDoc="" nodeType="1032" writerName="Michael" writerID="1" version="fabf434e-86f0-471f-9435-29153b9e7252" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1001/1980-2.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[1980]]></umbracoWidth>
  <umbracoHeight><![CDATA[450]]></umbracoHeight>
  <umbracoBytes><![CDATA[1193054]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1080, N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-03-28T14:26:54" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <seoTitle><![CDATA[Waterevents - Kontakt]]></seoTitle>
  <seoDescription><![CDATA[Kontakt os i dag hvis du vil booke eller har spørgsmål]]></seoDescription>
  <header><![CDATA[Kontakt]]></header>
  <bodyText><![CDATA[<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden.</p>
<p>Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt. - <strong>OBS. Svartid på e-mail henvendelser kan være længere end kontakt formularen</strong></p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[leif@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1082, N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-03-28T14:28:48" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat” Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>]]></bodyText>
  <image>1091</image>
</Event>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1083, N'<Folder id="1083" parentID="1073" level="2" creatorID="0" sortOrder="1" createDate="2015-01-31T14:08:07" updateDate="2015-01-31T14:08:07" nodeName="Tests" urlName="tests" path="-1,1073,1083" isDoc="" nodeType="1031" writerName="Mads Tjørnfelt" writerID="0" version="9137b278-bd3e-4e7f-a772-ac302ec3fd02" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1084, N'<Image id="1084" parentID="1083" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:08:26" updateDate="2015-01-31T16:42:35" nodeName="200x200 placeholder" urlName="200x200-placeholder" path="-1,1073,1083,1084" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="bde844dd-fde0-489f-9fd0-7fa5e7e6e45f" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1006/000000.gif]]></umbracoFile>
  <umbracoWidth><![CDATA[200]]></umbracoWidth>
  <umbracoHeight><![CDATA[200]]></umbracoHeight>
  <umbracoBytes><![CDATA[712]]></umbracoBytes>
  <umbracoExtension><![CDATA[gif]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1085, N'<Event id="1085" parentID="1054" level="3" creatorID="0" sortOrder="1" createDate="2015-01-31T14:10:19" updateDate="2015-03-28T14:30:15" nodeName="Landballs" urlName="landballs" path="-1,1050,1054,1085" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Landballs]]></header>
  <bodyText><![CDATA[<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen, i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave eller et grønt område at holde arrangementet på.</span></p>]]></bodyText>
  <image>1090</image>
</Event>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1086, N'<LocationsRegion id="1086" parentID="1064" level="3" creatorID="0" sortOrder="2" createDate="2015-01-31T14:37:15" updateDate="2015-01-31T14:37:15" nodeName="Jylland" urlName="jylland" path="-1,1050,1064,1086" isDoc="" nodeType="1062" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="LocationsRegion" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1089, N'<Image id="1089" parentID="1073" level="2" creatorID="1" sortOrder="2" createDate="2015-02-07T15:08:38" updateDate="2015-02-07T15:08:38" nodeName="cp" urlName="cp" path="-1,1073,1089" isDoc="" nodeType="1032" writerName="Michael" writerID="1" version="16ff86d9-bac8-49bb-9f7a-8831d65dca7d" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1007/cp-concept-art-4.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[600]]></umbracoWidth>
  <umbracoHeight><![CDATA[450]]></umbracoHeight>
  <umbracoBytes><![CDATA[24279]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1090, N'<Image id="1090" parentID="-1" level="1" creatorID="0" sortOrder="1" createDate="2015-02-07T15:20:53" updateDate="2015-02-07T15:20:53" nodeName="landballs pic.png" urlName="landballs-picpng" path="-1,1090" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="a38600ec-ad6f-4e54-bd37-815e945a8044" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1008/landballs-pic.png]]></umbracoFile>
  <umbracoWidth><![CDATA[200]]></umbracoWidth>
  <umbracoHeight><![CDATA[189]]></umbracoHeight>
  <umbracoBytes><![CDATA[59179]]></umbracoBytes>
  <umbracoExtension><![CDATA[png]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1091, N'<Image id="1091" parentID="-1" level="1" creatorID="0" sortOrder="2" createDate="2015-02-07T15:20:58" updateDate="2015-02-07T15:20:58" nodeName="waterballs pic.png" urlName="waterballs-picpng" path="-1,1091" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="3fced361-842b-4133-9739-4f6557ca0ad9" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1009/waterballs-pic.png]]></umbracoFile>
  <umbracoWidth><![CDATA[201]]></umbracoWidth>
  <umbracoHeight><![CDATA[200]]></umbracoHeight>
  <umbracoBytes><![CDATA[74570]]></umbracoBytes>
  <umbracoExtension><![CDATA[png]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1092, N'<Image id="1092" parentID="-1" level="1" creatorID="0" sortOrder="3" createDate="2015-02-07T15:24:03" updateDate="2015-02-07T15:24:03" nodeName="picture.jpg" urlName="picturejpg" path="-1,1092" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="9dead604-d0da-4501-83b7-9feb46df1ba6" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1010/picture.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[300]]></umbracoWidth>
  <umbracoHeight><![CDATA[610]]></umbracoHeight>
  <umbracoBytes><![CDATA[205691]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1094, N'<Image id="1094" parentID="-1" level="1" creatorID="0" sortOrder="4" createDate="2015-02-07T15:54:26" updateDate="2015-02-07T15:54:26" nodeName="flydebro.jpg" urlName="flydebrojpg" path="-1,1094" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="0a36b988-b694-4188-92a9-a2c50ba3c1b4" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1011/flydebro.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[450]]></umbracoWidth>
  <umbracoHeight><![CDATA[250]]></umbracoHeight>
  <umbracoBytes><![CDATA[123835]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1095, N'<Image id="1095" parentID="-1" level="1" creatorID="0" sortOrder="5" createDate="2015-02-07T15:54:31" updateDate="2015-02-07T15:54:31" nodeName="om os.jpg" urlName="om-osjpg" path="-1,1095" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="02148c35-9a23-48fe-8351-99a2b313351b" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1012/om-os.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[720]]></umbracoWidth>
  <umbracoHeight><![CDATA[440]]></umbracoHeight>
  <umbracoBytes><![CDATA[276845]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1096, N'<Location id="1096" parentID="1086" level="4" creatorID="1" sortOrder="0" createDate="2015-02-07T16:09:34" updateDate="2015-02-07T16:09:34" nodeName="vejle" urlName="vejle" path="-1,1050,1064,1086,1096" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Vejle Kajakklub, Ibæk Strandvej 21A,
7100 Vejle]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Vejle+Kajakklub/@55.708211,9.555582,17z/data=!3m1!4b1!4m2!3m1!1s0x464c83afce4462f7:0x5cb5f3500ff9f521]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1097, N'<Location id="1097" parentID="1086" level="4" creatorID="1" sortOrder="1" createDate="2015-02-07T16:14:38" updateDate="2015-02-07T16:14:38" nodeName="Kolding" urlName="kolding" path="-1,1050,1064,1086,1097" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Kolding KajakKlub, Trindholmsgade 20,
6000 Kolding]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=31&gs_id=2&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&wrapid=tljp132959906032802&q=Trindholmsgade+20,+6000+Kolding&um=1&ie=UTF-8&hq&hnear=0x464c9f65b13353e7:0xe3c020efa6b789e9,Trindholmsgade+20,+6000+Kolding&gl=dk&ei=URJAT-LBEsrEtAbktf3jBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1098, N'<Location id="1098" parentID="1086" level="4" creatorID="1" sortOrder="2" createDate="2015-02-07T16:15:30" updateDate="2015-02-07T16:25:27" nodeName="Århus C" urlName="århus-c" path="-1,1050,1064,1086,1098" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Universitetsparken, Wilhelm Meyers Allé 210,
8000 Århus C]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Wilhelm+Meyers+Alle,+8000+Aarhus+C/@56.1670588,10.2048241,17z/data=!3m1!4b1!4m2!3m1!1s0x464c3fbf3f75d091:0xac89005f4ed164c8?hl=da]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1099, N'<Location id="1099" parentID="1086" level="4" creatorID="1" sortOrder="3" createDate="2015-02-07T16:22:37" updateDate="2015-02-07T16:22:37" nodeName="Oddervej" urlName="oddervej" path="-1,1050,1064,1086,1099" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Oddervej, 8660 Skanderborg
(100 meter nord for Oddervej 24)]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Oddervej+24,+8660+Skanderborg/@56.040295,9.941939,609m/data=!3m1!1e3!4m2!3m1!1s0x464c6eefce025ebb:0x2045dd9791df3e33]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1100, N'<Location id="1100" parentID="1086" level="4" creatorID="1" sortOrder="4" createDate="2015-02-07T16:23:40" updateDate="2015-02-07T16:23:40" nodeName="Horsens" urlName="horsens" path="-1,1050,1064,1086,1100" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Lovbyvej 35, 8700 Horsens]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Lovbyvej+35,+8700+Horsens/@55.871262,9.8187339,17z/data=!3m1!4b1!4m2!3m1!1s0x464c633b983339c1:0x25a74d58e9057c63?hl=da]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1101, N'<Location id="1101" parentID="1086" level="4" creatorID="1" sortOrder="5" createDate="2015-02-07T16:24:08" updateDate="2015-02-07T16:24:15" nodeName="Silkeborg" urlName="silkeborg" path="-1,1050,1064,1086,1101" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Østre Søbad, Horsensvej 2, 8600 Silkeborg]]></address>
  <googleMapsLink><![CDATA[Østre Søbad, Horsensvej 2, 8600 Silkeborg]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1102, N'<Image id="1102" parentID="-1" level="1" creatorID="0" sortOrder="6" createDate="2015-02-07T16:35:35" updateDate="2015-02-07T16:35:35" nodeName="picture2.jpg" urlName="picture2jpg" path="-1,1102" isDoc="" nodeType="1032" writerName="Mads Tjørnfelt" writerID="0" version="dac6022e-879b-4a87-9262-c366ed9d26ca" template="0" nodeTypeAlias="Image">
  <umbracoFile><![CDATA[/media/1013/picture2.jpg]]></umbracoFile>
  <umbracoWidth><![CDATA[721]]></umbracoWidth>
  <umbracoHeight><![CDATA[230]]></umbracoHeight>
  <umbracoBytes><![CDATA[193330]]></umbracoBytes>
  <umbracoExtension><![CDATA[jpg]]></umbracoExtension>
</Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1104, N'<Link id="1104" parentID="1054" level="3" creatorID="0" sortOrder="4" createDate="2015-03-28T13:30:32" updateDate="2015-03-28T13:31:27" nodeName="Priser" urlName="priser" path="-1,1050,1054,1104" isDoc="" nodeType="1103" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Link">
  <internalLink>1072</internalLink>
</Link>')
/****** Object:  Table [dbo].[cmsContentVersion]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [int] NOT NULL,
	[VersionId] [uniqueidentifier] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
	[LanguageLocale] [nvarchar](10) NULL,
 CONSTRAINT [PK_cmsContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (1, 1050, N'50258e61-f0e5-4afc-a342-66cdcf09bba5', CAST(0x0000A42A00C598E5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (2, 1054, N'1d7b9daa-9282-45fb-8b62-8a26edb57ee1', CAST(0x0000A42B0107270E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (3, 1058, N'b8d3f790-67e2-439e-ae62-8e5eb6a3f261', CAST(0x0000A42B0124D90C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (4, 1059, N'652a5ae3-5dc2-4a66-8b11-7291dc3ed195', CAST(0x0000A42B01262863 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (5, 1059, N'7a7e8a01-3bfd-4446-917a-4a3edfc81a3a', CAST(0x0000A42B0126EA4B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (6, 1058, N'66b013e2-c598-4001-8d0e-b5cded2a9a2d', CAST(0x0000A42B0127DF2D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (7, 1060, N'620370ef-a220-4dd6-97a3-26b6daa00170', CAST(0x0000A42B0128765B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (8, 1064, N'bd823520-5121-4e0e-ac4c-322ba4b38556', CAST(0x0000A42B012AD662 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (9, 1064, N'f241dfbb-92ee-430e-b0c6-db5f64527cde', CAST(0x0000A42B012AE682 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (10, 1059, N'994055b0-252b-4a4b-a791-82845fc2c0bd', CAST(0x0000A42B012AE6B7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (11, 1065, N'5b7a6b2d-6da3-4629-9b0b-e974e56e975d', CAST(0x0000A42B012AFC91 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (12, 1066, N'666f6aa1-36b1-4492-861d-04b94449eeb9', CAST(0x0000A42B012B0755 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (13, 1067, N'e0ffbd2e-1e7a-450a-9f7e-be0cfe79b406', CAST(0x0000A42B012B1672 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (14, 1068, N'a42d0de9-5091-4aa2-b5ce-39698a347685', CAST(0x0000A42B012B368E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (15, 1068, N'4db988d9-44d4-4846-ae14-092079ebe6d8', CAST(0x0000A43200E18FFD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (16, 1069, N'e230be8b-5c84-495e-a786-64799d21e47b', CAST(0x0000A42B012C96C3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (17, 1070, N'a197af81-9b85-4772-a2e2-9856461519fb', CAST(0x0000A42B012CCCB2 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (18, 1064, N'bf465515-eb57-47b8-bd19-df02f5e4f5c7', CAST(0x0000A42B012E9931 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (19, 1064, N'd64aab66-27a2-4561-bd82-022693a45f13', CAST(0x0000A42B012EB96E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (20, 1072, N'a4354c69-784a-40e4-b235-afecad38b46a', CAST(0x0000A42B01331F3C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (21, 1072, N'f5028395-9571-46b2-a1ae-dc08d990f4cf', CAST(0x0000A42B013335FD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (22, 1059, N'8acf220b-38b5-457f-a501-1c89aa274ba4', CAST(0x0000A42B01333644 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (23, 1073, N'df70d74b-8eca-48e1-88fe-c9f767a78460', CAST(0x0000A42B013C79AE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (24, 1074, N'a5368e38-3ad2-4b34-81e1-12af5cd47245', CAST(0x0000A42B013CA026 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (25, 1075, N'ab5f9aa3-db3d-4cb0-a163-6d96d5483d68', CAST(0x0000A42B0144E73D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (26, 1076, N'01d798e3-5b1b-42d6-a533-8b092c3adf52', CAST(0x0000A42B0144F6AC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (27, 1077, N'79e80988-a7c8-4f80-a7e3-58040c382abc', CAST(0x0000A42B01450418 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (28, 1078, N'fabf434e-86f0-471f-9435-29153b9e7252', CAST(0x0000A4380117B99E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (29, 1050, N'd61d774c-3a3c-458b-a651-38f3c7c42f22', CAST(0x0000A42B013D4D81 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (30, 1050, N'7279de66-de54-47d9-b1fa-b14c7d82523c', CAST(0x0000A42B013E20C7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (31, 1080, N'ba2530bf-1b7b-4c79-ad46-527a6e821bd2', CAST(0x0000A43100B196A9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (32, 1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', CAST(0x0000A43100CF02AF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (33, 1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', CAST(0x0000A43100D309DC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (34, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', CAST(0x0000A43100D4B8EE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (35, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', CAST(0x0000A43100DD95D7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (36, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', CAST(0x0000A43100DEF4D9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (37, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', CAST(0x0000A43100DF4709 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (38, 1050, N'2cc4c4b7-0541-4ee7-b0da-f0f92326de56', CAST(0x0000A43100E5CC3D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (39, 1082, N'f0930ef3-a366-4de1-9a4d-ff214fdf4b02', CAST(0x0000A43100E81A59 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (40, 1083, N'9137b278-bd3e-4e7f-a772-ac302ec3fd02', CAST(0x0000A43100E8F237 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (41, 1084, N'bde844dd-fde0-489f-9fd0-7fa5e7e6e45f', CAST(0x0000A43101135E7F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (42, 1082, N'ab0c93ee-7f4d-4ba7-8a9b-7afa3b6fd531', CAST(0x0000A43100E92517 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (43, 1082, N'b1e1f0da-dd8d-4529-8989-d8e4851c2e54', CAST(0x0000A43100E96736 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (44, 1085, N'993b18c1-5c5d-4356-8fb6-8991c2bf24e8', CAST(0x0000A43100E98C5A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (45, 1054, N'b319d30b-9869-41c6-83a3-e3905d89f19d', CAST(0x0000A43100EB77CF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (46, 1064, N'c96b017b-f99c-4962-8d70-ad81de01a725', CAST(0x0000A43100F0ABDE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (47, 1067, N'0ea42387-b34a-4564-82fc-d3bd9bc1b712', CAST(0x0000A43100F0E054 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (48, 1067, N'ca2420ba-5c55-4d1e-877c-db43af0b08ec', CAST(0x0000A43100F0E101 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (49, 1086, N'a45b15b2-bd05-49a2-a8cf-99b44bca782e', CAST(0x0000A43100F0F1C6 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (50, 1072, N'284bd552-a01c-4054-8312-348071f3485d', CAST(0x0000A43100F2FFCA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (51, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', CAST(0x0000A43100F30BD9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (52, 1082, N'46a763ea-7f34-44b7-b5b6-64839b745799', CAST(0x0000A43800B669F1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (53, 1085, N'64180037-ef93-4597-8bb7-ff5ce42d4873', CAST(0x0000A43800B66A08 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (54, 1060, N'6aa5aaeb-63b8-4c87-aaf8-3ede2efb3c79', CAST(0x0000A43800B66A12 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (55, 1058, N'e643684b-18ab-4dd0-8629-f9c54c8511da', CAST(0x0000A43800B66A16 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (56, 1082, N'dca05b06-ecac-4b1b-a97f-01a05de00cee', CAST(0x0000A43800F25F89 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (57, 1082, N'813ed90a-931d-4f9a-ad75-2af7bc5c03be', CAST(0x0000A43800F269EB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (58, 1087, N'690ef71b-cc0e-4b9e-9029-06c98ab1f768', CAST(0x0000A43800F2C533 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (59, 1087, N'98c4647c-0f81-44d3-ba67-d3757d3a5f07', CAST(0x0000A43800F37619 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (60, 1087, N'e1b6dac8-a7fa-4910-9186-d5863f1d9444', CAST(0x0000A43800F37635 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (61, 1088, N'0d71a3ad-1079-4fa3-9253-6594e9c8bd6f', CAST(0x0000A43800F3A12E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (62, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', CAST(0x0000A43800F5AE62 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (63, 1089, N'16ff86d9-bac8-49bb-9f7a-8831d65dca7d', CAST(0x0000A43800F9906E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (64, 1060, N'44132cab-5981-4573-b090-3e17a30b7fae', CAST(0x0000A43800F9D73C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (65, 1088, N'e9514f7d-bb97-4391-8d8e-b37bc3d3e4b2', CAST(0x0000A43800FB1083 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (66, 1088, N'679cd5b8-4249-464c-a104-7a5215a6ff4c', CAST(0x0000A43800FB10A4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (67, 1082, N'1e3fb059-bc80-44d9-8cbb-660707d7f705', CAST(0x0000A43800FBE4C0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (68, 1085, N'4602c075-68d8-4419-b680-00442490f4bf', CAST(0x0000A43800FCD084 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (69, 1090, N'a38600ec-ad6f-4e54-bd37-815e945a8044', CAST(0x0000A43800FCEDD9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (70, 1091, N'3fced361-842b-4133-9739-4f6557ca0ad9', CAST(0x0000A43800FCF442 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (71, 1082, N'f9b54923-6e14-4e64-a838-6fe6a78326d3', CAST(0x0000A43800FD1570 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (72, 1085, N'aba5de8d-9997-4933-8670-9b7a48d7f254', CAST(0x0000A43800FD8E5C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (73, 1092, N'9dead604-d0da-4501-83b7-9feb46df1ba6', CAST(0x0000A43800FDCC57 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (74, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', CAST(0x0000A43800FE0972 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (75, 1093, N'78b6879c-68cc-48ef-9f6d-18942667422f', CAST(0x0000A43800FF9666 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (76, 1060, N'7bbab874-3b75-43db-b76e-25b63d8f71c8', CAST(0x0000A43800FFF511 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (77, 1093, N'94015bad-4bbe-4ccd-b993-cf531ac13b79', CAST(0x0000A43801003F76 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (78, 1060, N'b65542b0-9f6f-4900-8201-2741d5244566', CAST(0x0000A4380100B3D3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (79, 1058, N'0023a7f9-4071-44fd-9f82-1dfd955d4f35', CAST(0x0000A4380104C177 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (80, 1058, N'8c682d82-683d-4066-87f5-d5d9ae07b4ce', CAST(0x0000A438010513CF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (81, 1058, N'1b2298b3-37b5-4020-9389-6387810172e0', CAST(0x0000A4380105274F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (82, 1064, N'c4a319f3-e4eb-4ca0-9cb8-6d90624c060c', CAST(0x0000A4380105AF6E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (83, 1064, N'c5564bb6-0c82-489d-9aaa-6d8b0d579ad2', CAST(0x0000A4380106176B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (84, 1094, N'0a36b988-b694-4188-92a9-a2c50ba3c1b4', CAST(0x0000A438010625BC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (85, 1095, N'02148c35-9a23-48fe-8351-99a2b313351b', CAST(0x0000A43801062A96 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (86, 1064, N'78e9f171-61a1-4db5-aa50-8df12a7519de', CAST(0x0000A438010653E1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (87, 1064, N'ce88003a-6090-4f21-b9ca-3c2e6d57b066', CAST(0x0000A43801066648 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (88, 1064, N'98688c04-bc77-4831-b49c-56f9ec196cd3', CAST(0x0000A4380106A7E3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (89, 1064, N'd661447e-baf9-4ae6-a81e-7ef49118515a', CAST(0x0000A4380106C00F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (90, 1064, N'37738063-34dc-402a-b0b1-02ea91a9a72c', CAST(0x0000A4380106C9B5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (91, 1064, N'9273922b-58c9-4a19-a287-8d2e165d4479', CAST(0x0000A43801070396 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (92, 1064, N'0a5bab78-b697-4f27-86e4-84bacf21851c', CAST(0x0000A438010787A4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (93, 1068, N'917c9c70-9959-45a3-a642-7e6cfdb3d8fe', CAST(0x0000A438010892B4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (94, 1068, N'c126f2a5-4710-40d0-b71a-65e0860f30f5', CAST(0x0000A4380108B782 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (95, 1068, N'43b8dc27-073c-49b3-a7d4-4e80df828015', CAST(0x0000A4380108C884 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (96, 1068, N'abb15004-dd44-4daa-8256-10b278af0f81', CAST(0x0000A4380108D4F3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (97, 1068, N'e8e6db35-2341-440d-950f-9ef0913a6148', CAST(0x0000A4380108DE1B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (98, 1069, N'b14cbece-dec8-45ba-b396-cec3f7bb8785', CAST(0x0000A43801090F5C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (99, 1070, N'acb27f83-46a4-442a-acc4-48b0dc036eee', CAST(0x0000A438010956CA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (100, 1096, N'3e558c5e-1821-4b3f-b573-9e510aa2e290', CAST(0x0000A438010A4DBA AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (101, 1097, N'4b5f7da8-9c9e-46f5-b955-074cc90d942e', CAST(0x0000A438010BB1E8 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (102, 1098, N'057bb192-0446-445e-b250-ce0a52c182a3', CAST(0x0000A438010BEE59 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (103, 1099, N'8cf89da8-f840-4cbd-b3bb-c47c3f6b6dba', CAST(0x0000A438010DE280 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (104, 1100, N'9f32767b-11e5-4fe9-b1d2-dcb64b88b7f2', CAST(0x0000A438010E2C6C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (105, 1101, N'7917db90-4af2-478e-aad2-2409b5051da8', CAST(0x0000A438010E554F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (106, 1098, N'a6aa6f03-0d5c-4de0-a42f-bc33b7575a50', CAST(0x0000A438010EA9D5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (107, 1069, N'0bc12756-0b6b-40b5-8f4b-c60c9770ef11', CAST(0x0000A438010F4197 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (108, 1064, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', CAST(0x0000A438010FA744 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (109, 1072, N'7e80f192-ce47-4348-b560-207f6f8fa6c0', CAST(0x0000A43801103AB9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (110, 1072, N'7588f3c9-0163-4035-965d-18bb2c623e69', CAST(0x0000A438011166D0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (111, 1102, N'dac6022e-879b-4a87-9262-c366ed9d26ca', CAST(0x0000A438011172EB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (112, 1072, N'91c8a74c-674e-42b5-a783-c10b423605c8', CAST(0x0000A43801129037 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (113, 1072, N'248aaab9-5ba0-49ed-b93c-898b3448eafa', CAST(0x0000A4380112A972 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (114, 1072, N'1c693c8e-bb54-4076-9838-2601d42093f2', CAST(0x0000A4380112EA15 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (115, 1072, N'81849fa3-4028-4800-9c88-fc39e490ac16', CAST(0x0000A438011356F5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (116, 1059, N'd7e69214-52a4-4479-80ee-f186d03ffb12', CAST(0x0000A4380113F0C4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (117, 1059, N'2362a9bf-4497-4085-b4d7-c15137647bcb', CAST(0x0000A4380113FCC3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (118, 1059, N'733f1ac2-dcab-49e5-8105-3898483d97eb', CAST(0x0000A438011419E0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (119, 1059, N'5a02dd7b-07b4-4cc8-85a0-f5dfe644fdf6', CAST(0x0000A438011423B0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (120, 1059, N'58ddafec-62c3-4c45-a58b-992589f94972', CAST(0x0000A43801142CFD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (121, 1093, N'83f28058-22d4-4c05-b195-7578d90b268e', CAST(0x0000A46900DE90DE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (122, 1093, N'c6e0e638-3932-469e-82a7-172d9e6ee201', CAST(0x0000A46900DE9223 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (123, 1104, N'a00f6af4-08b1-4db3-8b49-8a309514cf0d', CAST(0x0000A46900DE9F86 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (124, 1104, N'bc57dcde-192f-428a-98eb-1604506d3c68', CAST(0x0000A46900DEDF7E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (125, 1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', CAST(0x0000A46900E1D430 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (126, 1082, N'bb557538-0807-4bad-ad47-e308fb2a30a2', CAST(0x0000A46900E25BE3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (127, 1072, N'5a4efbbe-12cc-410f-8fa2-d8883b3dd975', CAST(0x0000A46900E2F88E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (128, 1072, N'f59391d7-e0d4-4785-8858-0b0e6c8e8f6f', CAST(0x0000A46900E330F3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (129, 1072, N'288d8307-f902-478f-b3dc-877df4ea506b', CAST(0x0000A46900E3A09C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (130, 1072, N'eab3b47c-034b-4ed1-a4a2-3c1c95f4a9a6', CAST(0x0000A46900E3E274 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (131, 1059, N'e48e460c-6ffe-4a28-b953-4a0727febe82', CAST(0x0000A46900E42C35 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (132, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', CAST(0x0000A46900E49839 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (133, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', CAST(0x0000A46900E4C3E9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (134, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', CAST(0x0000A46900E507A4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (135, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', CAST(0x0000A46900E515ED AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (136, 1050, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', CAST(0x0000A46900EBF1A7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (137, 1054, N'7733c2b7-2187-4f40-a2bf-cc8073f506a1', CAST(0x0000A46900ECCAD1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (138, 1064, N'1927fb23-ceab-435f-85f6-16c1e19613b1', CAST(0x0000A46900ED567D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (139, 1072, N'744ac84b-f8cd-4284-8175-40c507f4b359', CAST(0x0000A46900ED81AA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (140, 1059, N'a6dca21e-7381-4643-816e-f84772d5aee2', CAST(0x0000A46900EDAEC8 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (141, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', CAST(0x0000A46900EE1AF6 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (142, 1082, N'61bcf9b7-935f-4869-a7d2-fbee68cf4a43', CAST(0x0000A46900EE4F00 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (143, 1082, N'd82dd954-062c-437f-9a50-b177c987cecf', CAST(0x0000A46900EE65B5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (144, 1082, N'1bdfd36c-faf9-424b-9427-0039bc03c249', CAST(0x0000A46900EE9393 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (145, 1082, N'1e87f631-88d7-4284-97c2-36f22d61e9a4', CAST(0x0000A46900EEA098 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (146, 1085, N'62fad2cc-0351-46c0-85b4-3254359cf988', CAST(0x0000A46900EEDA8C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (147, 1085, N'c11a55bb-3576-4da8-9409-c3fa5bac65a9', CAST(0x0000A46900EEF014 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (148, 1085, N'f7c7da80-6e0f-4b12-9fda-b3fd8acbcdda', CAST(0x0000A46900EF0670 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (149, 1064, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', CAST(0x0000A46900EF2A90 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (150, 1064, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', CAST(0x0000A46900EF31C7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (151, 1064, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', CAST(0x0000A46900EF5E3C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (152, 1064, N'0478d253-e2a2-4751-a0b0-60c3d45ae1cb', CAST(0x0000A46900EF73A9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (153, 1072, N'47015313-1ff1-49f5-b409-e5a89e92f6ee', CAST(0x0000A46900EFC5AC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (154, 1059, N'54a2ea7f-c01d-4d2d-b4a5-89f8237dfcaf', CAST(0x0000A46900EFE432 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
/****** Object:  Table [dbo].[cmsMember]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[helpText] [nvarchar](1000) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (6, -90, 1032, 3, N'umbracoFile', N'Upload image', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (27, -38, 1031, 5, N'contents', N'Contents:', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (29, -92, 1044, 11, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', NULL, 1, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (30, -49, 1044, 11, N'umbracoMemberApproved', N'Is Approved', NULL, 2, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (31, -49, 1044, 11, N'umbracoMemberLockedOut', N'Is Locked Out', NULL, 3, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (32, -92, 1044, 11, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', NULL, 4, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (33, -92, 1044, 11, N'umbracoMemberLastLogin', N'Last Login Date', NULL, 5, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (34, -92, 1044, 11, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', NULL, 6, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (35, -88, 1051, 13, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (36, -87, 1051, 13, N'bodyText', N'Brødtekst', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (37, -89, 1063, 14, N'address', N'Adresse', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (38, -88, 1063, 14, N'googleMapsLink', N'Google maps link', NULL, 1, 0, N'', N'Indtast URL''en til adressen på google maps.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (39, -88, 1061, 15, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (40, -87, 1061, 15, N'bodyText', N'Brødtekst', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (41, -87, 1061, 16, N'postBodyText', N'Brødtekst', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (42, 1035, 1047, 17, N'slideshowFolder', N'Slideshow folder', NULL, 0, 0, N'', N'Vælg mappen der indeholder slides.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (43, -88, 1047, 18, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (44, -87, 1047, 18, N'bodyText', N'Brødtekst', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (45, -88, 1079, 19, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (46, -87, 1079, 19, N'bodyText', N'Brødtekst', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (47, -88, 1079, 20, N'from', N'Fra', NULL, 0, 0, N'', N'Indtast fra adressen. Denne adresse skal være en confirmed sender signature, konfigureret i postmark. Hvis du ikke er helt sikker på hvad dette er, så PIL IKKE VED DETTE FELT :-)')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (48, -88, 1079, 20, N'to', N'Til', NULL, 1, 0, N'', N'Adressen der modtager henvendelser via formularen. Vær obs på, at brugeren af formularen også får en kopi af beskeden, som en ekstra bekræftelse på at de rigtige værdier er indtastet.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (49, -89, 1079, 20, N'thanks', N'Takke tekst', NULL, 4, 0, N'', N'Takke teksten der bliver vist på siden når formularen er afsendt.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (50, -87, 1079, 20, N'emailTemplate', N'Email template', NULL, 3, 0, N'', N'Dette er beskeden i selve emailen der bliver afsendt. Brug følgende replace-værdier til at flette brugerens indtastede data ind i mailen:

##name##
##email##
##phone##
##address##
##postalcity##
##typewaterballs##
##typelandballs##
##participants##
##location##
##dateday##
##datehour##
##message##
')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (51, -88, 1079, 20, N'subject', N'Emne', NULL, 2, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (52, -88, 1047, 21, N'facebookLink', N'Facebook link', NULL, 0, 0, N'', N'Indtast URL''en til facebook siden.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (53, -88, 1056, 12, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (54, -87, 1056, 12, N'bodyText', N'Brødtekst', NULL, 2, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (55, 1035, 1056, 12, N'image', N'Billede', NULL, 1, 0, N'', N'Vælg et billede. Billedet skal være 200x200 for bedste resultat.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (56, -88, 1053, 22, N'header', N'Overskrift', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (57, -87, 1053, 22, N'bodyText', N'Brødtekst', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (58, -88, 1046, 23, N'seoTitle', N'Title-tag', NULL, 0, 0, N'', N'Sidens primære titel. Bliver vist i browser tabben, samt kan blive brugt af google i søgeresultat listen.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (59, -89, 1046, 23, N'seoDescription', N'Description', NULL, 1, 0, N'', N'Skriv en kortfattet beskrivelse af sidens indhold på max 160 tegn. Hjælper ikke på ranking direkte, men kan blive brugt af google som tekst på søgeresultat siden. En god beskrivende tekst kan derfor stadig have relevans for antal besøgende, hvilket på sigt kan betyde højere ranking. Kan være et uddrag af selve sidens indhold.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (60, 1034, 1103, 24, N'internalLink', N'Internt link', NULL, 0, 0, N'', N'')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyData]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contentNodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NULL,
	[propertytypeid] [int] NOT NULL,
	[dataInt] [int] NULL,
	[dataDate] [datetime] NULL,
	[dataNvarchar] [nvarchar](500) NULL,
	[dataNtext] [ntext] NULL,
 CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1, 1059, N'652a5ae3-5dc2-4a66-8b11-7291dc3ed195', 35, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2, 1059, N'652a5ae3-5dc2-4a66-8b11-7291dc3ed195', 36, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (3, 1059, N'7a7e8a01-3bfd-4446-917a-4a3edfc81a3a', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (4, 1059, N'7a7e8a01-3bfd-4446-917a-4a3edfc81a3a', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.</p>
<p>*Insert image here*</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (5, 1058, N'b8d3f790-67e2-439e-ae62-8e5eb6a3f261', 35, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (6, 1058, N'b8d3f790-67e2-439e-ae62-8e5eb6a3f261', 36, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (7, 1058, N'66b013e2-c598-4001-8d0e-b5cded2a9a2d', 35, NULL, NULL, N'Betingelser header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (8, 1058, N'66b013e2-c598-4001-8d0e-b5cded2a9a2d', 36, NULL, NULL, NULL, N'<p>Betingelser body text</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (9, 1060, N'620370ef-a220-4dd6-97a3-26b6daa00170', 35, NULL, NULL, N'Spørgsmål og svar', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10, 1060, N'620370ef-a220-4dd6-97a3-26b6daa00170', 36, NULL, NULL, NULL, N'<p>Q: How many cups of sugar does it take to get to the moon?</p>
<p>A: Three and a half</p>
<p> </p>
<p>Q: Hvad er 2 + 2</p>
<p>A: 4</p>
<p> </p>
<p>Q: Finder Michael selv på flere?</p>
<p>A: Ja</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11, 1059, N'994055b0-252b-4a4b-a791-82845fc2c0bd', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (12, 1059, N'994055b0-252b-4a4b-a791-82845fc2c0bd', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.</p>
<p>*Insert image here*</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (13, 1068, N'a42d0de9-5091-4aa2-b5ce-39698a347685', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (14, 1068, N'a42d0de9-5091-4aa2-b5ce-39698a347685', 38, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (15, 1068, N'4db988d9-44d4-4846-ae14-092079ebe6d8', 37, NULL, NULL, NULL, N'Søernes Sejlklub (ved Søpavillonen) Gyldenløvesgade 24, 1369 København')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (16, 1068, N'4db988d9-44d4-4846-ae14-092079ebe6d8', 38, NULL, NULL, N'http://google.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (17, 1069, N'e230be8b-5c84-495e-a786-64799d21e47b', 37, NULL, NULL, NULL, N'Østersøgade 8, 5000 Odense C')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (18, 1069, N'e230be8b-5c84-495e-a786-64799d21e47b', 38, NULL, NULL, N'http://eb.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (19, 1070, N'a197af81-9b85-4772-a2e2-9856461519fb', 37, NULL, NULL, NULL, N'Middelfart roklub, Svineryggen 1, 7100 Vejle')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (20, 1070, N'a197af81-9b85-4772-a2e2-9856461519fb', 38, NULL, NULL, N'http://dr.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (21, 1064, N'f241dfbb-92ee-430e-b0c6-db5f64527cde', 39, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (22, 1064, N'f241dfbb-92ee-430e-b0c6-db5f64527cde', 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (23, 1064, N'f241dfbb-92ee-430e-b0c6-db5f64527cde', 41, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (24, 1064, N'bf465515-eb57-47b8-bd19-df02f5e4f5c7', 39, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (25, 1064, N'bf465515-eb57-47b8-bd19-df02f5e4f5c7', 40, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (26, 1064, N'bf465515-eb57-47b8-bd19-df02f5e4f5c7', 41, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (27, 1064, N'd64aab66-27a2-4561-bd82-022693a45f13', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (28, 1064, N'd64aab66-27a2-4561-bd82-022693a45f13', 40, NULL, NULL, NULL, N'<p>Lokationer brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (29, 1064, N'd64aab66-27a2-4561-bd82-022693a45f13', 41, NULL, NULL, NULL, N'<p>Lokationer brødtekst (efter liste)</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (30, 1072, N'a4354c69-784a-40e4-b235-afecad38b46a', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (31, 1072, N'a4354c69-784a-40e4-b235-afecad38b46a', 36, NULL, NULL, NULL, N'<p>Priser brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (32, 1072, N'f5028395-9571-46b2-a1ae-dc08d990f4cf', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (33, 1072, N'f5028395-9571-46b2-a1ae-dc08d990f4cf', 36, NULL, NULL, NULL, N'<p>Priser brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (34, 1059, N'8acf220b-38b5-457f-a501-1c89aa274ba4', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (35, 1059, N'8acf220b-38b5-457f-a501-1c89aa274ba4', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.</p>
<p>*Insert image here*</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (36, 1073, N'df70d74b-8eca-48e1-88fe-c9f767a78460', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (37, 1074, N'a5368e38-3ad2-4b34-81e1-12af5cd47245', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (38, 1075, N'ab5f9aa3-db3d-4cb0-a163-6d96d5483d68', 6, NULL, NULL, N'/media/1003/pic4.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (39, 1076, N'01d798e3-5b1b-42d6-a533-8b092c3adf52', 6, NULL, NULL, N'/media/1002/pic2.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (40, 1075, N'ab5f9aa3-db3d-4cb0-a163-6d96d5483d68', 7, NULL, NULL, N'1280', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (41, 1077, N'79e80988-a7c8-4f80-a7e3-58040c382abc', 6, NULL, NULL, N'/media/1004/pic3.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (42, 1076, N'01d798e3-5b1b-42d6-a533-8b092c3adf52', 7, NULL, NULL, N'1280', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (43, 1075, N'ab5f9aa3-db3d-4cb0-a163-6d96d5483d68', 8, NULL, NULL, N'450', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (44, 1077, N'79e80988-a7c8-4f80-a7e3-58040c382abc', 7, NULL, NULL, N'1280', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (45, 1076, N'01d798e3-5b1b-42d6-a533-8b092c3adf52', 8, NULL, NULL, N'450', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (46, 1075, N'ab5f9aa3-db3d-4cb0-a163-6d96d5483d68', 9, NULL, NULL, N'385734', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (47, 1077, N'79e80988-a7c8-4f80-a7e3-58040c382abc', 8, NULL, NULL, N'450', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (48, 1076, N'01d798e3-5b1b-42d6-a533-8b092c3adf52', 9, NULL, NULL, N'559128', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (49, 1077, N'79e80988-a7c8-4f80-a7e3-58040c382abc', 9, NULL, NULL, N'475403', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (50, 1075, N'ab5f9aa3-db3d-4cb0-a163-6d96d5483d68', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (51, 1076, N'01d798e3-5b1b-42d6-a533-8b092c3adf52', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (52, 1077, N'79e80988-a7c8-4f80-a7e3-58040c382abc', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (53, 1078, N'fabf434e-86f0-471f-9435-29153b9e7252', 6, NULL, NULL, N'/media/1001/1980-2.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (54, 1078, N'fabf434e-86f0-471f-9435-29153b9e7252', 7, NULL, NULL, N'1980', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (55, 1078, N'fabf434e-86f0-471f-9435-29153b9e7252', 8, NULL, NULL, N'450', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (56, 1078, N'fabf434e-86f0-471f-9435-29153b9e7252', 9, NULL, NULL, N'1193054', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (57, 1078, N'fabf434e-86f0-471f-9435-29153b9e7252', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (58, 1050, N'50258e61-f0e5-4afc-a342-66cdcf09bba5', 42, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (59, 1050, N'50258e61-f0e5-4afc-a342-66cdcf09bba5', 43, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (60, 1050, N'50258e61-f0e5-4afc-a342-66cdcf09bba5', 44, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (61, 1050, N'd61d774c-3a3c-458b-a651-38f3c7c42f22', 42, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (62, 1050, N'd61d774c-3a3c-458b-a651-38f3c7c42f22', 43, NULL, NULL, N'Velkommen til Waterevents!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (63, 1050, N'd61d774c-3a3c-458b-a651-38f3c7c42f22', 44, NULL, NULL, NULL, N'<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (64, 1050, N'7279de66-de54-47d9-b1fa-b14c7d82523c', 42, 1074, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (65, 1050, N'7279de66-de54-47d9-b1fa-b14c7d82523c', 43, NULL, NULL, N'Velkommen til Waterevents!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (66, 1050, N'7279de66-de54-47d9-b1fa-b14c7d82523c', 44, NULL, NULL, NULL, N'<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (67, 1080, N'ba2530bf-1b7b-4c79-ad46-527a6e821bd2', 45, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (68, 1080, N'ba2530bf-1b7b-4c79-ad46-527a6e821bd2', 46, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (69, 1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (70, 1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', 46, NULL, NULL, NULL, N'<p>Kontaktside brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (71, 1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', 47, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (72, 1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', 48, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (73, 1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', 49, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (74, 1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (75, 1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (76, 1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', 46, NULL, NULL, NULL, N'<p>Kontaktside brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (77, 1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (78, 1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', 48, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (79, 1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', 49, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (80, 1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', 50, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (81, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (82, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', 46, NULL, NULL, NULL, N'<p>Kontaktside brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (83, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (84, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', 48, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (85, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (86, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location#</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message# </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (87, 1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', 51, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (88, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (89, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', 46, NULL, NULL, NULL, N'<p>Kontaktside brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (90, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (91, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', 48, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (92, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (93, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location#</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message# </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (94, 1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (95, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (96, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', 46, NULL, NULL, NULL, N'<p>Kontaktside brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (97, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (98, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', 48, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (99, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (100, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message# </p>')
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (101, 1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (102, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (103, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', 46, NULL, NULL, NULL, N'<p>Kontaktside brødtekst</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (104, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (105, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', 48, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (106, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (107, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (108, 1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (109, 1050, N'7279de66-de54-47d9-b1fa-b14c7d82523c', 52, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (110, 1050, N'2cc4c4b7-0541-4ee7-b0da-f0f92326de56', 42, 1074, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (111, 1050, N'2cc4c4b7-0541-4ee7-b0da-f0f92326de56', 43, NULL, NULL, N'Velkommen til Waterevents!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (112, 1050, N'2cc4c4b7-0541-4ee7-b0da-f0f92326de56', 44, NULL, NULL, NULL, N'<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (113, 1050, N'2cc4c4b7-0541-4ee7-b0da-f0f92326de56', 52, NULL, NULL, N'http://facebook.com', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (114, 1083, N'9137b278-bd3e-4e7f-a772-ac302ec3fd02', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (115, 1084, N'bde844dd-fde0-489f-9fd0-7fa5e7e6e45f', 6, NULL, NULL, N'/media/1006/000000.gif', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (116, 1084, N'bde844dd-fde0-489f-9fd0-7fa5e7e6e45f', 7, NULL, NULL, N'200', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (117, 1084, N'bde844dd-fde0-489f-9fd0-7fa5e7e6e45f', 8, NULL, NULL, N'200', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (118, 1084, N'bde844dd-fde0-489f-9fd0-7fa5e7e6e45f', 9, NULL, NULL, N'712', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (119, 1084, N'bde844dd-fde0-489f-9fd0-7fa5e7e6e45f', 10, NULL, NULL, N'gif', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (120, 1082, N'f0930ef3-a366-4de1-9a4d-ff214fdf4b02', 53, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (121, 1082, N'f0930ef3-a366-4de1-9a4d-ff214fdf4b02', 54, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (122, 1082, N'f0930ef3-a366-4de1-9a4d-ff214fdf4b02', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (123, 1082, N'ab0c93ee-7f4d-4ba7-8a9b-7afa3b6fd531', 53, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (124, 1082, N'ab0c93ee-7f4d-4ba7-8a9b-7afa3b6fd531', 54, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (125, 1082, N'ab0c93ee-7f4d-4ba7-8a9b-7afa3b6fd531', 55, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (126, 1082, N'b1e1f0da-dd8d-4529-8989-d8e4851c2e54', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (127, 1082, N'b1e1f0da-dd8d-4529-8989-d8e4851c2e54', 54, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (128, 1082, N'b1e1f0da-dd8d-4529-8989-d8e4851c2e54', 55, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (129, 1085, N'993b18c1-5c5d-4356-8fb6-8991c2bf24e8', 53, NULL, NULL, N'Landballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (130, 1085, N'993b18c1-5c5d-4356-8fb6-8991c2bf24e8', 54, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (131, 1085, N'993b18c1-5c5d-4356-8fb6-8991c2bf24e8', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (132, 1054, N'1d7b9daa-9282-45fb-8b62-8a26edb57ee1', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (133, 1054, N'1d7b9daa-9282-45fb-8b62-8a26edb57ee1', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (134, 1054, N'b319d30b-9869-41c6-83a3-e3905d89f19d', 56, NULL, NULL, N'Arrangementer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (135, 1054, N'b319d30b-9869-41c6-83a3-e3905d89f19d', 57, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (136, 1064, N'c96b017b-f99c-4962-8d70-ad81de01a725', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (137, 1064, N'c96b017b-f99c-4962-8d70-ad81de01a725', 40, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (138, 1064, N'c96b017b-f99c-4962-8d70-ad81de01a725', 41, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (139, 1072, N'284bd552-a01c-4054-8312-348071f3485d', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (140, 1072, N'284bd552-a01c-4054-8312-348071f3485d', 36, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (141, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (142, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', 46, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (143, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (144, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', 48, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (145, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (146, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (147, 1080, N'27293c28-5b12-4adf-8200-7b0474dec417', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (148, 1082, N'46a763ea-7f34-44b7-b5b6-64839b745799', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (149, 1082, N'46a763ea-7f34-44b7-b5b6-64839b745799', 54, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (150, 1082, N'46a763ea-7f34-44b7-b5b6-64839b745799', 55, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (151, 1085, N'64180037-ef93-4597-8bb7-ff5ce42d4873', 53, NULL, NULL, N'Landballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (152, 1085, N'64180037-ef93-4597-8bb7-ff5ce42d4873', 54, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (153, 1085, N'64180037-ef93-4597-8bb7-ff5ce42d4873', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (154, 1060, N'6aa5aaeb-63b8-4c87-aaf8-3ede2efb3c79', 35, NULL, NULL, N'Spørgsmål og svar', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (155, 1060, N'6aa5aaeb-63b8-4c87-aaf8-3ede2efb3c79', 36, NULL, NULL, NULL, N'<p>Q: How many cups of sugar does it take to get to the moon?</p>
<p>A: Three and a half</p>
<p> </p>
<p>Q: Hvad er 2 + 2</p>
<p>A: 4</p>
<p> </p>
<p>Q: Finder Michael selv på flere?</p>
<p>A: Ja</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (156, 1058, N'e643684b-18ab-4dd0-8629-f9c54c8511da', 35, NULL, NULL, N'Betingelser header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (157, 1058, N'e643684b-18ab-4dd0-8629-f9c54c8511da', 36, NULL, NULL, NULL, N'<p>Betingelser body text</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (158, 1082, N'dca05b06-ecac-4b1b-a97f-01a05de00cee', 53, NULL, NULL, N'Waterballs test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (159, 1082, N'dca05b06-ecac-4b1b-a97f-01a05de00cee', 54, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (160, 1082, N'dca05b06-ecac-4b1b-a97f-01a05de00cee', 55, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (161, 1082, N'813ed90a-931d-4f9a-ad75-2af7bc5c03be', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (162, 1082, N'813ed90a-931d-4f9a-ad75-2af7bc5c03be', 54, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (163, 1082, N'813ed90a-931d-4f9a-ad75-2af7bc5c03be', 55, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (164, 1087, N'690ef71b-cc0e-4b9e-9029-06c98ab1f768', 35, NULL, NULL, N'spaceballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (165, 1087, N'690ef71b-cc0e-4b9e-9029-06c98ab1f768', 36, NULL, NULL, NULL, N'<p>flyv i rummet!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (166, 1087, N'98c4647c-0f81-44d3-ba67-d3757d3a5f07', 35, NULL, NULL, N'spaceballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (167, 1087, N'98c4647c-0f81-44d3-ba67-d3757d3a5f07', 36, NULL, NULL, NULL, N'<p>flyv i rummet!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (168, 1087, N'e1b6dac8-a7fa-4910-9186-d5863f1d9444', 35, NULL, NULL, N'spaceballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (169, 1087, N'e1b6dac8-a7fa-4910-9186-d5863f1d9444', 36, NULL, NULL, NULL, N'<p>flyv i rummet!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (170, 1088, N'0d71a3ad-1079-4fa3-9253-6594e9c8bd6f', 53, NULL, NULL, N'spaceballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (171, 1088, N'0d71a3ad-1079-4fa3-9253-6594e9c8bd6f', 54, NULL, NULL, NULL, N'<p>gå i rummet :)</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (172, 1088, N'0d71a3ad-1079-4fa3-9253-6594e9c8bd6f', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (173, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 45, NULL, NULL, N'Kontaktside overskrift', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (174, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 46, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (175, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (176, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 48, NULL, NULL, N'leif@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (177, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (178, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (179, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (180, 1089, N'16ff86d9-bac8-49bb-9f7a-8831d65dca7d', 6, NULL, NULL, N'/media/1007/cp-concept-art-4.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (181, 1089, N'16ff86d9-bac8-49bb-9f7a-8831d65dca7d', 7, NULL, NULL, N'600', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (182, 1089, N'16ff86d9-bac8-49bb-9f7a-8831d65dca7d', 8, NULL, NULL, N'450', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (183, 1089, N'16ff86d9-bac8-49bb-9f7a-8831d65dca7d', 9, NULL, NULL, N'24279', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (184, 1089, N'16ff86d9-bac8-49bb-9f7a-8831d65dca7d', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (185, 1060, N'44132cab-5981-4573-b090-3e17a30b7fae', 35, NULL, NULL, N'Spørgsmål og svar', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (186, 1060, N'44132cab-5981-4573-b090-3e17a30b7fae', 36, NULL, NULL, NULL, N'<p><img style="width: 500px; height:375px;" src="/media/1007/cp-concept-art-4.jpg?width=500&amp;height=375" alt="undefined" rel="1089" />Q: How many cups of sugar does it take to get to the moon?</p>
<p>A: Three and a half</p>
<p> </p>
<p>Q: Hvad er 2 + 2</p>
<p>A: 4</p>
<p> </p>
<p>Q: Finder Michael selv på flere?</p>
<p>A: Ja</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (187, 1088, N'e9514f7d-bb97-4391-8d8e-b37bc3d3e4b2', 53, NULL, NULL, N'spaceballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (188, 1088, N'e9514f7d-bb97-4391-8d8e-b37bc3d3e4b2', 54, NULL, NULL, NULL, N'<p>gå i rummet :)</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (189, 1088, N'e9514f7d-bb97-4391-8d8e-b37bc3d3e4b2', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (190, 1088, N'679cd5b8-4249-464c-a104-7a5215a6ff4c', 53, NULL, NULL, N'spaceballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (191, 1088, N'679cd5b8-4249-464c-a104-7a5215a6ff4c', 54, NULL, NULL, NULL, N'<p>gå i rummet :)</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (192, 1088, N'679cd5b8-4249-464c-a104-7a5215a6ff4c', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (193, 1082, N'1e3fb059-bc80-44d9-8cbb-660707d7f705', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (194, 1082, N'1e3fb059-bc80-44d9-8cbb-660707d7f705', 54, NULL, NULL, NULL, N'<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme<br />ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/lokationer/">her</a></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (195, 1082, N'1e3fb059-bc80-44d9-8cbb-660707d7f705', 55, 1084, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (196, 1085, N'4602c075-68d8-4419-b680-00442490f4bf', 53, NULL, NULL, N'Landballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (197, 1085, N'4602c075-68d8-4419-b680-00442490f4bf', 54, NULL, NULL, NULL, N'<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til<br />dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen,<br />i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen<br />og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som<br />får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende<br />lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (198, 1085, N'4602c075-68d8-4419-b680-00442490f4bf', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (199, 1090, N'a38600ec-ad6f-4e54-bd37-815e945a8044', 6, NULL, NULL, N'/media/1008/landballs-pic.png', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (200, 1090, N'a38600ec-ad6f-4e54-bd37-815e945a8044', 7, NULL, NULL, N'200', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (201, 1090, N'a38600ec-ad6f-4e54-bd37-815e945a8044', 8, NULL, NULL, N'189', NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (202, 1090, N'a38600ec-ad6f-4e54-bd37-815e945a8044', 9, NULL, NULL, N'59179', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (203, 1090, N'a38600ec-ad6f-4e54-bd37-815e945a8044', 10, NULL, NULL, N'png', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (204, 1091, N'3fced361-842b-4133-9739-4f6557ca0ad9', 6, NULL, NULL, N'/media/1009/waterballs-pic.png', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (205, 1091, N'3fced361-842b-4133-9739-4f6557ca0ad9', 7, NULL, NULL, N'201', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (206, 1091, N'3fced361-842b-4133-9739-4f6557ca0ad9', 8, NULL, NULL, N'200', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (207, 1091, N'3fced361-842b-4133-9739-4f6557ca0ad9', 9, NULL, NULL, N'74570', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (208, 1091, N'3fced361-842b-4133-9739-4f6557ca0ad9', 10, NULL, NULL, N'png', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (209, 1082, N'f9b54923-6e14-4e64-a838-6fe6a78326d3', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (210, 1082, N'f9b54923-6e14-4e64-a838-6fe6a78326d3', 54, NULL, NULL, NULL, N'<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme<br />ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/lokationer/">her</a></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (211, 1082, N'f9b54923-6e14-4e64-a838-6fe6a78326d3', 55, 1091, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (212, 1085, N'aba5de8d-9997-4933-8670-9b7a48d7f254', 53, NULL, NULL, N'Landballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (213, 1085, N'aba5de8d-9997-4933-8670-9b7a48d7f254', 54, NULL, NULL, NULL, N'<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til<br />dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen,<br />i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen<br />og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som<br />får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende<br />lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (214, 1085, N'aba5de8d-9997-4933-8670-9b7a48d7f254', 55, 1090, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (215, 1092, N'9dead604-d0da-4501-83b7-9feb46df1ba6', 6, NULL, NULL, N'/media/1010/picture.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (216, 1092, N'9dead604-d0da-4501-83b7-9feb46df1ba6', 7, NULL, NULL, N'300', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (217, 1092, N'9dead604-d0da-4501-83b7-9feb46df1ba6', 8, NULL, NULL, N'610', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (218, 1092, N'9dead604-d0da-4501-83b7-9feb46df1ba6', 9, NULL, NULL, N'205691', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (219, 1092, N'9dead604-d0da-4501-83b7-9feb46df1ba6', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (220, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', 42, 1074, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (221, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', 43, NULL, NULL, N'Velkommen til Waterevents!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (222, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', 44, NULL, NULL, NULL, N'<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (223, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', 52, NULL, NULL, N'http://facebook.com/waterevents', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (224, 1093, N'78b6879c-68cc-48ef-9f6d-18942667422f', 35, NULL, NULL, N'priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (225, 1093, N'78b6879c-68cc-48ef-9f6d-18942667422f', 36, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (226, 1060, N'7bbab874-3b75-43db-b76e-25b63d8f71c8', 35, NULL, NULL, N'Spørgsmål og svar', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (227, 1060, N'7bbab874-3b75-43db-b76e-25b63d8f71c8', 36, NULL, NULL, NULL, N'<p><strong>1. Hvilken påklædning er påkrævet?</strong><br />Ganske almindeligt tøj, uden skarpe genstande, eller andre objekter der kan skade vores bolde.<br />Strømper er at foretrække.<br /><br /><br /><strong>2. Hvor kan vi holde arrangementet, og hvilke krav er der?</strong><br />Vi har en liste over vores faste lokationer, og krav til andre steder valgt af dig, i menuen ”lokationer”.<br /><br /><br /><strong>3. Er der nogle vægtgrænser?</strong><br />Boldene tåler en maxvægt på 100 kg.<br /><br /><br /><strong>4. Kan gravide deltage?</strong><br />Gravide kan sagtens deltage. Aktivitetsniveauet bestemmes helt selv af den enkelte deltager.<br /><br /><br /><strong>5. Er det sikkert?</strong><br />Sikkerhed er altid i top. Vores bolde er godkendte af teknologisk institut, udstyret med sikkerhedsliner,<br />og personalet er uddannet.<br /><br /><br /><br /><strong>6. Må man have indtaget alkohol?</strong><br />Vi forbeholder os ret til at afvise stærkt berusede personer iht. Vores betingelser</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (228, 1093, N'94015bad-4bbe-4ccd-b993-cf531ac13b79', 35, NULL, NULL, N'priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (229, 1093, N'94015bad-4bbe-4ccd-b993-cf531ac13b79', 36, NULL, NULL, NULL, N'<p>linke til siden "priser"</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (230, 1060, N'b65542b0-9f6f-4900-8201-2741d5244566', 35, NULL, NULL, N'Spørgsmål og svar', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (231, 1060, N'b65542b0-9f6f-4900-8201-2741d5244566', 36, NULL, NULL, NULL, N'<p><strong>1. Hvilken påklædning er påkrævet?</strong><br />Ganske almindeligt tøj, uden skarpe genstande, eller andre objekter der kan skade vores bolde.<br />Strømper er at foretrække.<br /><br /><br /><strong>2. Hvor kan vi holde arrangementet, og hvilke krav er der?</strong><br />Vi har en liste over vores faste lokationer, og krav til andre steder valgt af dig, i menuen ”lokationer”.<br /><br /><br /><strong>3. Er der nogle vægtgrænser?</strong><br />Boldene tåler en maxvægt på 100 kg.<br /><br /><br /><strong>4. Kan gravide deltage?</strong><br />Gravide kan sagtens deltage. Aktivitetsniveauet bestemmes helt selv af den enkelte deltager.<br /><br /><br /><strong>5. Er det sikkert?</strong><br />Sikkerhed er altid i top. Vores bolde er godkendte af teknologisk institut, udstyret med sikkerhedsliner,<br />og personalet er uddannet.<br /><br /><br /><br /><strong>6. Må man have indtaget alkohol?</strong><br />Vi forbeholder os ret til at afvise stærkt berusede personer iht. Vores <a href="/arrangementer/betingelser/" target="_parent">betingelser</a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (232, 1058, N'0023a7f9-4071-44fd-9f82-1dfd955d4f35', 35, NULL, NULL, N'Betingelser header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (233, 1058, N'0023a7f9-4071-44fd-9f82-1dfd955d4f35', 36, NULL, NULL, NULL, N'<p><strong>Vægten pr. deltager ved arrangementer på vand, må ikke overstige 100 kg.</strong><br /><br /><strong>Fremmøde skal ske 15 min. før aftalt tidspunkt.</strong><br /><br /><strong>Man skal sørge for at have sokker/strømper på eller med, da det er påbudt at have på inde i</strong><br /><strong>boldene.</strong><br /><br /><strong>Der må ikke være nogle skarpe genstande på tøjet ved arrangementet. Så som lynlås på</strong><br /><strong>baglommen i jeans.</strong><br /><br /><strong>Bestilling/bookning.</strong> Det bookede arrangement er bindende ved bestilling/booking. I henhold til<br />lov om visse forbrugeraftaler er f.eks Waterballs/Landballs ikke omfattet af en fortrydelsesret.<br /><br /><strong>Betaling.</strong> Der betales kontant på dagen for arrangementets afholdelse, hvis ikke andet er aftalt.<br /><br /><strong>Ændring.</strong> Ved ændring af tidspunkt eller dato, skal vi kontaktes på mail. Det kan forventes at koste<br />Dkk 100,- i adminstrationsomkostning pr. booking.<br /><br /><strong>Afbestilling.</strong> Ved afbestilling mindre end 7 dage før arrangementets afholdelse opkræves 500,- kr.<br />i afbestillingsgebyr.<br />Ved afbestilling mindre end 2 dage før arrangement datoen eller manglende fremmøde på<br />arrangement datoen fra kundens side, opkræves det fulde aftalte beløb.<br />Waterevents forbeholder sig ret til at aflyse arrangementet pga. dårligt vejr og andre udefra<br />uforudsete hændelser, uden nogen form for kompensation af enhver form.<br />Waterevents og dets instruktører bestemmer udelukket om der kan aflyses pga vejr forhold.<br />Aflyser kunden i et tilfælle hvor vi vurderer at arrangementet kunne være afholdt, anses dette som<br />en afbestilling iht. almindelige betingelser.<br /><br /><strong>Alkohol.</strong> Waterevents og dennes instruktører forholder sig retten til at afvise stærkt berusede personer,<br />ligesom instruktørerne kan nægte enkeltpersoner eller hele hold at deltage i aktiviteterne som følge<br />af dette. Aflyses et arrangement pga. dette, gælder de normale betingelser som ved afbestilling.<br /><br /><strong>Forsikring.</strong> Som led i arrangementets afvikling og inden for det tidsrum arrangementet forløber over,<br />hvor Waterevents er leverandør af aktiviteter, er deltagerne forsikret mod fysisk skade gennem<br />sædvanlig ansvarsforsikring, tegnet i Alm. Brand Forsikring.<br />Den tegnede ansvarsforsikring dækker kun fysiske skader, der hidrører fra mangelfuld instruktion eller<br />fejl/mangler ved det anvendte udstyr.<br />Waterevents ansvarsforsikring dækker ikke øvrige skader uanset om disse er hændelige eller som følge<br />af deltagernes uagtsomme eller forsætlige dispositioner, herunder, men ikke begrænset til, manglende<br />overholdelse af de ved arrangementets gennemførelse, meddelte instrukser og sikkerhedsprocedurer.<br />Det forudsættes i øvrigt, at køberen af arrangementet har den lovpligtig arbejdsskadeforsikring for de<br />deltagende medarbejdere, såfremt der er tale om et firmaarrangement.<br /><br /><strong>Erstatningskrav.</strong> Eventuelle erstatningskrav er underlagt dansk erstatningsret. Ved brug af<br />underleverandører sikrer Waterevents, at disse er behørigt forsikret.<br />Enhver øvrig forsikring af deltagerne, og ethvert erstatningskrav som ikke er omfattet af den af<br />Waterevents eller dennes underleverandører tegnede ansvarsforsikring, er Waterevents og dennes<br />underleverandører uvedkommende.<br />Køberen af arrangementet er opfordret til at undersøge, hvorvidt deltagerne er dækket ind under<br />arrangementkøberens egen ansvarsforsikring, eller om denne som led i arrangementets afholdelse skal<br />tegne yderligere forsikring.<br />I forbindelse med arrangementet forbeholder Waterevents sig retten til at foretage enhver nødvendig<br />ændring, der påbyder sig som følge af arrangementets karakter, samt vejr- og vindforhold, herunder<br />ændringer vedrørende transportform og aktiviteter begrundet i deltagernes sikkerhed.<br />Enhver ændring vil i videst muligt omfang blive gennemført således at arrangementets samlede<br />karakter og omfang opretholdes, idet sådanne eventuelle programændringer vil være uden betydning<br />for arrangementet og den aftalte pris.<br /><br /></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (234, 1058, N'8c682d82-683d-4066-87f5-d5d9ae07b4ce', 35, NULL, NULL, N'Betingelser header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (235, 1058, N'8c682d82-683d-4066-87f5-d5d9ae07b4ce', 36, NULL, NULL, NULL, N'<p><strong>Vægten pr. deltager ved arrangementer på vand, må ikke overstige 100 kg.</strong><br /><br /><strong>Fremmøde skal ske 15 min. før aftalt tidspunkt.</strong><br /><br /><strong>Man skal sørge for at have sokker/strømper på eller med, da det er påbudt at have på inde i</strong><br /><strong>boldene.</strong><br /><br /><strong>Der må ikke være nogle skarpe genstande på tøjet ved arrangementet. Så som lynlås på</strong><br /><strong>baglommen i jeans.</strong><br /><br /><strong>Bestilling/bookning.</strong> Det bookede arrangement er bindende ved bestilling/booking. I henhold til<br />lov om visse forbrugeraftaler er f.eks Waterballs/Landballs ikke omfattet af en fortrydelsesret.<br /><br /><strong>Betaling.</strong> Der betales kontant på dagen for arrangementets afholdelse, hvis ikke andet er aftalt.<br /><br /><strong>Ændring.</strong> Ved ændring af tidspunkt eller dato, skal vi kontaktes på mail. Det kan forventes at koste<br />Dkk 100,- i adminstrationsomkostning pr. booking.<br /><br /><strong>Afbestilling.</strong> Ved afbestilling mindre end 7 dage før arrangementets afholdelse opkræves 500,- kr.<br />i afbestillingsgebyr.<br />Ved afbestilling mindre end 2 dage før arrangement datoen eller manglende fremmøde på<br />arrangement datoen fra kundens side, opkræves det fulde aftalte beløb.<br />Waterevents forbeholder sig ret til at aflyse arrangementet pga. dårligt vejr og andre udefra<br />uforudsete hændelser, uden nogen form for kompensation af enhver form.<br />Waterevents og dets instruktører bestemmer udelukket om der kan aflyses pga vejr forhold.<br />Aflyser kunden i et tilfælle hvor vi vurderer at arrangementet kunne være afholdt, anses dette som<br />en afbestilling iht. almindelige betingelser.<br /><br /><strong>Alkohol.</strong> Waterevents og dennes instruktører forholder sig retten til at afvise stærkt berusede personer,<br />ligesom instruktørerne kan nægte enkeltpersoner eller hele hold at deltage i aktiviteterne som følge<br />af dette. Aflyses et arrangement pga. dette, gælder de normale betingelser som ved afbestilling.<br /><br /><strong>Forsikring.</strong> Som led i arrangementets afvikling og inden for det tidsrum arrangementet forløber over,<br />hvor Waterevents er leverandør af aktiviteter, er deltagerne forsikret mod fysisk skade gennem<br />sædvanlig ansvarsforsikring, tegnet i Alm. Brand Forsikring.<br />Den tegnede ansvarsforsikring dækker kun fysiske skader, der hidrører fra mangelfuld instruktion eller<br />fejl/mangler ved det anvendte udstyr.<br />Waterevents ansvarsforsikring dækker ikke øvrige skader uanset om disse er hændelige eller som følge<br />af deltagernes uagtsomme eller forsætlige dispositioner, herunder, men ikke begrænset til, manglende<br />overholdelse af de ved arrangementets gennemførelse, meddelte instrukser og sikkerhedsprocedurer.<br />Det forudsættes i øvrigt, at køberen af arrangementet har den lovpligtig arbejdsskadeforsikring for de<br />deltagende medarbejdere, såfremt der er tale om et firmaarrangement.<br /><br /><strong>Erstatningskrav.</strong> Eventuelle erstatningskrav er underlagt dansk erstatningsret. Ved brug af<br />underleverandører sikrer Waterevents, at disse er behørigt forsikret.<br />Enhver øvrig forsikring af deltagerne, og ethvert erstatningskrav som ikke er omfattet af den af<br />Waterevents eller dennes underleverandører tegnede ansvarsforsikring, er Waterevents og dennes<br />underleverandører uvedkommende.<br />Køberen af arrangementet er opfordret til at undersøge, hvorvidt deltagerne er dækket ind under<br />egen ansvarsforsikring, eller om denne som led i arrangementets afholdelse skal tegne yderligere<br />forsikring.<br />I forbindelse med arrangementet forbeholder Waterevents sig retten til at foretage enhver nødvendig<br />ændring, der påbyder sig som følge af arrangementets karakter, samt vejr- og vindforhold, herunder<br />ændringer vedrørende transportform og aktiviteter begrundet i deltagernes sikkerhed.<br />Enhver ændring vil i videst muligt omfang blive gennemført således at arrangementets samlede<br />karakter og omfang opretholdes, idet sådanne eventuelle programændringer vil være uden betydning<br />for arrangementet og den aftalte pris.<br /><br /></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (236, 1058, N'1b2298b3-37b5-4020-9389-6387810172e0', 35, NULL, NULL, N'Betingelser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (237, 1058, N'1b2298b3-37b5-4020-9389-6387810172e0', 36, NULL, NULL, NULL, N'<p><strong>Vægten pr. deltager ved arrangementer på vand, må ikke overstige 100 kg.</strong><br /><br /><strong>Fremmøde skal ske 15 min. før aftalt tidspunkt.</strong><br /><br /><strong>Man skal sørge for at have sokker/strømper på eller med, da det er påbudt at have på inde i</strong><br /><strong>boldene.</strong><br /><br /><strong>Der må ikke være nogle skarpe genstande på tøjet ved arrangementet. Så som lynlås på</strong><br /><strong>baglommen i jeans.</strong><br /><br /><strong>Bestilling/bookning.</strong> Det bookede arrangement er bindende ved bestilling/booking. I henhold til<br />lov om visse forbrugeraftaler er f.eks Waterballs/Landballs ikke omfattet af en fortrydelsesret.<br /><br /><strong>Betaling.</strong> Der betales kontant på dagen for arrangementets afholdelse, hvis ikke andet er aftalt.<br /><br /><strong>Ændring.</strong> Ved ændring af tidspunkt eller dato, skal vi kontaktes på mail. Det kan forventes at koste<br />Dkk 100,- i adminstrationsomkostning pr. booking.<br /><br /><strong>Afbestilling.</strong> Ved afbestilling mindre end 7 dage før arrangementets afholdelse opkræves 500,- kr.<br />i afbestillingsgebyr.<br />Ved afbestilling mindre end 2 dage før arrangement datoen eller manglende fremmøde på<br />arrangement datoen fra kundens side, opkræves det fulde aftalte beløb.<br />Waterevents forbeholder sig ret til at aflyse arrangementet pga. dårligt vejr og andre udefra<br />uforudsete hændelser, uden nogen form for kompensation af enhver form.<br />Waterevents og dets instruktører bestemmer udelukket om der kan aflyses pga vejr forhold.<br />Aflyser kunden i et tilfælle hvor vi vurderer at arrangementet kunne være afholdt, anses dette som<br />en afbestilling iht. almindelige betingelser.<br /><br /><strong>Alkohol.</strong> Waterevents og dennes instruktører forholder sig retten til at afvise stærkt berusede personer,<br />ligesom instruktørerne kan nægte enkeltpersoner eller hele hold at deltage i aktiviteterne som følge<br />af dette. Aflyses et arrangement pga. dette, gælder de normale betingelser som ved afbestilling.<br /><br /><strong>Forsikring.</strong> Som led i arrangementets afvikling og inden for det tidsrum arrangementet forløber over,<br />hvor Waterevents er leverandør af aktiviteter, er deltagerne forsikret mod fysisk skade gennem<br />sædvanlig ansvarsforsikring, tegnet i Alm. Brand Forsikring.<br />Den tegnede ansvarsforsikring dækker kun fysiske skader, der hidrører fra mangelfuld instruktion eller<br />fejl/mangler ved det anvendte udstyr.<br />Waterevents ansvarsforsikring dækker ikke øvrige skader uanset om disse er hændelige eller som følge<br />af deltagernes uagtsomme eller forsætlige dispositioner, herunder, men ikke begrænset til, manglende<br />overholdelse af de ved arrangementets gennemførelse, meddelte instrukser og sikkerhedsprocedurer.<br />Det forudsættes i øvrigt, at køberen af arrangementet har den lovpligtig arbejdsskadeforsikring for de<br />deltagende medarbejdere, såfremt der er tale om et firmaarrangement.<br /><br /><strong>Erstatningskrav.</strong> Eventuelle erstatningskrav er underlagt dansk erstatningsret. Ved brug af<br />underleverandører sikrer Waterevents, at disse er behørigt forsikret.<br />Enhver øvrig forsikring af deltagerne, og ethvert erstatningskrav som ikke er omfattet af den af<br />Waterevents eller dennes underleverandører tegnede ansvarsforsikring, er Waterevents og dennes<br />underleverandører uvedkommende.<br />Køberen af arrangementet er opfordret til at undersøge, hvorvidt deltagerne er dækket ind under<br />egen ansvarsforsikring, eller om denne som led i arrangementets afholdelse skal tegne yderligere<br />forsikring.<br />I forbindelse med arrangementet forbeholder Waterevents sig retten til at foretage enhver nødvendig<br />ændring, der påbyder sig som følge af arrangementets karakter, samt vejr- og vindforhold, herunder<br />ændringer vedrørende transportform og aktiviteter begrundet i deltagernes sikkerhed.<br />Enhver ændring vil i videst muligt omfang blive gennemført således at arrangementets samlede<br />karakter og omfang opretholdes, idet sådanne eventuelle programændringer vil være uden betydning<br />for arrangementet og den aftalte pris.<br /><br /></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (238, 1064, N'c4a319f3-e4eb-4ca0-9cb8-6d90624c060c', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (239, 1064, N'c4a319f3-e4eb-4ca0-9cb8-6d90624c060c', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (240, 1064, N'c4a319f3-e4eb-4ca0-9cb8-6d90624c060c', 41, NULL, NULL, NULL, N'<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (241, 1064, N'c5564bb6-0c82-489d-9aaa-6d8b0d579ad2', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (242, 1064, N'c5564bb6-0c82-489d-9aaa-6d8b0d579ad2', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (243, 1064, N'c5564bb6-0c82-489d-9aaa-6d8b0d579ad2', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (244, 1094, N'0a36b988-b694-4188-92a9-a2c50ba3c1b4', 6, NULL, NULL, N'/media/1011/flydebro.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (245, 1094, N'0a36b988-b694-4188-92a9-a2c50ba3c1b4', 7, NULL, NULL, N'450', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (246, 1094, N'0a36b988-b694-4188-92a9-a2c50ba3c1b4', 8, NULL, NULL, N'250', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (247, 1094, N'0a36b988-b694-4188-92a9-a2c50ba3c1b4', 9, NULL, NULL, N'123835', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (248, 1094, N'0a36b988-b694-4188-92a9-a2c50ba3c1b4', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (249, 1095, N'02148c35-9a23-48fe-8351-99a2b313351b', 6, NULL, NULL, N'/media/1012/om-os.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (250, 1095, N'02148c35-9a23-48fe-8351-99a2b313351b', 7, NULL, NULL, N'720', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (251, 1095, N'02148c35-9a23-48fe-8351-99a2b313351b', 8, NULL, NULL, N'440', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (252, 1095, N'02148c35-9a23-48fe-8351-99a2b313351b', 9, NULL, NULL, N'276845', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (253, 1095, N'02148c35-9a23-48fe-8351-99a2b313351b', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (254, 1064, N'78e9f171-61a1-4db5-aa50-8df12a7519de', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (255, 1064, N'78e9f171-61a1-4db5-aa50-8df12a7519de', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (256, 1064, N'78e9f171-61a1-4db5-aa50-8df12a7519de', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><span><img style="width: 450px; height:250px;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (257, 1064, N'ce88003a-6090-4f21-b9ca-3c2e6d57b066', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (258, 1064, N'ce88003a-6090-4f21-b9ca-3c2e6d57b066', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (259, 1064, N'ce88003a-6090-4f21-b9ca-3c2e6d57b066', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (260, 1064, N'98688c04-bc77-4831-b49c-56f9ec196cd3', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (261, 1064, N'98688c04-bc77-4831-b49c-56f9ec196cd3', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (262, 1064, N'98688c04-bc77-4831-b49c-56f9ec196cd3', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                              Eksempel på flydebro:</em></p>
<p><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (263, 1064, N'd661447e-baf9-4ae6-a81e-7ef49118515a', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (264, 1064, N'd661447e-baf9-4ae6-a81e-7ef49118515a', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (265, 1064, N'd661447e-baf9-4ae6-a81e-7ef49118515a', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                     Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (266, 1064, N'37738063-34dc-402a-b0b1-02ea91a9a72c', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (267, 1064, N'37738063-34dc-402a-b0b1-02ea91a9a72c', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (268, 1064, N'37738063-34dc-402a-b0b1-02ea91a9a72c', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (269, 1064, N'9273922b-58c9-4a19-a287-8d2e165d4479', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (270, 1064, N'9273922b-58c9-4a19-a287-8d2e165d4479', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (271, 1064, N'9273922b-58c9-4a19-a287-8d2e165d4479', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning ag boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (272, 1064, N'0a5bab78-b697-4f27-86e4-84bacf21851c', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (273, 1064, N'0a5bab78-b697-4f27-86e4-84bacf21851c', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (274, 1064, N'0a5bab78-b697-4f27-86e4-84bacf21851c', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (275, 1068, N'917c9c70-9959-45a3-a642-7e6cfdb3d8fe', 37, NULL, NULL, NULL, N'Søernes Sejlklub (ved Søpavillonen) 
Gyldenløvesgade 24, 1369 København')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (276, 1068, N'917c9c70-9959-45a3-a642-7e6cfdb3d8fe', 38, NULL, NULL, N'https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (277, 1068, N'c126f2a5-4710-40d0-b71a-65e0860f30f5', 37, NULL, NULL, NULL, N'Søernes Sejlklub (ved Søpavillonen)
Gyldenløvesgade 24, 1369 København')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (278, 1068, N'c126f2a5-4710-40d0-b71a-65e0860f30f5', 38, NULL, NULL, N'https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (279, 1068, N'43b8dc27-073c-49b3-a7d4-4e80df828015', 37, NULL, NULL, NULL, N'Søernes Sejlklub (ved Søpavillonen)


Gyldenløvesgade 24, 1369 København')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (280, 1068, N'43b8dc27-073c-49b3-a7d4-4e80df828015', 38, NULL, NULL, N'https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (281, 1068, N'abb15004-dd44-4daa-8256-10b278af0f81', 37, NULL, NULL, NULL, N'Søernes Sejlklub (ved Søpavillonen)Gyldenløvesgade 24, 1369 København')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (282, 1068, N'abb15004-dd44-4daa-8256-10b278af0f81', 38, NULL, NULL, N'https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (283, 1068, N'e8e6db35-2341-440d-950f-9ef0913a6148', 37, NULL, NULL, NULL, N'Søernes Sejlklub (ved Søpavillonen)
Gyldenløvesgade 24, 1369 København')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (284, 1068, N'e8e6db35-2341-440d-950f-9ef0913a6148', 38, NULL, NULL, N'https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (285, 1069, N'b14cbece-dec8-45ba-b396-cec3f7bb8785', 37, NULL, NULL, NULL, N'Østersøgade 8, 5000 Odense C
(ved fodboldfabrikken)')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (286, 1069, N'b14cbece-dec8-45ba-b396-cec3f7bb8785', 38, NULL, NULL, N'https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (287, 1070, N'acb27f83-46a4-442a-acc4-48b0dc036eee', 37, NULL, NULL, NULL, N'Middelfart Roklub, Kongebrovej 66, 
5500 Middelfart')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (288, 1070, N'acb27f83-46a4-442a-acc4-48b0dc036eee', 38, NULL, NULL, N'Middelfart Roklub, Kongebrovej 66, 5500 Middelfart', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (289, 1096, N'3e558c5e-1821-4b3f-b573-9e510aa2e290', 37, NULL, NULL, NULL, N'Vejle Kajakklub, Ibæk Strandvej 21A,
7100 Vejle')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (290, 1096, N'3e558c5e-1821-4b3f-b573-9e510aa2e290', 38, NULL, NULL, N'https://www.google.dk/maps/place/Vejle+Kajakklub/@55.708211,9.555582,17z/data=!3m1!4b1!4m2!3m1!1s0x464c83afce4462f7:0x5cb5f3500ff9f521', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (291, 1097, N'4b5f7da8-9c9e-46f5-b955-074cc90d942e', 37, NULL, NULL, NULL, N'Kolding KajakKlub, Trindholmsgade 20,
6000 Kolding')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (292, 1097, N'4b5f7da8-9c9e-46f5-b955-074cc90d942e', 38, NULL, NULL, N'https://www.google.dk/maps?hl=da&cp=31&gs_id=2&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&wrapid=tljp132959906032802&q=Trindholmsgade+20,+6000+Kolding&um=1&ie=UTF-8&hq&hnear=0x464c9f65b13353e7:0xe3c020efa6b789e9,Trindholmsgade+20,+6000+Kolding&gl=dk&ei=URJAT-LBEsrEtAbktf3jBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (293, 1098, N'057bb192-0446-445e-b250-ce0a52c182a3', 37, NULL, NULL, NULL, N'Universitetsparken, Wilhelm Meyers Allé 210,
8000 Århus C')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (294, 1098, N'057bb192-0446-445e-b250-ce0a52c182a3', 38, NULL, NULL, N'Universitetsparken, Wilhelm Meyers Allé 210, 8000 Århus C', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (295, 1099, N'8cf89da8-f840-4cbd-b3bb-c47c3f6b6dba', 37, NULL, NULL, NULL, N'Oddervej, 8660 Skanderborg
(100 meter nord for Oddervej 24)')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (296, 1099, N'8cf89da8-f840-4cbd-b3bb-c47c3f6b6dba', 38, NULL, NULL, N'https://www.google.dk/maps/place/Oddervej+24,+8660+Skanderborg/@56.040295,9.941939,609m/data=!3m1!1e3!4m2!3m1!1s0x464c6eefce025ebb:0x2045dd9791df3e33', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (297, 1100, N'9f32767b-11e5-4fe9-b1d2-dcb64b88b7f2', 37, NULL, NULL, NULL, N'Lovbyvej 35, 8700 Horsens')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (298, 1100, N'9f32767b-11e5-4fe9-b1d2-dcb64b88b7f2', 38, NULL, NULL, N'https://www.google.dk/maps/place/Lovbyvej+35,+8700+Horsens/@55.871262,9.8187339,17z/data=!3m1!4b1!4m2!3m1!1s0x464c633b983339c1:0x25a74d58e9057c63?hl=da', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (299, 1101, N'7917db90-4af2-478e-aad2-2409b5051da8', 37, NULL, NULL, NULL, N'Østre Søbad, Horsensvej 2, 8600 Silkeborg')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (300, 1101, N'7917db90-4af2-478e-aad2-2409b5051da8', 38, NULL, NULL, N'Østre Søbad, Horsensvej 2, 8600 Silkeborg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (301, 1098, N'a6aa6f03-0d5c-4de0-a42f-bc33b7575a50', 37, NULL, NULL, NULL, N'Universitetsparken, Wilhelm Meyers Allé 210,
8000 Århus C')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (302, 1098, N'a6aa6f03-0d5c-4de0-a42f-bc33b7575a50', 38, NULL, NULL, N'https://www.google.dk/maps/place/Wilhelm+Meyers+Alle,+8000+Aarhus+C/@56.1670588,10.2048241,17z/data=!3m1!4b1!4m2!3m1!1s0x464c3fbf3f75d091:0xac89005f4ed164c8?hl=da', NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (303, 1069, N'0bc12756-0b6b-40b5-8f4b-c60c9770ef11', 37, NULL, NULL, NULL, N'Østersøgade 8, 5000 Odense C
(ved fodboldfabrikken)')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (304, 1069, N'0bc12756-0b6b-40b5-8f4b-c60c9770ef11', 38, NULL, NULL, N'https://www.google.dk/maps/place/%C3%98sters%C3%B8gade+8,+5000+Odense+C/@55.407511,10.37848,17z/data=!3m1!4b1!4m2!3m1!1s0x464ce007e1a276eb:0x82472e9b9562d7e?hl=da', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (305, 1064, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (306, 1064, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (307, 1064, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (308, 1072, N'7e80f192-ce47-4348-b560-207f6f8fa6c0', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (309, 1072, N'7e80f192-ce47-4348-b560-207f6f8fa6c0', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br />Op til 9 personer   kr. 2000,-<br /><br />Op til 20 personer kr. 2300,-<br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (310, 1072, N'7588f3c9-0163-4035-965d-18bb2c623e69', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (311, 1072, N'7588f3c9-0163-4035-965d-18bb2c623e69', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br />Op til 9 personer   kr. 2000,-<br /><br />Op til 20 personer kr. 2300,-<br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres t-shirts og lign. hvis I vil<br />skabe opmærksomhed omkring jeres eget brand.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (312, 1102, N'dac6022e-879b-4a87-9262-c366ed9d26ca', 6, NULL, NULL, N'/media/1013/picture2.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (313, 1102, N'dac6022e-879b-4a87-9262-c366ed9d26ca', 7, NULL, NULL, N'721', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (314, 1102, N'dac6022e-879b-4a87-9262-c366ed9d26ca', 8, NULL, NULL, N'230', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (315, 1102, N'dac6022e-879b-4a87-9262-c366ed9d26ca', 9, NULL, NULL, N'193330', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (316, 1102, N'dac6022e-879b-4a87-9262-c366ed9d26ca', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (317, 1072, N'91c8a74c-674e-42b5-a783-c10b423605c8', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (318, 1072, N'91c8a74c-674e-42b5-a783-c10b423605c8', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br />Op til 9 personer   kr. 2000,-<br /><br />Op til 20 personer kr. 2300,-<br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.</span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 500px; height: 159.501px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=500&amp;height=159.50069348127602" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (319, 1072, N'248aaab9-5ba0-49ed-b93c-898b3448eafa', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (320, 1072, N'248aaab9-5ba0-49ed-b93c-898b3448eafa', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.</span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 500px; height: 159.501px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=500&amp;height=159.50069348127602" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (321, 1072, N'1c693c8e-bb54-4076-9838-2601d42093f2', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (322, 1072, N'1c693c8e-bb54-4076-9838-2601d42093f2', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.</span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (323, 1072, N'81849fa3-4028-4800-9c88-fc39e490ac16', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (324, 1072, N'81849fa3-4028-4800-9c88-fc39e490ac16', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (325, 1059, N'd7e69214-52a4-4479-80ee-f186d03ffb12', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (326, 1059, N'd7e69214-52a4-4479-80ee-f186d03ffb12', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /></p>
<p>                                                                                                                              <em>                         Michael og Henrik</em></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (327, 1059, N'2362a9bf-4497-4085-b4d7-c15137647bcb', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (328, 1059, N'2362a9bf-4497-4085-b4d7-c15137647bcb', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /></p>
<p>                                                                                                                                                 <em>                         Michael og Henrik</em></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (329, 1059, N'733f1ac2-dcab-49e5-8105-3898483d97eb', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (330, 1059, N'733f1ac2-dcab-49e5-8105-3898483d97eb', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" />                                                                                                                                                 <em>                              Michael og Henrik</em></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (331, 1059, N'5a02dd7b-07b4-4cc8-85a0-f5dfe644fdf6', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (332, 1059, N'5a02dd7b-07b4-4cc8-85a0-f5dfe644fdf6', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" />                                                                                                                                                 <em>                                       Michael og Henrik</em></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (333, 1059, N'58ddafec-62c3-4c45-a58b-992589f94972', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (334, 1059, N'58ddafec-62c3-4c45-a58b-992589f94972', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" />                                                                                                                                                 <em>                                         Michael og Henrik</em></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (335, 1054, N'b319d30b-9869-41c6-83a3-e3905d89f19d', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (336, 1054, N'b319d30b-9869-41c6-83a3-e3905d89f19d', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (337, 1093, N'94015bad-4bbe-4ccd-b993-cf531ac13b79', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (338, 1093, N'94015bad-4bbe-4ccd-b993-cf531ac13b79', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (339, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (340, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (341, 1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (342, 1072, N'81849fa3-4028-4800-9c88-fc39e490ac16', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (343, 1072, N'81849fa3-4028-4800-9c88-fc39e490ac16', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (344, 1093, N'83f28058-22d4-4c05-b195-7578d90b268e', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (345, 1093, N'83f28058-22d4-4c05-b195-7578d90b268e', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (346, 1093, N'83f28058-22d4-4c05-b195-7578d90b268e', 35, NULL, NULL, N'priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (347, 1093, N'83f28058-22d4-4c05-b195-7578d90b268e', 36, NULL, NULL, NULL, N'<p>linke til siden "priser"</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (348, 1093, N'c6e0e638-3932-469e-82a7-172d9e6ee201', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (349, 1093, N'c6e0e638-3932-469e-82a7-172d9e6ee201', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (350, 1093, N'c6e0e638-3932-469e-82a7-172d9e6ee201', 35, NULL, NULL, N'priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (351, 1093, N'c6e0e638-3932-469e-82a7-172d9e6ee201', 36, NULL, NULL, NULL, N'<p>linke til siden "priser"</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (352, 1104, N'a00f6af4-08b1-4db3-8b49-8a309514cf0d', 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (353, 1104, N'bc57dcde-192f-428a-98eb-1604506d3c68', 60, 1072, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (354, 1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (355, 1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (356, 1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', 42, 1074, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (357, 1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', 43, NULL, NULL, N'Velkommen til Waterevents!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (358, 1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', 44, NULL, NULL, NULL, N'<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/{localLink:1054}" title="Arrangementer">her.</a><a href="/"><br /></a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (359, 1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', 52, NULL, NULL, N'http://facebook.com/waterevents', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (360, 1082, N'bb557538-0807-4bad-ad47-e308fb2a30a2', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (361, 1082, N'bb557538-0807-4bad-ad47-e308fb2a30a2', 54, NULL, NULL, NULL, N'<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme<br />ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (362, 1082, N'bb557538-0807-4bad-ad47-e308fb2a30a2', 55, 1091, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (363, 1072, N'5a4efbbe-12cc-410f-8fa2-d8883b3dd975', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (364, 1072, N'5a4efbbe-12cc-410f-8fa2-d8883b3dd975', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (365, 1072, N'5a4efbbe-12cc-410f-8fa2-d8883b3dd975', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (366, 1072, N'5a4efbbe-12cc-410f-8fa2-d8883b3dd975', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/{localLink:1064}" target="_parent" title="Lokationer">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (367, 1072, N'f59391d7-e0d4-4785-8858-0b0e6c8e8f6f', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (368, 1072, N'f59391d7-e0d4-4785-8858-0b0e6c8e8f6f', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (369, 1072, N'f59391d7-e0d4-4785-8858-0b0e6c8e8f6f', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (370, 1072, N'f59391d7-e0d4-4785-8858-0b0e6c8e8f6f', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/{localLink:1064}" target="_parent" title="Lokationer">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se <a href="/{localLink:1064}" title="Lokationer">her</a>)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (371, 1072, N'288d8307-f902-478f-b3dc-877df4ea506b', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (372, 1072, N'288d8307-f902-478f-b3dc-877df4ea506b', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (373, 1072, N'288d8307-f902-478f-b3dc-877df4ea506b', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (374, 1072, N'288d8307-f902-478f-b3dc-877df4ea506b', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (375, 1072, N'eab3b47c-034b-4ed1-a4a2-3c1c95f4a9a6', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (376, 1072, N'eab3b47c-034b-4ed1-a4a2-3c1c95f4a9a6', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (377, 1072, N'eab3b47c-034b-4ed1-a4a2-3c1c95f4a9a6', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (378, 1072, N'eab3b47c-034b-4ed1-a4a2-3c1c95f4a9a6', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores <a href="/{localLink:1058}" title="Betingelser">betingelser</a></span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (379, 1059, N'58ddafec-62c3-4c45-a58b-992589f94972', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (380, 1059, N'58ddafec-62c3-4c45-a58b-992589f94972', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (381, 1059, N'e48e460c-6ffe-4a28-b953-4a0727febe82', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (382, 1059, N'e48e460c-6ffe-4a28-b953-4a0727febe82', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (383, 1059, N'e48e460c-6ffe-4a28-b953-4a0727febe82', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (384, 1059, N'e48e460c-6ffe-4a28-b953-4a0727febe82', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p style="text-align: center;"><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /><em>Michael og Henrik</em></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (385, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (386, 1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (387, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (388, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (389, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 45, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (390, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 46, NULL, NULL, NULL, N'<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="http://waterevents.dk/faq" title="Faq">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden. (Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt)</p>
<p> </p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (391, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (392, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 48, NULL, NULL, N'leif@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (393, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (394, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (395, 1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (396, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (397, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (398, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 45, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (399, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 46, NULL, NULL, NULL, N'<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden. (Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt)</p>
<p> </p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (400, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (401, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 48, NULL, NULL, N'leif@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (402, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (403, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
GO
print 'Processed 400 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (404, 1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (405, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (406, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (407, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 45, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (408, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 46, NULL, NULL, NULL, N'<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden.</p>
<p>Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt. - <strong>OBS. Svartid på e-mail henvendelser kan være længere end kontakt formularen</strong></p>
<p> </p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (409, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (410, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 48, NULL, NULL, N'leif@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (411, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (412, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (413, 1080, N'3a0ec796-767d-4254-b47a-82c747930e29', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (414, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (415, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (416, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 45, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (417, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 46, NULL, NULL, NULL, N'<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden.</p>
<p>Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt. - <strong>OBS. Svartid på e-mail henvendelser kan være længere end kontakt formularen</strong></p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (418, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (419, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 48, NULL, NULL, N'leif@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (420, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (421, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (422, 1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (423, 1050, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', 58, NULL, NULL, N'Waterevents - Forside', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (424, 1050, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', 59, NULL, NULL, NULL, N'Gå tørfodet på vandet i de originale walking waterballs! 
Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (425, 1050, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', 42, 1074, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (426, 1050, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', 43, NULL, NULL, N'Velkommen til Waterevents!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (427, 1050, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', 44, NULL, NULL, NULL, N'<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/{localLink:1054}" title="Arrangementer">her.</a><a href="/"><br /></a></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (428, 1050, N'7b725cfc-8c58-4f31-8ae6-fc277bb472fb', 52, NULL, NULL, N'http://facebook.com/waterevents', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (429, 1054, N'7733c2b7-2187-4f40-a2bf-cc8073f506a1', 58, NULL, NULL, N'Waterevents - Arrangementer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (430, 1054, N'7733c2b7-2187-4f40-a2bf-cc8073f506a1', 59, NULL, NULL, NULL, N'Walking waterballs er vores mest populære arrangement. Vi tilbyder også Landballs til dem der gerne vil prøve oplevelsen, men ikke vil på vand')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (431, 1054, N'7733c2b7-2187-4f40-a2bf-cc8073f506a1', 56, NULL, NULL, N'Arrangementer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (432, 1054, N'7733c2b7-2187-4f40-a2bf-cc8073f506a1', 57, NULL, NULL, NULL, N'<p><span> </span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (433, 1064, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (434, 1064, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (435, 1064, N'1927fb23-ceab-435f-85f6-16c1e19613b1', 58, NULL, NULL, N'Waterevents - Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (436, 1064, N'1927fb23-ceab-435f-85f6-16c1e19613b1', 59, NULL, NULL, NULL, N'Vi afholder arrangementer i det meste af landet. - Læs mere')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (437, 1064, N'1927fb23-ceab-435f-85f6-16c1e19613b1', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (438, 1064, N'1927fb23-ceab-435f-85f6-16c1e19613b1', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (439, 1064, N'1927fb23-ceab-435f-85f6-16c1e19613b1', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (440, 1072, N'744ac84b-f8cd-4284-8175-40c507f4b359', 58, NULL, NULL, N'Waterevents - Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (441, 1072, N'744ac84b-f8cd-4284-8175-40c507f4b359', 59, NULL, NULL, NULL, N'Priserne er gældende for både Waterballs og Landballs')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (442, 1072, N'744ac84b-f8cd-4284-8175-40c507f4b359', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (443, 1072, N'744ac84b-f8cd-4284-8175-40c507f4b359', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores <a href="/{localLink:1058}" title="Betingelser">betingelser</a></span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (444, 1059, N'a6dca21e-7381-4643-816e-f84772d5aee2', 58, NULL, NULL, N'Waterevents - Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (445, 1059, N'a6dca21e-7381-4643-816e-f84772d5aee2', 59, NULL, NULL, NULL, N'Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og
vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi
mener der skal til for at gøre jeres arrangement perfekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (446, 1059, N'a6dca21e-7381-4643-816e-f84772d5aee2', 35, NULL, NULL, N'Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (447, 1059, N'a6dca21e-7381-4643-816e-f84772d5aee2', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p style="text-align: center;"><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /><em>Michael og Henrik</em></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (448, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 58, NULL, NULL, N'Waterevents - Kontakt', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (449, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 59, NULL, NULL, NULL, N'Kontakt os i dag hvis du vil booke eller har spørgsmål')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (450, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 45, NULL, NULL, N'Kontakt', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (451, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 46, NULL, NULL, NULL, N'<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden.</p>
<p>Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt. - <strong>OBS. Svartid på e-mail henvendelser kan være længere end kontakt formularen</strong></p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (452, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 47, NULL, NULL, N'kontakt@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (453, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 48, NULL, NULL, N'leif@waterevents.dk', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (454, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 49, NULL, NULL, NULL, N'Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (455, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 50, NULL, NULL, NULL, N'<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (456, 1080, N'180749df-ed95-4cc0-9fa8-ac9e03d1984d', 51, NULL, NULL, N'Waterevents.dk kontaktformular bekræftelse test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (457, 1082, N'61bcf9b7-935f-4869-a7d2-fbee68cf4a43', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (458, 1082, N'61bcf9b7-935f-4869-a7d2-fbee68cf4a43', 54, NULL, NULL, NULL, N'<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (459, 1082, N'61bcf9b7-935f-4869-a7d2-fbee68cf4a43', 55, 1091, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (460, 1082, N'd82dd954-062c-437f-9a50-b177c987cecf', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (461, 1082, N'd82dd954-062c-437f-9a50-b177c987cecf', 54, NULL, NULL, NULL, N'<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (462, 1082, N'd82dd954-062c-437f-9a50-b177c987cecf', 55, 1091, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (463, 1082, N'1bdfd36c-faf9-424b-9427-0039bc03c249', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (464, 1082, N'1bdfd36c-faf9-424b-9427-0039bc03c249', 54, NULL, NULL, NULL, N'<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat” Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (465, 1082, N'1bdfd36c-faf9-424b-9427-0039bc03c249', 55, 1091, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (466, 1082, N'1e87f631-88d7-4284-97c2-36f22d61e9a4', 53, NULL, NULL, N'Waterballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (467, 1082, N'1e87f631-88d7-4284-97c2-36f22d61e9a4', 54, NULL, NULL, NULL, N'<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat” Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (468, 1082, N'1e87f631-88d7-4284-97c2-36f22d61e9a4', 55, 1091, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (469, 1085, N'62fad2cc-0351-46c0-85b4-3254359cf988', 53, NULL, NULL, N'Landballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (470, 1085, N'62fad2cc-0351-46c0-85b4-3254359cf988', 54, NULL, NULL, NULL, N'<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen, i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende<br />lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (471, 1085, N'62fad2cc-0351-46c0-85b4-3254359cf988', 55, 1090, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (472, 1085, N'c11a55bb-3576-4da8-9409-c3fa5bac65a9', 53, NULL, NULL, N'Landballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (473, 1085, N'c11a55bb-3576-4da8-9409-c3fa5bac65a9', 54, NULL, NULL, NULL, N'<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen, i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (474, 1085, N'c11a55bb-3576-4da8-9409-c3fa5bac65a9', 55, 1090, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (475, 1085, N'f7c7da80-6e0f-4b12-9fda-b3fd8acbcdda', 53, NULL, NULL, N'Landballs', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (476, 1085, N'f7c7da80-6e0f-4b12-9fda-b3fd8acbcdda', 54, NULL, NULL, NULL, N'<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen, i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave eller et grønt område at holde arrangementet på.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (477, 1085, N'f7c7da80-6e0f-4b12-9fda-b3fd8acbcdda', 55, 1090, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (478, 1064, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', 58, NULL, NULL, N'Waterevents - Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (479, 1064, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', 59, NULL, NULL, NULL, N'Vi afholder arrangementer i det meste af landet. - Læs mere')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (480, 1064, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (481, 1064, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (482, 1064, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (483, 1064, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', 58, NULL, NULL, N'Waterevents - Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (484, 1064, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', 59, NULL, NULL, NULL, N'Vi afholder arrangementer i det meste af landet. - Læs mere')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (485, 1064, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (486, 1064, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (487, 1064, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (488, 1064, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', 58, NULL, NULL, N'Waterevents - Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (489, 1064, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', 59, NULL, NULL, NULL, N'Vi afholder arrangementer i det meste af landet. - Læs mere')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (490, 1064, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (491, 1064, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (492, 1064, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (493, 1064, N'0478d253-e2a2-4751-a0b0-60c3d45ae1cb', 58, NULL, NULL, N'Waterevents - Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (494, 1064, N'0478d253-e2a2-4751-a0b0-60c3d45ae1cb', 59, NULL, NULL, NULL, N'Vi afholder arrangementer i det meste af landet. - Læs mere')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (495, 1064, N'0478d253-e2a2-4751-a0b0-60c3d45ae1cb', 39, NULL, NULL, N'Lokationer', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (496, 1064, N'0478d253-e2a2-4751-a0b0-60c3d45ae1cb', 40, NULL, NULL, NULL, N'<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer udover København og Odense.</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (497, 1064, N'0478d253-e2a2-4751-a0b0-60c3d45ae1cb', 41, NULL, NULL, NULL, N'<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land til vand problemfri.<br /></span></p>
<p> </p>
<p style="text-align: center;"><em> Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (498, 1072, N'47015313-1ff1-49f5-b409-e5a89e92f6ee', 58, NULL, NULL, N'Waterevents - Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (499, 1072, N'47015313-1ff1-49f5-b409-e5a89e92f6ee', 59, NULL, NULL, NULL, N'Priserne er gældende for både Waterballs og Landballs')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (500, 1072, N'47015313-1ff1-49f5-b409-e5a89e92f6ee', 35, NULL, NULL, N'Priser', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (501, 1072, N'47015313-1ff1-49f5-b409-e5a89e92f6ee', 36, NULL, NULL, NULL, N'<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores <a href="/{localLink:1058}" title="Betingelser">betingelser</a></span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (502, 1059, N'54a2ea7f-c01d-4d2d-b4a5-89f8237dfcaf', 58, NULL, NULL, N'Waterevents - Om os', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (503, 1059, N'54a2ea7f-c01d-4d2d-b4a5-89f8237dfcaf', 59, NULL, NULL, NULL, N'Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og
vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi
mener der skal til for at gøre jeres arrangement perfekt.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (504, 1059, N'54a2ea7f-c01d-4d2d-b4a5-89f8237dfcaf', 35, NULL, NULL, N'Om os', NULL)
GO
print 'Processed 500 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (505, 1059, N'54a2ea7f-c01d-4d2d-b4a5-89f8237dfcaf', 36, NULL, NULL, NULL, N'<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p style="text-align: center;"><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /><em>Michael og Henrik</em></p>')
SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
/****** Object:  Table [dbo].[cmsPreviewXml]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPreviewXml](
	[nodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentPreviewXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'd61d774c-3a3c-458b-a651-38f3c7c42f22', CAST(0x0000A42B013E21A6 AS DateTime), N'<FrontPage id="1050" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-24T11:59:25" updateDate="2015-01-25T19:18:16" nodeName="Forside" urlName="forside" path="-1,1050" isDoc="" nodeType="1047" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1049" nodeTypeAlias="FrontPage">
  <slideshowFolder>1074</slideshowFolder>
  <header><![CDATA[Velkommen til Waterevents!]]></header>
  <bodyText><![CDATA[<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>]]></bodyText>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'e41c663b-b560-4dd6-97c5-3bdfc8cfa3e6', CAST(0x0000A46900E1D43E AS DateTime), N'<FrontPage id="1050" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-24T11:59:25" updateDate="2015-03-28T13:42:13" nodeName="Forside" urlName="forside" path="-1,1050" isDoc="" nodeType="1047" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1049" nodeTypeAlias="FrontPage">
  <slideshowFolder>1074</slideshowFolder>
  <header><![CDATA[Velkommen til Waterevents!]]></header>
  <bodyText><![CDATA[<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/{localLink:1054}" title="Arrangementer">her.</a><a href="/"><br /></a></p>]]></bodyText>
  <facebookLink><![CDATA[http://facebook.com/waterevents]]></facebookLink>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'50258e61-f0e5-4afc-a342-66cdcf09bba5', CAST(0x0000A42B013D4E04 AS DateTime), N'<FrontPage id="1050" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-24T11:59:25" updateDate="2015-01-25T19:15:15" nodeName="Forside" urlName="forside" path="-1,1050" isDoc="" nodeType="1047" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1049" nodeTypeAlias="FrontPage">
  <header><![CDATA[Velkommen til Waterevents!]]></header>
  <bodyText><![CDATA[<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>]]></bodyText>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'4caeffee-126d-40b5-9efe-6af4d6b32368', CAST(0x0000A46900EBF1C8 AS DateTime), N'<FrontPage id="1050" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-24T11:59:25" updateDate="2015-03-28T14:19:02" nodeName="Forside" urlName="forside" path="-1,1050" isDoc="" nodeType="1047" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1049" nodeTypeAlias="FrontPage">
  <seoTitle><![CDATA[Waterevents - Forside]]></seoTitle>
  <seoDescription><![CDATA[Gå tørfodet på vandet i de originale walking waterballs! 
Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.]]></seoDescription>
  <slideshowFolder>1074</slideshowFolder>
  <header><![CDATA[Velkommen til Waterevents!]]></header>
  <bodyText><![CDATA[<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/{localLink:1054}" title="Arrangementer">her.</a><a href="/"><br /></a></p>]]></bodyText>
  <facebookLink><![CDATA[http://facebook.com/waterevents]]></facebookLink>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'7279de66-de54-47d9-b1fa-b14c7d82523c', CAST(0x0000A43100E5CC83 AS DateTime), N'<FrontPage id="1050" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-24T11:59:25" updateDate="2015-01-31T13:56:40" nodeName="Forside" urlName="forside" path="-1,1050" isDoc="" nodeType="1047" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1049" nodeTypeAlias="FrontPage">
  <slideshowFolder>1074</slideshowFolder>
  <header><![CDATA[Velkommen til Waterevents!]]></header>
  <bodyText><![CDATA[<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>]]></bodyText>
  <facebookLink><![CDATA[http://facebook.com]]></facebookLink>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'2cc4c4b7-0541-4ee7-b0da-f0f92326de56', CAST(0x0000A43800FE0976 AS DateTime), N'<FrontPage id="1050" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2015-01-24T11:59:25" updateDate="2015-02-07T15:24:55" nodeName="Forside" urlName="forside" path="-1,1050" isDoc="" nodeType="1047" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1049" nodeTypeAlias="FrontPage">
  <slideshowFolder>1074</slideshowFolder>
  <header><![CDATA[Velkommen til Waterevents!]]></header>
  <bodyText><![CDATA[<p>Waterevents er din vej til en sjov og uforglemmelig oplevelse uanset alder.</p>
<p>Gå tørfodet på vandet i de <strong>originale walking waterballs!</strong> <br />Book os til din polterabend, fødselsdag, firmaarrangement, tøse/herre-tur, eller måske en date, og få en oplevelse der vil blive husket længe.</p>
<p>Når du booker kommer vi ud til et sted nær dig efter aftale, og afholder arrangementet.</p>
<p>Læs mere om arrangementerne <a href="/">her.</a></p>]]></bodyText>
  <facebookLink><![CDATA[http://facebook.com/waterevents]]></facebookLink>
</FrontPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'1d7b9daa-9282-45fb-8b62-8a26edb57ee1', CAST(0x0000A43100EB7809 AS DateTime), N'<Events id="1054" parentID="1050" level="2" creatorID="0" sortOrder="0" createDate="2015-01-25T15:49:55" updateDate="2015-01-31T14:17:18" nodeName="Arrangementer" urlName="arrangementer" path="-1,1050,1054" isDoc="" nodeType="1053" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1057" nodeTypeAlias="Events">
  <header><![CDATA[Arrangementer]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
</Events>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'b319d30b-9869-41c6-83a3-e3905d89f19d', CAST(0x0000A46900ECCADF AS DateTime), N'<Events id="1054" parentID="1050" level="2" creatorID="0" sortOrder="0" createDate="2015-01-25T15:49:55" updateDate="2015-03-28T14:22:08" nodeName="Arrangementer" urlName="arrangementer" path="-1,1050,1054" isDoc="" nodeType="1053" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1057" nodeTypeAlias="Events">
  <seoTitle><![CDATA[Waterevents - Arrangementer]]></seoTitle>
  <seoDescription><![CDATA[Walking waterballs er vores mest populære arrangement. Vi tilbyder også Landballs til dem der gerne vil prøve oplevelsen, men ikke vil på vand]]></seoDescription>
  <header><![CDATA[Arrangementer]]></header>
  <bodyText><![CDATA[<p><span> </span></p>]]></bodyText>
</Events>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1058, N'0023a7f9-4071-44fd-9f82-1dfd955d4f35', CAST(0x0000A438010513D9 AS DateTime), N'<Textpage id="1058" parentID="1054" level="3" creatorID="0" sortOrder="3" createDate="2015-01-25T17:42:30" updateDate="2015-02-07T15:50:33" nodeName="Betingelser" urlName="betingelser" path="-1,1050,1054,1058" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Betingelser header]]></header>
  <bodyText><![CDATA[<p><strong>Vægten pr. deltager ved arrangementer på vand, må ikke overstige 100 kg.</strong><br /><br /><strong>Fremmøde skal ske 15 min. før aftalt tidspunkt.</strong><br /><br /><strong>Man skal sørge for at have sokker/strømper på eller med, da det er påbudt at have på inde i</strong><br /><strong>boldene.</strong><br /><br /><strong>Der må ikke være nogle skarpe genstande på tøjet ved arrangementet. Så som lynlås på</strong><br /><strong>baglommen i jeans.</strong><br /><br /><strong>Bestilling/bookning.</strong> Det bookede arrangement er bindende ved bestilling/booking. I henhold til<br />lov om visse forbrugeraftaler er f.eks Waterballs/Landballs ikke omfattet af en fortrydelsesret.<br /><br /><strong>Betaling.</strong> Der betales kontant på dagen for arrangementets afholdelse, hvis ikke andet er aftalt.<br /><br /><strong>Ændring.</strong> Ved ændring af tidspunkt eller dato, skal vi kontaktes på mail. Det kan forventes at koste<br />Dkk 100,- i adminstrationsomkostning pr. booking.<br /><br /><strong>Afbestilling.</strong> Ved afbestilling mindre end 7 dage før arrangementets afholdelse opkræves 500,- kr.<br />i afbestillingsgebyr.<br />Ved afbestilling mindre end 2 dage før arrangement datoen eller manglende fremmøde på<br />arrangement datoen fra kundens side, opkræves det fulde aftalte beløb.<br />Waterevents forbeholder sig ret til at aflyse arrangementet pga. dårligt vejr og andre udefra<br />uforudsete hændelser, uden nogen form for kompensation af enhver form.<br />Waterevents og dets instruktører bestemmer udelukket om der kan aflyses pga vejr forhold.<br />Aflyser kunden i et tilfælle hvor vi vurderer at arrangementet kunne være afholdt, anses dette som<br />en afbestilling iht. almindelige betingelser.<br /><br /><strong>Alkohol.</strong> Waterevents og dennes instruktører forholder sig retten til at afvise stærkt berusede personer,<br />ligesom instruktørerne kan nægte enkeltpersoner eller hele hold at deltage i aktiviteterne som følge<br />af dette. Aflyses et arrangement pga. dette, gælder de normale betingelser som ved afbestilling.<br /><br /><strong>Forsikring.</strong> Som led i arrangementets afvikling og inden for det tidsrum arrangementet forløber over,<br />hvor Waterevents er leverandør af aktiviteter, er deltagerne forsikret mod fysisk skade gennem<br />sædvanlig ansvarsforsikring, tegnet i Alm. Brand Forsikring.<br />Den tegnede ansvarsforsikring dækker kun fysiske skader, der hidrører fra mangelfuld instruktion eller<br />fejl/mangler ved det anvendte udstyr.<br />Waterevents ansvarsforsikring dækker ikke øvrige skader uanset om disse er hændelige eller som følge<br />af deltagernes uagtsomme eller forsætlige dispositioner, herunder, men ikke begrænset til, manglende<br />overholdelse af de ved arrangementets gennemførelse, meddelte instrukser og sikkerhedsprocedurer.<br />Det forudsættes i øvrigt, at køberen af arrangementet har den lovpligtig arbejdsskadeforsikring for de<br />deltagende medarbejdere, såfremt der er tale om et firmaarrangement.<br /><br /><strong>Erstatningskrav.</strong> Eventuelle erstatningskrav er underlagt dansk erstatningsret. Ved brug af<br />underleverandører sikrer Waterevents, at disse er behørigt forsikret.<br />Enhver øvrig forsikring af deltagerne, og ethvert erstatningskrav som ikke er omfattet af den af<br />Waterevents eller dennes underleverandører tegnede ansvarsforsikring, er Waterevents og dennes<br />underleverandører uvedkommende.<br />Køberen af arrangementet er opfordret til at undersøge, hvorvidt deltagerne er dækket ind under<br />egen ansvarsforsikring, eller om denne som led i arrangementets afholdelse skal tegne yderligere<br />forsikring.<br />I forbindelse med arrangementet forbeholder Waterevents sig retten til at foretage enhver nødvendig<br />ændring, der påbyder sig som følge af arrangementets karakter, samt vejr- og vindforhold, herunder<br />ændringer vedrørende transportform og aktiviteter begrundet i deltagernes sikkerhed.<br />Enhver ændring vil i videst muligt omfang blive gennemført således at arrangementets samlede<br />karakter og omfang opretholdes, idet sådanne eventuelle programændringer vil være uden betydning<br />for arrangementet og den aftalte pris.<br /><br /></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1058, N'b8d3f790-67e2-439e-ae62-8e5eb6a3f261', CAST(0x0000A42B0127DF7B AS DateTime), N'<Textpage id="1058" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-25T17:42:30" updateDate="2015-01-25T17:57:14" nodeName="Betingelser" urlName="betingelser" path="-1,1050,1054,1058" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Betingelser header]]></header>
  <bodyText><![CDATA[<p>Betingelser body text</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1058, N'66b013e2-c598-4001-8d0e-b5cded2a9a2d', CAST(0x0000A43800B66A16 AS DateTime), N'<Textpage id="1058" parentID="1054" level="3" creatorID="0" sortOrder="3" createDate="2015-01-25T17:42:30" updateDate="2015-02-07T11:04:09" nodeName="Betingelser" urlName="betingelser" path="-1,1050,1054,1058" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Betingelser header]]></header>
  <bodyText><![CDATA[<p>Betingelser body text</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1058, N'8c682d82-683d-4066-87f5-d5d9ae07b4ce', CAST(0x0000A43801052754 AS DateTime), N'<Textpage id="1058" parentID="1054" level="3" creatorID="0" sortOrder="3" createDate="2015-01-25T17:42:30" updateDate="2015-02-07T15:50:49" nodeName="Betingelser" urlName="betingelser" path="-1,1050,1054,1058" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Betingelser]]></header>
  <bodyText><![CDATA[<p><strong>Vægten pr. deltager ved arrangementer på vand, må ikke overstige 100 kg.</strong><br /><br /><strong>Fremmøde skal ske 15 min. før aftalt tidspunkt.</strong><br /><br /><strong>Man skal sørge for at have sokker/strømper på eller med, da det er påbudt at have på inde i</strong><br /><strong>boldene.</strong><br /><br /><strong>Der må ikke være nogle skarpe genstande på tøjet ved arrangementet. Så som lynlås på</strong><br /><strong>baglommen i jeans.</strong><br /><br /><strong>Bestilling/bookning.</strong> Det bookede arrangement er bindende ved bestilling/booking. I henhold til<br />lov om visse forbrugeraftaler er f.eks Waterballs/Landballs ikke omfattet af en fortrydelsesret.<br /><br /><strong>Betaling.</strong> Der betales kontant på dagen for arrangementets afholdelse, hvis ikke andet er aftalt.<br /><br /><strong>Ændring.</strong> Ved ændring af tidspunkt eller dato, skal vi kontaktes på mail. Det kan forventes at koste<br />Dkk 100,- i adminstrationsomkostning pr. booking.<br /><br /><strong>Afbestilling.</strong> Ved afbestilling mindre end 7 dage før arrangementets afholdelse opkræves 500,- kr.<br />i afbestillingsgebyr.<br />Ved afbestilling mindre end 2 dage før arrangement datoen eller manglende fremmøde på<br />arrangement datoen fra kundens side, opkræves det fulde aftalte beløb.<br />Waterevents forbeholder sig ret til at aflyse arrangementet pga. dårligt vejr og andre udefra<br />uforudsete hændelser, uden nogen form for kompensation af enhver form.<br />Waterevents og dets instruktører bestemmer udelukket om der kan aflyses pga vejr forhold.<br />Aflyser kunden i et tilfælle hvor vi vurderer at arrangementet kunne være afholdt, anses dette som<br />en afbestilling iht. almindelige betingelser.<br /><br /><strong>Alkohol.</strong> Waterevents og dennes instruktører forholder sig retten til at afvise stærkt berusede personer,<br />ligesom instruktørerne kan nægte enkeltpersoner eller hele hold at deltage i aktiviteterne som følge<br />af dette. Aflyses et arrangement pga. dette, gælder de normale betingelser som ved afbestilling.<br /><br /><strong>Forsikring.</strong> Som led i arrangementets afvikling og inden for det tidsrum arrangementet forløber over,<br />hvor Waterevents er leverandør af aktiviteter, er deltagerne forsikret mod fysisk skade gennem<br />sædvanlig ansvarsforsikring, tegnet i Alm. Brand Forsikring.<br />Den tegnede ansvarsforsikring dækker kun fysiske skader, der hidrører fra mangelfuld instruktion eller<br />fejl/mangler ved det anvendte udstyr.<br />Waterevents ansvarsforsikring dækker ikke øvrige skader uanset om disse er hændelige eller som følge<br />af deltagernes uagtsomme eller forsætlige dispositioner, herunder, men ikke begrænset til, manglende<br />overholdelse af de ved arrangementets gennemførelse, meddelte instrukser og sikkerhedsprocedurer.<br />Det forudsættes i øvrigt, at køberen af arrangementet har den lovpligtig arbejdsskadeforsikring for de<br />deltagende medarbejdere, såfremt der er tale om et firmaarrangement.<br /><br /><strong>Erstatningskrav.</strong> Eventuelle erstatningskrav er underlagt dansk erstatningsret. Ved brug af<br />underleverandører sikrer Waterevents, at disse er behørigt forsikret.<br />Enhver øvrig forsikring af deltagerne, og ethvert erstatningskrav som ikke er omfattet af den af<br />Waterevents eller dennes underleverandører tegnede ansvarsforsikring, er Waterevents og dennes<br />underleverandører uvedkommende.<br />Køberen af arrangementet er opfordret til at undersøge, hvorvidt deltagerne er dækket ind under<br />egen ansvarsforsikring, eller om denne som led i arrangementets afholdelse skal tegne yderligere<br />forsikring.<br />I forbindelse med arrangementet forbeholder Waterevents sig retten til at foretage enhver nødvendig<br />ændring, der påbyder sig som følge af arrangementets karakter, samt vejr- og vindforhold, herunder<br />ændringer vedrørende transportform og aktiviteter begrundet i deltagernes sikkerhed.<br />Enhver ændring vil i videst muligt omfang blive gennemført således at arrangementets samlede<br />karakter og omfang opretholdes, idet sådanne eventuelle programændringer vil være uden betydning<br />for arrangementet og den aftalte pris.<br /><br /></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1058, N'e643684b-18ab-4dd0-8629-f9c54c8511da', CAST(0x0000A4380104C17C AS DateTime), N'<Textpage id="1058" parentID="1054" level="3" creatorID="0" sortOrder="3" createDate="2015-01-25T17:42:30" updateDate="2015-02-07T15:49:22" nodeName="Betingelser" urlName="betingelser" path="-1,1050,1054,1058" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Betingelser header]]></header>
  <bodyText><![CDATA[<p><strong>Vægten pr. deltager ved arrangementer på vand, må ikke overstige 100 kg.</strong><br /><br /><strong>Fremmøde skal ske 15 min. før aftalt tidspunkt.</strong><br /><br /><strong>Man skal sørge for at have sokker/strømper på eller med, da det er påbudt at have på inde i</strong><br /><strong>boldene.</strong><br /><br /><strong>Der må ikke være nogle skarpe genstande på tøjet ved arrangementet. Så som lynlås på</strong><br /><strong>baglommen i jeans.</strong><br /><br /><strong>Bestilling/bookning.</strong> Det bookede arrangement er bindende ved bestilling/booking. I henhold til<br />lov om visse forbrugeraftaler er f.eks Waterballs/Landballs ikke omfattet af en fortrydelsesret.<br /><br /><strong>Betaling.</strong> Der betales kontant på dagen for arrangementets afholdelse, hvis ikke andet er aftalt.<br /><br /><strong>Ændring.</strong> Ved ændring af tidspunkt eller dato, skal vi kontaktes på mail. Det kan forventes at koste<br />Dkk 100,- i adminstrationsomkostning pr. booking.<br /><br /><strong>Afbestilling.</strong> Ved afbestilling mindre end 7 dage før arrangementets afholdelse opkræves 500,- kr.<br />i afbestillingsgebyr.<br />Ved afbestilling mindre end 2 dage før arrangement datoen eller manglende fremmøde på<br />arrangement datoen fra kundens side, opkræves det fulde aftalte beløb.<br />Waterevents forbeholder sig ret til at aflyse arrangementet pga. dårligt vejr og andre udefra<br />uforudsete hændelser, uden nogen form for kompensation af enhver form.<br />Waterevents og dets instruktører bestemmer udelukket om der kan aflyses pga vejr forhold.<br />Aflyser kunden i et tilfælle hvor vi vurderer at arrangementet kunne være afholdt, anses dette som<br />en afbestilling iht. almindelige betingelser.<br /><br /><strong>Alkohol.</strong> Waterevents og dennes instruktører forholder sig retten til at afvise stærkt berusede personer,<br />ligesom instruktørerne kan nægte enkeltpersoner eller hele hold at deltage i aktiviteterne som følge<br />af dette. Aflyses et arrangement pga. dette, gælder de normale betingelser som ved afbestilling.<br /><br /><strong>Forsikring.</strong> Som led i arrangementets afvikling og inden for det tidsrum arrangementet forløber over,<br />hvor Waterevents er leverandør af aktiviteter, er deltagerne forsikret mod fysisk skade gennem<br />sædvanlig ansvarsforsikring, tegnet i Alm. Brand Forsikring.<br />Den tegnede ansvarsforsikring dækker kun fysiske skader, der hidrører fra mangelfuld instruktion eller<br />fejl/mangler ved det anvendte udstyr.<br />Waterevents ansvarsforsikring dækker ikke øvrige skader uanset om disse er hændelige eller som følge<br />af deltagernes uagtsomme eller forsætlige dispositioner, herunder, men ikke begrænset til, manglende<br />overholdelse af de ved arrangementets gennemførelse, meddelte instrukser og sikkerhedsprocedurer.<br />Det forudsættes i øvrigt, at køberen af arrangementet har den lovpligtig arbejdsskadeforsikring for de<br />deltagende medarbejdere, såfremt der er tale om et firmaarrangement.<br /><br /><strong>Erstatningskrav.</strong> Eventuelle erstatningskrav er underlagt dansk erstatningsret. Ved brug af<br />underleverandører sikrer Waterevents, at disse er behørigt forsikret.<br />Enhver øvrig forsikring af deltagerne, og ethvert erstatningskrav som ikke er omfattet af den af<br />Waterevents eller dennes underleverandører tegnede ansvarsforsikring, er Waterevents og dennes<br />underleverandører uvedkommende.<br />Køberen af arrangementet er opfordret til at undersøge, hvorvidt deltagerne er dækket ind under<br />arrangementkøberens egen ansvarsforsikring, eller om denne som led i arrangementets afholdelse skal<br />tegne yderligere forsikring.<br />I forbindelse med arrangementet forbeholder Waterevents sig retten til at foretage enhver nødvendig<br />ændring, der påbyder sig som følge af arrangementets karakter, samt vejr- og vindforhold, herunder<br />ændringer vedrørende transportform og aktiviteter begrundet i deltagernes sikkerhed.<br />Enhver ændring vil i videst muligt omfang blive gennemført således at arrangementets samlede<br />karakter og omfang opretholdes, idet sådanne eventuelle programændringer vil være uden betydning<br />for arrangementet og den aftalte pris.<br /><br /></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'8acf220b-38b5-457f-a501-1c89aa274ba4', CAST(0x0000A4380113F0C9 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-02-07T16:44:40" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /></p>
<p>                                                                                                                              <em>                         Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'733f1ac2-dcab-49e5-8105-3898483d97eb', CAST(0x0000A438011423B5 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-02-07T16:45:23" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" />                                                                                                                                                 <em>                                       Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'e48e460c-6ffe-4a28-b953-4a0727febe82', CAST(0x0000A46900EDAEDB AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-03-28T14:25:22" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <seoTitle><![CDATA[Waterevents - Om os]]></seoTitle>
  <seoDescription><![CDATA[Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og
vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi
mener der skal til for at gøre jeres arrangement perfekt.]]></seoDescription>
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p style="text-align: center;"><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /><em>Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'7a7e8a01-3bfd-4446-917a-4a3edfc81a3a', CAST(0x0000A42B012AE6F8 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T17:50:59" updateDate="2015-01-25T18:08:15" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.</p>
<p>*Insert image here*</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'652a5ae3-5dc2-4a66-8b11-7291dc3ed195', CAST(0x0000A42B0126EA80 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T17:50:59" updateDate="2015-01-25T17:53:45" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.</p>
<p>*Insert image here*</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'994055b0-252b-4a4b-a791-82845fc2c0bd', CAST(0x0000A42B0133367B AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-01-25T18:38:31" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.</p>
<p>*Insert image here*</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'58ddafec-62c3-4c45-a58b-992589f94972', CAST(0x0000A46900E42C51 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-03-28T13:50:45" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p style="text-align: center;"><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /><em>Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'2362a9bf-4497-4085-b4d7-c15137647bcb', CAST(0x0000A438011419E0 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-02-07T16:45:15" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" />                                                                                                                                                 <em>                              Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'd7e69214-52a4-4479-80ee-f186d03ffb12', CAST(0x0000A4380113FCC7 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-02-07T16:44:50" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /></p>
<p>                                                                                                                                                 <em>                         Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'5a02dd7b-07b4-4cc8-85a0-f5dfe644fdf6', CAST(0x0000A43801142CFD AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-02-07T16:45:31" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og<br />vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi<br />mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at<br />danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" />                                                                                                                                                 <em>                                         Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1059, N'a6dca21e-7381-4643-816e-f84772d5aee2', CAST(0x0000A46900EFE432 AS DateTime), N'<Textpage id="1059" parentID="1050" level="2" creatorID="0" sortOrder="3" createDate="2015-01-25T17:50:59" updateDate="2015-03-28T14:33:25" nodeName="Om os" urlName="om-os" path="-1,1050,1059" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <seoTitle><![CDATA[Waterevents - Om os]]></seoTitle>
  <seoDescription><![CDATA[Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og
vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi
mener der skal til for at gøre jeres arrangement perfekt.]]></seoDescription>
  <header><![CDATA[Om os]]></header>
  <bodyText><![CDATA[<p>Waterevents er ejet og drevet af Henrik og Michael. Vi har i mange år interesseret os for sejlads og vandaktiviteter generelt, og kan derfor ikke bare bibringe erfaring, men også den ekstra gejst vi mener der skal til for at gøre jeres arrangement perfekt.</p>
<p>Idéen til Waterevents opstod da vi under en rejse opdagede disse walking waterballs, og mente at danskerne ikke skulle snydes for en sådan oplevelse. Vi ser frem til at dele den oplevelse med jer.<br /><br /><br /><br /></p>
<p style="text-align: center;"><img style="width: 658px; height: 403px; display: block; margin-left: auto; margin-right: auto;" src="/media/1012/om-os.jpg?width=658px&amp;height=403px" alt="undefined" rel="1095" /><em>Michael og Henrik</em></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'7bbab874-3b75-43db-b76e-25b63d8f71c8', CAST(0x0000A4380100B3D8 AS DateTime), N'<Textpage id="1060" parentID="1054" level="3" creatorID="0" sortOrder="2" createDate="2015-01-25T17:59:23" updateDate="2015-02-07T15:34:37" nodeName="Spørgsmål og svar" urlName="spoergsmaal-og-svar" path="-1,1050,1054,1060" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Spørgsmål og svar]]></header>
  <bodyText><![CDATA[<p><strong>1. Hvilken påklædning er påkrævet?</strong><br />Ganske almindeligt tøj, uden skarpe genstande, eller andre objekter der kan skade vores bolde.<br />Strømper er at foretrække.<br /><br /><br /><strong>2. Hvor kan vi holde arrangementet, og hvilke krav er der?</strong><br />Vi har en liste over vores faste lokationer, og krav til andre steder valgt af dig, i menuen ”lokationer”.<br /><br /><br /><strong>3. Er der nogle vægtgrænser?</strong><br />Boldene tåler en maxvægt på 100 kg.<br /><br /><br /><strong>4. Kan gravide deltage?</strong><br />Gravide kan sagtens deltage. Aktivitetsniveauet bestemmes helt selv af den enkelte deltager.<br /><br /><br /><strong>5. Er det sikkert?</strong><br />Sikkerhed er altid i top. Vores bolde er godkendte af teknologisk institut, udstyret med sikkerhedsliner,<br />og personalet er uddannet.<br /><br /><br /><br /><strong>6. Må man have indtaget alkohol?</strong><br />Vi forbeholder os ret til at afvise stærkt berusede personer iht. Vores <a href="/arrangementer/betingelser/" target="_parent">betingelser</a></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'620370ef-a220-4dd6-97a3-26b6daa00170', CAST(0x0000A43800B66A16 AS DateTime), N'<Textpage id="1060" parentID="1054" level="3" creatorID="0" sortOrder="2" createDate="2015-01-25T17:59:23" updateDate="2015-02-07T11:04:09" nodeName="Spørgsmål og svar" urlName="spoergsmaal-og-svar" path="-1,1050,1054,1060" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Spørgsmål og svar]]></header>
  <bodyText><![CDATA[<p>Q: How many cups of sugar does it take to get to the moon?</p>
<p>A: Three and a half</p>
<p> </p>
<p>Q: Hvad er 2 + 2</p>
<p>A: 4</p>
<p> </p>
<p>Q: Finder Michael selv på flere?</p>
<p>A: Ja</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'44132cab-5981-4573-b090-3e17a30b7fae', CAST(0x0000A43800FFF515 AS DateTime), N'<Textpage id="1060" parentID="1054" level="3" creatorID="0" sortOrder="2" createDate="2015-01-25T17:59:23" updateDate="2015-02-07T15:31:54" nodeName="Spørgsmål og svar" urlName="spoergsmaal-og-svar" path="-1,1050,1054,1060" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Spørgsmål og svar]]></header>
  <bodyText><![CDATA[<p><strong>1. Hvilken påklædning er påkrævet?</strong><br />Ganske almindeligt tøj, uden skarpe genstande, eller andre objekter der kan skade vores bolde.<br />Strømper er at foretrække.<br /><br /><br /><strong>2. Hvor kan vi holde arrangementet, og hvilke krav er der?</strong><br />Vi har en liste over vores faste lokationer, og krav til andre steder valgt af dig, i menuen ”lokationer”.<br /><br /><br /><strong>3. Er der nogle vægtgrænser?</strong><br />Boldene tåler en maxvægt på 100 kg.<br /><br /><br /><strong>4. Kan gravide deltage?</strong><br />Gravide kan sagtens deltage. Aktivitetsniveauet bestemmes helt selv af den enkelte deltager.<br /><br /><br /><strong>5. Er det sikkert?</strong><br />Sikkerhed er altid i top. Vores bolde er godkendte af teknologisk institut, udstyret med sikkerhedsliner,<br />og personalet er uddannet.<br /><br /><br /><br /><strong>6. Må man have indtaget alkohol?</strong><br />Vi forbeholder os ret til at afvise stærkt berusede personer iht. Vores betingelser</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'6aa5aaeb-63b8-4c87-aaf8-3ede2efb3c79', CAST(0x0000A43800F9D741 AS DateTime), N'<Textpage id="1060" parentID="1054" level="3" creatorID="0" sortOrder="2" createDate="2015-01-25T17:59:23" updateDate="2015-02-07T15:09:38" nodeName="Spørgsmål og svar" urlName="spoergsmaal-og-svar" path="-1,1050,1054,1060" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Spørgsmål og svar]]></header>
  <bodyText><![CDATA[<p><img style="width: 500px; height:375px;" src="/media/1007/cp-concept-art-4.jpg?width=500&amp;height=375" alt="undefined" rel="1089" />Q: How many cups of sugar does it take to get to the moon?</p>
<p>A: Three and a half</p>
<p> </p>
<p>Q: Hvad er 2 + 2</p>
<p>A: 4</p>
<p> </p>
<p>Q: Finder Michael selv på flere?</p>
<p>A: Ja</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'd64aab66-27a2-4561-bd82-022693a45f13', CAST(0x0000A43100F0AC2E AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-01-31T14:36:15" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'37738063-34dc-402a-b0b1-02ea91a9a72c', CAST(0x0000A438010703AE AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:57:36" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning ag boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'1927fb23-ceab-435f-85f6-16c1e19613b1', CAST(0x0000A46900EF2A95 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-03-28T14:30:46" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <seoTitle><![CDATA[Waterevents - Lokationer]]></seoTitle>
  <seoDescription><![CDATA[Vi afholder arrangementer i det meste af landet. - Læs mere]]></seoDescription>
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'bd823520-5121-4e0e-ac4c-322ba4b38556', CAST(0x0000A42B012AE6B2 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-01-25T18:08:15" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Locations" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'ce88003a-6090-4f21-b9ca-3c2e6d57b066', CAST(0x0000A4380106A7EC AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:56:18" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                              Eksempel på flydebro:</em></p>
<p><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'98688c04-bc77-4831-b49c-56f9ec196cd3', CAST(0x0000A4380106C013 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:56:38" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                     Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'b566d14b-88ed-446d-9092-69d2cdeb8bde', CAST(0x0000A46900EF31D5 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-03-28T14:30:52" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <seoTitle><![CDATA[Waterevents - Lokationer]]></seoTitle>
  <seoDescription><![CDATA[Vi afholder arrangementer i det meste af landet. - Læs mere]]></seoDescription>
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'c5564bb6-0c82-489d-9aaa-6d8b0d579ad2', CAST(0x0000A438010653EA AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:55:06" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><span><img style="width: 450px; height:250px;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'c4a319f3-e4eb-4ca0-9cb8-6d90624c060c', CAST(0x0000A4380106177D AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:54:14" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'd661447e-baf9-4ae6-a81e-7ef49118515a', CAST(0x0000A4380106C9BA AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:56:46" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'8fdc54fd-d0e6-4578-9d96-83e6d62033f6', CAST(0x0000A46900EF5E41 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-03-28T14:31:30" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <seoTitle><![CDATA[Waterevents - Lokationer]]></seoTitle>
  <seoDescription><![CDATA[Vi afholder arrangementer i det meste af landet. - Læs mere]]></seoDescription>
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'0a5bab78-b697-4f27-86e4-84bacf21851c', CAST(0x0000A438010F9312 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T16:28:46" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'9273922b-58c9-4a19-a287-8d2e165d4479', CAST(0x0000A438010750B6 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:58:42" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'78e9f171-61a1-4db5-aa50-8df12a7519de', CAST(0x0000A4380106664C AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:55:22" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br />Indhentning af evt. tilladelse fra ejeren af broen er jeres ansvar.</span></p>
<p> </p>
<p><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'c96b017b-f99c-4962-8d70-ad81de01a725', CAST(0x0000A4380105AF73 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-02-07T15:52:46" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'f241dfbb-92ee-430e-b0c6-db5f64527cde', CAST(0x0000A42B012E9973 AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-01-25T18:21:43" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'bf465515-eb57-47b8-bd19-df02f5e4f5c7', CAST(0x0000A42B012EB9AA AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-01-25T18:22:11" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p>Lokationer brødtekst</p>]]></bodyText>
  <postBodyText><![CDATA[<p>Lokationer brødtekst (efter liste)</p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'89d8fb59-fb20-4fe8-8b17-e89f6e70b46a', CAST(0x0000A46900ED568B AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-03-28T14:24:07" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <seoTitle><![CDATA[Waterevents - Lokationer]]></seoTitle>
  <seoDescription><![CDATA[Vi afholder arrangementer i det meste af landet. - Læs mere]]></seoDescription>
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale<br />rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer<br />udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der<br />skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land<br />til vand problemfri.<br /></span></p>
<p> </p>
<p><em>                                                Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'fa231157-604a-4400-9c00-fb1e60e9f4f4', CAST(0x0000A46900EF73AD AS DateTime), N'<Locations id="1064" parentID="1050" level="2" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:02" updateDate="2015-03-28T14:31:49" nodeName="Lokationer" urlName="lokationer" path="-1,1050,1064" isDoc="" nodeType="1061" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1071" nodeTypeAlias="Locations">
  <seoTitle><![CDATA[Waterevents - Lokationer]]></seoTitle>
  <seoDescription><![CDATA[Vi afholder arrangementer i det meste af landet. - Læs mere]]></seoDescription>
  <header><![CDATA[Lokationer]]></header>
  <bodyText><![CDATA[<p><span>Nedenstående adresser er steder vi har samarbejdsaftaler med, og tilbyder derfor de mest optimale rammer til at gøre jeres Waterball arrangement til en succes.<br />Andre steder som I selv vælger, skal overholde nogle krav I kan læse om nederst på siden.<br /><br />Bemærk at da vi ikke har instruktører i hele landet, kan der forekomme kørselstillæg ved lokationer udover København og Odense.</span></p>]]></bodyText>
  <postBodyText><![CDATA[<p><span>Ud over disse steder, kommer vi også gerne ud til et sted valgt af jer, men der er nogle få krav der skal opfyldes.<br /><br />Vi anbefaler en flydebro som ofte findes i havneområder, havnebade og ved ro- og kajakklubber.<br />En flydebro ligger modsat en almindelig badebro, helt tæt på vandet og gør overgangen fra land til vand problemfri.<br /></span></p>
<p> </p>
<p style="text-align: center;"><em> Eksempel på flydebro:</em><span><img style="width: 450px; height: 250px; display: block; margin-left: auto; margin-right: auto;" src="/media/1011/flydebro.jpg?width=450&amp;height=250" alt="Eksempel på flydebro" rel="1094" /></span></p>
<p> </p>
<p>Har du ikke adgang til en flydebro, skal du stadig overholde disse ting:<br /><br />- Overgangen fra land til vand må max være 25-30 cm.<br /><br />- Land-området skal være forholdsvis plant. Dvs. skrå kanter ned til f.eks en å accepteres ikke.<br /><br />- Land-området skal være stort nok til ind- og ud stigning af boldene, ca 2x2 meter.<br /><br />- Der skal minimum være 50 cm dybt, og området skal være frit for grene, sten osv.<br /><br />- Afstanden fra parkeringsområde til vand skal være rimelig da vores udstyr fylder og vejer en del.<br /><br />- Benyttes der selvvalgte flydebroer eller lign. er indhentning af evt. tilladelse fra ejeren af broen jeres ansvar.<br /><br /><br /><br /><br /><strong>   Sandstrand accepteres desværre ikke da det skader vores udstyr</strong></p>
<p> </p>
<p> </p>]]></postBodyText>
</Locations>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1065, N'5b7a6b2d-6da3-4629-9b0b-e974e56e975d', CAST(0x0000A42B012AFCBB AS DateTime), N'<LocationsRegion id="1065" parentID="1064" level="3" creatorID="0" sortOrder="0" createDate="2015-01-25T18:08:34" updateDate="2015-01-25T18:08:34" nodeName="Sjælland" urlName="sjaelland" path="-1,1050,1064,1065" isDoc="" nodeType="1062" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="LocationsRegion" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'666f6aa1-36b1-4492-861d-04b94449eeb9', CAST(0x0000A42B012B079B AS DateTime), N'<LocationsRegion id="1066" parentID="1064" level="3" creatorID="0" sortOrder="1" createDate="2015-01-25T18:08:43" updateDate="2015-01-25T18:08:43" nodeName="Fyn" urlName="fyn" path="-1,1050,1064,1066" isDoc="" nodeType="1062" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="LocationsRegion" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'e0ffbd2e-1e7a-450a-9f7e-be0cfe79b406', CAST(0x0000A42B012B169D AS DateTime), N'<LocationsRegion id="1067" parentID="1064" level="3" creatorID="0" sortOrder="2" createDate="2015-01-25T18:08:56" updateDate="2015-01-25T18:08:56" nodeName="Jylland" urlName="jylland" path="-1,1050,1064,1067" isDoc="" nodeType="1062" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="LocationsRegion" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'4db988d9-44d4-4846-ae14-092079ebe6d8', CAST(0x0000A43801088983 AS DateTime), N'<Location id="1068" parentID="1065" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:09:24" updateDate="2015-02-07T16:03:09" nodeName="Søernes sejlklub" urlName="soeernes-sejlklub" path="-1,1050,1064,1065,1068" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Søernes Sejlklub (ved Søpavillonen) 
Gyldenløvesgade 24, 1369 København]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'abb15004-dd44-4daa-8256-10b278af0f81', CAST(0x0000A4380108DE24 AS DateTime), N'<Location id="1068" parentID="1065" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:09:24" updateDate="2015-02-07T16:04:21" nodeName="Søernes sejlklub" urlName="soeernes-sejlklub" path="-1,1050,1064,1065,1068" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Søernes Sejlklub (ved Søpavillonen)
Gyldenløvesgade 24, 1369 København]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'a42d0de9-5091-4aa2-b5ce-39698a347685', CAST(0x0000A42B012C2129 AS DateTime), N'<Location id="1068" parentID="1065" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:09:24" updateDate="2015-01-25T18:12:44" nodeName="Søernes sejlklub" urlName="soeernes-sejlklub" path="-1,1050,1064,1065,1068" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Søernes Sejlklub (ved Søpavillonen) Gyldenløvesgade 24, 1369 København]]></address>
  <googleMapsLink><![CDATA[http://google.dk]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'43b8dc27-073c-49b3-a7d4-4e80df828015', CAST(0x0000A4380108D4F8 AS DateTime), N'<Location id="1068" parentID="1065" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:09:24" updateDate="2015-02-07T16:04:13" nodeName="Søernes sejlklub" urlName="soeernes-sejlklub" path="-1,1050,1064,1065,1068" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Søernes Sejlklub (ved Søpavillonen)Gyldenløvesgade 24, 1369 København]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'c126f2a5-4710-40d0-b71a-65e0860f30f5', CAST(0x0000A4380108C884 AS DateTime), N'<Location id="1068" parentID="1065" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:09:24" updateDate="2015-02-07T16:04:02" nodeName="Søernes sejlklub" urlName="soeernes-sejlklub" path="-1,1050,1064,1065,1068" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Søernes Sejlklub (ved Søpavillonen)


Gyldenløvesgade 24, 1369 København]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'917c9c70-9959-45a3-a642-7e6cfdb3d8fe', CAST(0x0000A4380108B786 AS DateTime), N'<Location id="1068" parentID="1065" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:09:24" updateDate="2015-02-07T16:03:48" nodeName="Søernes sejlklub" urlName="soeernes-sejlklub" path="-1,1050,1064,1065,1068" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Søernes Sejlklub (ved Søpavillonen)
Gyldenløvesgade 24, 1369 København]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'e230be8b-5c84-495e-a786-64799d21e47b', CAST(0x0000A43801090F6A AS DateTime), N'<Location id="1069" parentID="1066" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:14:24" updateDate="2015-02-07T16:05:03" nodeName="Østersøgade 8" urlName="østersoegade-8" path="-1,1050,1064,1066,1069" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Østersøgade 8, 5000 Odense C
(ved fodboldfabrikken)]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=34&gs_id=3&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&bs=1&wrapid=tljp132959883908002&q=Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&um=1&ie=UTF-8&hq&hnear=0x465253086080a97b:0x7b8e9a2122499f11,Gyldenl%C3%B8vesgade+24,+1369+K%C3%B8benhavn&gl=dk&ei=eRFAT5utNITtsgbi28XmBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'b14cbece-dec8-45ba-b396-cec3f7bb8785', CAST(0x0000A438010F4197 AS DateTime), N'<Location id="1069" parentID="1066" level="4" creatorID="0" sortOrder="0" createDate="2015-01-25T18:14:24" updateDate="2015-02-07T16:27:36" nodeName="Østersøgade 8" urlName="østersoegade-8" path="-1,1050,1064,1066,1069" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Østersøgade 8, 5000 Odense C
(ved fodboldfabrikken)]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/%C3%98sters%C3%B8gade+8,+5000+Odense+C/@55.407511,10.37848,17z/data=!3m1!4b1!4m2!3m1!1s0x464ce007e1a276eb:0x82472e9b9562d7e?hl=da]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'a197af81-9b85-4772-a2e2-9856461519fb', CAST(0x0000A438010956CF AS DateTime), N'<Location id="1070" parentID="1066" level="4" creatorID="0" sortOrder="1" createDate="2015-01-25T18:15:10" updateDate="2015-02-07T16:06:04" nodeName="Middelfart roklub" urlName="middelfart-roklub" path="-1,1050,1064,1066,1070" isDoc="" nodeType="1063" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Middelfart Roklub, Kongebrovej 66, 
5500 Middelfart]]></address>
  <googleMapsLink><![CDATA[Middelfart Roklub, Kongebrovej 66, 5500 Middelfart]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'f59391d7-e0d4-4785-8858-0b0e6c8e8f6f', CAST(0x0000A46900E3A0A0 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-03-28T13:48:45" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'7588f3c9-0163-4035-965d-18bb2c623e69', CAST(0x0000A4380112903C AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-02-07T16:39:39" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br />Op til 9 personer   kr. 2000,-<br /><br />Op til 20 personer kr. 2300,-<br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.</span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 500px; height: 159.501px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=500&amp;height=159.50069348127602" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'7e80f192-ce47-4348-b560-207f6f8fa6c0', CAST(0x0000A438011166D5 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-02-07T16:35:25" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br />Op til 9 personer   kr. 2000,-<br /><br />Op til 20 personer kr. 2300,-<br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres t-shirts og lign. hvis I vil<br />skabe opmærksomhed omkring jeres eget brand.</span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'1c693c8e-bb54-4076-9838-2601d42093f2', CAST(0x0000A438011356FA AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-02-07T16:42:28" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'284bd552-a01c-4054-8312-348071f3485d', CAST(0x0000A43801103AB9 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-02-07T16:31:09" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br />Op til 9 personer   kr. 2000,-<br /><br />Op til 20 personer kr. 2300,-<br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'eab3b47c-034b-4ed1-a4a2-3c1c95f4a9a6', CAST(0x0000A46900ED81C2 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-03-28T14:24:44" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <seoTitle><![CDATA[Waterevents - Priser]]></seoTitle>
  <seoDescription><![CDATA[Priserne er gældende for både Waterballs og Landballs]]></seoDescription>
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores <a href="/{localLink:1058}" title="Betingelser">betingelser</a></span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'744ac84b-f8cd-4284-8175-40c507f4b359', CAST(0x0000A46900EFC5C3 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-03-28T14:32:59" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <seoTitle><![CDATA[Waterevents - Priser]]></seoTitle>
  <seoDescription><![CDATA[Priserne er gældende for både Waterballs og Landballs]]></seoDescription>
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores <a href="/{localLink:1058}" title="Betingelser">betingelser</a></span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'288d8307-f902-478f-b3dc-877df4ea506b', CAST(0x0000A46900E3E282 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-03-28T13:49:42" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (<a href="/{localLink:1064}" title="Lokationer">se her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (<a href="/{localLink:1064}" title="Lokationer">se nederst på siden her</a>)<br /><br />Husk at læse vores <a href="/{localLink:1058}" title="Betingelser">betingelser</a></span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'248aaab9-5ba0-49ed-b93c-898b3448eafa', CAST(0x0000A4380112EA15 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-02-07T16:40:55" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.</span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'a4354c69-784a-40e4-b235-afecad38b46a', CAST(0x0000A42B0133363E AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-01-25T18:38:31" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p>Priser brødtekst</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'91c8a74c-674e-42b5-a783-c10b423605c8', CAST(0x0000A4380112A977 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-02-07T16:40:00" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/lokationer/" target="_parent">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.</span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 500px; height: 159.501px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=500&amp;height=159.50069348127602" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'5a4efbbe-12cc-410f-8fa2-d8883b3dd975', CAST(0x0000A46900E33101 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-03-28T13:47:10" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/{localLink:1064}" target="_parent" title="Lokationer">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se <a href="/{localLink:1064}" title="Lokationer">her</a>)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'f5028395-9571-46b2-a1ae-dc08d990f4cf', CAST(0x0000A43100F2FFFB AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-01-31T14:44:43" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'81849fa3-4028-4800-9c88-fc39e490ac16', CAST(0x0000A46900E2F892 AS DateTime), N'<Textpage id="1072" parentID="1050" level="2" creatorID="0" sortOrder="2" createDate="2015-01-25T18:38:11" updateDate="2015-03-28T13:46:22" nodeName="Priser" urlName="priser" path="-1,1050,1072" isDoc="" nodeType="1051" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[Priser]]></header>
  <bodyText><![CDATA[<p><span>Priserne er gældende for både Waterballs og Landballs<br /><br /><br /><strong>Op til 9 personer   kr. 2000,-</strong><br /><br /><strong>Op til 20 personer kr. 2300,-</strong><br /><br /><br />Ved flere end 20 deltagere kommer et tillæg på kr. 100,-  pr. person.<br />Priserne er gældende når I benytter vores faste opsætningssteder i København og Odense (se <a href="/{localLink:1064}" target="_parent" title="Lokationer">her</a>)<br /><br />Ønsker I at vi kommer og holder arrangementet et sted nær jer, kan der forekomme kørselstillæg.<br />Yderligere har vi nogle krav til disse steder valgt af jer (se her)<br /><br />Husk at læse vores betingelser</span></p>
<p> </p>
<p> </p>
<p> </p>
<p><span>Ønsker du at booke os til større events som f.eks festivaller, byfester og lign. Har vi også bassiner<br />til rådighed.</span></p>
<p><span>Vores Bassiner er uden egne reklamer, så vi kan derfor let iføre os jeres påklædning/t-shirts,  hvis I<br />vil skabe opmærksomhed omkring jeres eget brand.<br /></span></p>
<p><span>Eventet kan skræddersys efter dine behov, og vi vil derfor udarbejde tilbud efter det. Ring til os<br />og hør nærmere.</span></p>
<p><span><img style="width: 631px; height: 202px; display: block; margin-left: auto; margin-right: auto;" src="/media/1013/picture2.jpg?width=631px&amp;height=202px" alt="undefined" rel="1102" /></span></p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'd5efb947-ef3d-49eb-9589-0cb09ddfed83', CAST(0x0000A43100DF4751 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-01-31T13:32:55" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p>Kontaktside brødtekst</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[kontakt@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'9f5f0cc9-8539-4715-ac4a-23405efb259a', CAST(0x0000A43100DEF52C AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-01-31T13:31:45" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p>Kontaktside brødtekst</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[kontakt@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message# </p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'ba2530bf-1b7b-4c79-ad46-527a6e821bd2', CAST(0x0000A43100CF02F3 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-01-31T12:33:42" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p>Kontaktside brødtekst</p>]]></bodyText>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'53d5354f-13e3-491f-984e-6f5a4c13fad9', CAST(0x0000A46900EE1AFB AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-03-28T14:26:54" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <seoTitle><![CDATA[Waterevents - Kontakt]]></seoTitle>
  <seoDescription><![CDATA[Kontakt os i dag hvis du vil booke eller har spørgsmål]]></seoDescription>
  <header><![CDATA[Kontakt]]></header>
  <bodyText><![CDATA[<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden.</p>
<p>Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt. - <strong>OBS. Svartid på e-mail henvendelser kan være længere end kontakt formularen</strong></p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[leif@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'27293c28-5b12-4adf-8200-7b0474dec417', CAST(0x0000A43800F5AE67 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-02-07T14:54:29" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[leif@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'ec5e385b-999e-457e-b9e8-80f9c45a6d48', CAST(0x0000A43100D4B930 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-01-31T12:54:29" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p>Kontaktside brødtekst</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[kontakt@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location#</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message# </p>]]></emailTemplate>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'3a0ec796-767d-4254-b47a-82c747930e29', CAST(0x0000A46900E515F6 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-03-28T13:54:04" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontakt]]></header>
  <bodyText><![CDATA[<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden.</p>
<p>Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt. - <strong>OBS. Svartid på e-mail henvendelser kan være længere end kontakt formularen</strong></p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[leif@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'8ca5952d-9c52-4883-938d-9bea31d28324', CAST(0x0000A46900E507AE AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-03-28T13:53:52" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontakt]]></header>
  <bodyText><![CDATA[<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden.</p>
<p>Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt. - <strong>OBS. Svartid på e-mail henvendelser kan være længere end kontakt formularen</strong></p>
<p> </p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[leif@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'bcf88e53-e35b-4709-84ea-dd81f032e5e5', CAST(0x0000A43100DD9632 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-01-31T13:26:46" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p>Kontaktside brødtekst</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[kontakt@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location#</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message# </p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'fdb60d7d-98b5-4512-a0cf-eba17f5a1e6f', CAST(0x0000A46900E49855 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-03-28T13:52:17" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontakt]]></header>
  <bodyText><![CDATA[<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="http://waterevents.dk/faq" title="Faq">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden. (Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt)</p>
<p> </p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[leif@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'2db709ea-f90f-4a0e-b4ad-ed28aea8ee61', CAST(0x0000A43100D30A31 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-01-31T12:48:22" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p>Kontaktside brødtekst</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[kontakt@waterevents.dk]]></to>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'f8809478-f5c9-4bda-a659-f5309be18ad3', CAST(0x0000A43100F30C25 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-01-31T14:44:54" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontaktside overskrift]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[kontakt@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'4dff516b-6199-4795-8a3a-f5c8a0366a71', CAST(0x0000A46900E4C401 AS DateTime), N'<Contactpage id="1080" parentID="1050" level="2" creatorID="0" sortOrder="4" createDate="2015-01-31T10:30:54" updateDate="2015-03-28T13:52:54" nodeName="Kontakt" urlName="kontakt" path="-1,1050,1080" isDoc="" nodeType="1079" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="1081" nodeTypeAlias="Contactpage">
  <header><![CDATA[Kontakt]]></header>
  <bodyText><![CDATA[<p>Har du spørgsmål vedrørende det praktiske omkring et arrangement, kan du med fordel se vores spørgsmål og svar -sektion <a href="/{localLink:1060}" title="Spørgsmål og svar">her</a>.<br />Har du yderligere ubesvarede spørgsmål beder vi dig at rette telefonisk henvendelse.</p>
<p>Ønsker du at reservere et arrangement skal du benytte kontakt formularen for neden. (Hvis du i stedet ønsker at skrive en mail, oplys da venligst så meget info om forespørgslen som muligt)</p>
<p> </p>
<p><strong>Tlf: 22 26 84 68</strong></p>
<p>I hverdage træffes vi bedst i tidsrummet 18-22</p>]]></bodyText>
  <from><![CDATA[kontakt@waterevents.dk]]></from>
  <to><![CDATA[leif@waterevents.dk]]></to>
  <thanks><![CDATA[Tak for din henvendelse. Vi har sendt dig en bekræftelsesmail. Hvis du ikke modtager den, så tjek venligst om du har skrevet din e-mail korrekt.]]></thanks>
  <emailTemplate><![CDATA[<p>Hej ##name##</p>
<p>Tak for henvendelsen via formularen på waterevents.dk.</p>
<p>Vi vender tilbage snarest muligt.</p>
<p> </p>
<p>Her er de indtastede oplysninger. Check venligst at de er korrekte:</p>
<p> </p>
<p>Navn: ##name##</p>
<p>Email: ##email##</p>
<p>Telefon: ##phone##</p>
<p>Adresse: ##address##</p>
<p>Postnummer/By: ##postalcity##</p>
<p>Event type(r): ##typewaterballs## ##typelandballs##</p>
<p>Antal deltagere: ##participants##</p>
<p>Lokation/sted: ##location##</p>
<p>Dag: ##dateday##</p>
<p>Tidspunkt: ##datehour##</p>
<p> </p>
<p>Besked:</p>
<p>##message##</p>]]></emailTemplate>
  <subject><![CDATA[Waterevents.dk kontaktformular bekræftelse test]]></subject>
</Contactpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'1bdfd36c-faf9-424b-9427-0039bc03c249', CAST(0x0000A46900EEA09C AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-03-28T14:28:48" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat” Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>]]></bodyText>
  <image>1091</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'dca05b06-ecac-4b1b-a97f-01a05de00cee', CAST(0x0000A43800F269F0 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-02-07T14:42:36" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
  <image>1084</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'813ed90a-931d-4f9a-ad75-2af7bc5c03be', CAST(0x0000A43800FBE4C4 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-02-07T15:17:06" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme<br />ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/lokationer/">her</a></span></p>]]></bodyText>
  <image>1084</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'46a763ea-7f34-44b7-b5b6-64839b745799', CAST(0x0000A43800F25F93 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-02-07T14:42:27" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs test]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
  <image>1084</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'1e3fb059-bc80-44d9-8cbb-660707d7f705', CAST(0x0000A43800FD1587 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-02-07T15:21:26" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme<br />ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/lokationer/">her</a></span></p>]]></bodyText>
  <image>1091</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'f9b54923-6e14-4e64-a838-6fe6a78326d3', CAST(0x0000A46900E25C09 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-03-28T13:44:08" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme<br />ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>]]></bodyText>
  <image>1091</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'ab0c93ee-7f4d-4ba7-8a9b-7afa3b6fd531', CAST(0x0000A43100E96770 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="2" createDate="2015-01-31T14:05:03" updateDate="2015-01-31T14:09:47" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
  <image>1084</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'd82dd954-062c-437f-9a50-b177c987cecf', CAST(0x0000A46900EE9398 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-03-28T14:28:37" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat” Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>]]></bodyText>
  <image>1091</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'b1e1f0da-dd8d-4529-8989-d8e4851c2e54', CAST(0x0000A43800B66A08 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-02-07T11:04:08" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
  <image>1084</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'bb557538-0807-4bad-ad47-e308fb2a30a2', CAST(0x0000A46900EE4F0A AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-03-28T14:27:39" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende<br />morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende<br />har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>]]></bodyText>
  <image>1091</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'61bcf9b7-935f-4869-a7d2-fbee68cf4a43', CAST(0x0000A46900EE65C7 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="0" createDate="2015-01-31T14:05:03" updateDate="2015-03-28T14:27:58" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Waterballs]]></header>
  <bodyText><![CDATA[<p><span>Walking waterballs er vores mest populære arrangement.<br />Vi medbringer 2 bolde, så dig og dine venner/kollegaer alle sammen kan komme ud i boldene på skift.<br /><br />Her konkurrerer I om hvem der kan tage flest skridt. Selve oplevelsen er hylende morsom for både deltagere og tilskuere, og for at gøre det endnu mere spændende har vi en hemmelig præmie til vinderen!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket tæt, inden i bliver “søsat”<br />Sikkerhed er vores første prioritet. Boldene er altid i kontakt med vores<br />veluddannede instruktører på land med en sikkerhedsline, og yderligere godkendt<br />og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br />Det er et krav, at deltagere har strømper/sokker på inde i boldene, så det er alt man<br />skal huske ved deltagelse.<br /><br />Vi afholder arrangementer i hele landet, men I kan med fordel booke os til et af de<br />faste steder vi har aftaler med. Se mere <a href="/{localLink:1064}" title="Lokationer">her</a></span></p>]]></bodyText>
  <image>1091</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'f0930ef3-a366-4de1-9a4d-ff214fdf4b02', CAST(0x0000A43100E92553 AS DateTime), N'<Event id="1082" parentID="1054" level="3" creatorID="0" sortOrder="2" createDate="2015-01-31T14:05:03" updateDate="2015-01-31T14:08:51" nodeName="Waterballs" urlName="waterballs" path="-1,1050,1054,1082" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <image>1084</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'4602c075-68d8-4419-b680-00442490f4bf', CAST(0x0000A43800FD8E7D AS DateTime), N'<Event id="1085" parentID="1054" level="3" creatorID="0" sortOrder="1" createDate="2015-01-31T14:10:19" updateDate="2015-02-07T15:23:10" nodeName="Landballs" urlName="landballs" path="-1,1050,1054,1085" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Landballs]]></header>
  <bodyText><![CDATA[<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til<br />dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen,<br />i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen<br />og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som<br />får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende<br />lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>]]></bodyText>
  <image>1090</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'62fad2cc-0351-46c0-85b4-3254359cf988', CAST(0x0000A46900EEF019 AS DateTime), N'<Event id="1085" parentID="1054" level="3" creatorID="0" sortOrder="1" createDate="2015-01-31T14:10:19" updateDate="2015-03-28T14:29:56" nodeName="Landballs" urlName="landballs" path="-1,1050,1054,1085" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Landballs]]></header>
  <bodyText><![CDATA[<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen, i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>]]></bodyText>
  <image>1090</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'993b18c1-5c5d-4356-8fb6-8991c2bf24e8', CAST(0x0000A43800B66A0D AS DateTime), N'<Event id="1085" parentID="1054" level="3" creatorID="0" sortOrder="1" createDate="2015-01-31T14:10:19" updateDate="2015-02-07T11:04:08" nodeName="Landballs" urlName="landballs" path="-1,1050,1054,1085" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Landballs]]></header>
  <bodyText><![CDATA[<p><span>Bacon ipsum dolor amet shankle swine kevin pork chop beef ribs jowl shoulder brisket hamburger leberkas. Short loin pork kevin, sirloin spare ribs shankle alcatra sausage meatball cow jowl tongue venison. Pancetta pork loin picanha turducken fatback pork capicola tenderloin brisket. Flank jowl salami pork biltong shankle bresaola alcatra spare ribs pork belly tenderloin cow capicola. Pig landjaeger boudin sausage, tri-tip ham hock ball tip.</span></p>]]></bodyText>
</Event>')
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'aba5de8d-9997-4933-8670-9b7a48d7f254', CAST(0x0000A46900EEDA8C AS DateTime), N'<Event id="1085" parentID="1054" level="3" creatorID="0" sortOrder="1" createDate="2015-01-31T14:10:19" updateDate="2015-03-28T14:29:38" nodeName="Landballs" urlName="landballs" path="-1,1050,1054,1085" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Landballs]]></header>
  <bodyText><![CDATA[<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen, i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende<br />lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>]]></bodyText>
  <image>1090</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'c11a55bb-3576-4da8-9409-c3fa5bac65a9', CAST(0x0000A46900EF0674 AS DateTime), N'<Event id="1085" parentID="1054" level="3" creatorID="0" sortOrder="1" createDate="2015-01-31T14:10:19" updateDate="2015-03-28T14:30:15" nodeName="Landballs" urlName="landballs" path="-1,1050,1054,1085" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Landballs]]></header>
  <bodyText><![CDATA[<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen, i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave eller et grønt område at holde arrangementet på.</span></p>]]></bodyText>
  <image>1090</image>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'64180037-ef93-4597-8bb7-ff5ce42d4873', CAST(0x0000A43800FCD0A0 AS DateTime), N'<Event id="1085" parentID="1054" level="3" creatorID="0" sortOrder="1" createDate="2015-01-31T14:10:19" updateDate="2015-02-07T15:20:28" nodeName="Landballs" urlName="landballs" path="-1,1050,1054,1085" isDoc="" nodeType="1056" creatorName="Mads Tjørnfelt" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Event">
  <header><![CDATA[Landballs]]></header>
  <bodyText><![CDATA[<p><span>Efter stor efterspørgsel tilbyder vi nu Landballs.<br />Boldene er de samme som dem vi bruger på vand, men denne variant egner sig til<br />dem, der enten ikke bryder sig om vand, eller ønsker mere “fart over feltet”<br /><br />Vi har to bolde med til arrangementet, hvor I kommer til at løbe to ad gangen,<br />i hver sin bold på en forudbestemt bane.<br />Den hurtigste (eller den der får skubbet modstanderen ud af banen) vinder omgangen<br />og går videre. Feltet skæres så hele tiden ned, til der til sidst kan kåres en vinder, som<br />får den hemmelige præmie!<br /><br />Et normalt arrangement tager ca. en time hvor alle når at få en tur.<br />Boldene bliver blæst op med helt almindeligt luft og lukket, inden løbets start.<br /><br />Sikkerhed er vores første prioritet. Boldene er godkendt og forsikrede iht. gældende<br />lovgivning og egne interne sikkerhedskrav.<br /><br />Vi afholder arrangementer i hele landet. Det eneste der kræves er en stor baghave<br />eller et grønt område at holde arrangementet på.</span></p>]]></bodyText>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1086, N'a45b15b2-bd05-49a2-a8cf-99b44bca782e', CAST(0x0000A43100F0F1F1 AS DateTime), N'<LocationsRegion id="1086" parentID="1064" level="3" creatorID="0" sortOrder="2" createDate="2015-01-31T14:37:15" updateDate="2015-01-31T14:37:15" nodeName="Jylland" urlName="jylland" path="-1,1050,1064,1086" isDoc="" nodeType="1062" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="LocationsRegion" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1087, N'690ef71b-cc0e-4b9e-9029-06c98ab1f768', CAST(0x0000A43800F2C53C AS DateTime), N'<Textpage id="1087" parentID="1054" level="3" creatorID="1" sortOrder="4" createDate="2015-02-07T14:43:53" updateDate="2015-02-07T14:43:53" nodeName="spaceballs" urlName="spaceballs" path="-1,1050,1054,1087" isDoc="" nodeType="1051" creatorName="Michael" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[spaceballs]]></header>
  <bodyText><![CDATA[<p>flyv i rummet!</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1088, N'0d71a3ad-1079-4fa3-9253-6594e9c8bd6f', CAST(0x0000A43800F3A141 AS DateTime), N'<Event id="1088" parentID="1054" level="3" creatorID="1" sortOrder="4" createDate="2015-02-07T14:47:01" updateDate="2015-02-07T14:47:01" nodeName="spaceballs" urlName="spaceballs" path="-1,1050,1054,1088" isDoc="" nodeType="1056" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Event">
  <header><![CDATA[spaceballs]]></header>
  <bodyText><![CDATA[<p>gå i rummet :)</p>]]></bodyText>
</Event>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1093, N'78b6879c-68cc-48ef-9f6d-18942667422f', CAST(0x0000A43801003F7B AS DateTime), N'<Textpage id="1093" parentID="1054" level="3" creatorID="1" sortOrder="4" createDate="2015-02-07T15:30:33" updateDate="2015-02-07T15:32:58" nodeName="Priser" urlName="priser" path="-1,1050,1054,1093" isDoc="" nodeType="1051" creatorName="Michael" writerName="Michael" writerID="1" template="1052" nodeTypeAlias="Textpage">
  <header><![CDATA[priser]]></header>
  <bodyText><![CDATA[<p>linke til siden "priser"</p>]]></bodyText>
</Textpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1096, N'3e558c5e-1821-4b3f-b573-9e510aa2e290', CAST(0x0000A438010A4DC3 AS DateTime), N'<Location id="1096" parentID="1086" level="4" creatorID="1" sortOrder="0" createDate="2015-02-07T16:09:34" updateDate="2015-02-07T16:09:34" nodeName="vejle" urlName="vejle" path="-1,1050,1064,1086,1096" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Vejle Kajakklub, Ibæk Strandvej 21A,
7100 Vejle]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Vejle+Kajakklub/@55.708211,9.555582,17z/data=!3m1!4b1!4m2!3m1!1s0x464c83afce4462f7:0x5cb5f3500ff9f521]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1097, N'4b5f7da8-9c9e-46f5-b955-074cc90d942e', CAST(0x0000A438010BB1F1 AS DateTime), N'<Location id="1097" parentID="1086" level="4" creatorID="1" sortOrder="1" createDate="2015-02-07T16:14:38" updateDate="2015-02-07T16:14:38" nodeName="Kolding" urlName="kolding" path="-1,1050,1064,1086,1097" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Kolding KajakKlub, Trindholmsgade 20,
6000 Kolding]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps?hl=da&cp=31&gs_id=2&xhr=t&qscrl=1&nord=1&rlz=1T4GGLL_daDK393DK393&gs_upl&bav=on.2,or.r_gc.r_pw.,cf.osb&ion=1&biw=1680&bih=933&wrapid=tljp132959906032802&q=Trindholmsgade+20,+6000+Kolding&um=1&ie=UTF-8&hq&hnear=0x464c9f65b13353e7:0xe3c020efa6b789e9,Trindholmsgade+20,+6000+Kolding&gl=dk&ei=URJAT-LBEsrEtAbktf3jBA&sa=X&oi=geocode_result&ct=image&resnum=1&sqi=2&ved=0CB8Q8gEwAA]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1098, N'057bb192-0446-445e-b250-ce0a52c182a3', CAST(0x0000A438010EA9D5 AS DateTime), N'<Location id="1098" parentID="1086" level="4" creatorID="1" sortOrder="2" createDate="2015-02-07T16:15:30" updateDate="2015-02-07T16:25:27" nodeName="Århus C" urlName="århus-c" path="-1,1050,1064,1086,1098" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Universitetsparken, Wilhelm Meyers Allé 210,
8000 Århus C]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Wilhelm+Meyers+Alle,+8000+Aarhus+C/@56.1670588,10.2048241,17z/data=!3m1!4b1!4m2!3m1!1s0x464c3fbf3f75d091:0xac89005f4ed164c8?hl=da]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1099, N'8cf89da8-f840-4cbd-b3bb-c47c3f6b6dba', CAST(0x0000A438010DE280 AS DateTime), N'<Location id="1099" parentID="1086" level="4" creatorID="1" sortOrder="3" createDate="2015-02-07T16:22:37" updateDate="2015-02-07T16:22:37" nodeName="Oddervej" urlName="oddervej" path="-1,1050,1064,1086,1099" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Oddervej, 8660 Skanderborg
(100 meter nord for Oddervej 24)]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Oddervej+24,+8660+Skanderborg/@56.040295,9.941939,609m/data=!3m1!1e3!4m2!3m1!1s0x464c6eefce025ebb:0x2045dd9791df3e33]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1100, N'9f32767b-11e5-4fe9-b1d2-dcb64b88b7f2', CAST(0x0000A438010E2C71 AS DateTime), N'<Location id="1100" parentID="1086" level="4" creatorID="1" sortOrder="4" createDate="2015-02-07T16:23:40" updateDate="2015-02-07T16:23:40" nodeName="Horsens" urlName="horsens" path="-1,1050,1064,1086,1100" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Lovbyvej 35, 8700 Horsens]]></address>
  <googleMapsLink><![CDATA[https://www.google.dk/maps/place/Lovbyvej+35,+8700+Horsens/@55.871262,9.8187339,17z/data=!3m1!4b1!4m2!3m1!1s0x464c633b983339c1:0x25a74d58e9057c63?hl=da]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1101, N'7917db90-4af2-478e-aad2-2409b5051da8', CAST(0x0000A438010E5554 AS DateTime), N'<Location id="1101" parentID="1086" level="4" creatorID="1" sortOrder="5" createDate="2015-02-07T16:24:08" updateDate="2015-02-07T16:24:15" nodeName="Silkeborg" urlName="silkeborg" path="-1,1050,1064,1086,1101" isDoc="" nodeType="1063" creatorName="Michael" writerName="Michael" writerID="1" template="0" nodeTypeAlias="Location">
  <address><![CDATA[Østre Søbad, Horsensvej 2, 8600 Silkeborg]]></address>
  <googleMapsLink><![CDATA[Østre Søbad, Horsensvej 2, 8600 Silkeborg]]></googleMapsLink>
</Location>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1104, N'a00f6af4-08b1-4db3-8b49-8a309514cf0d', CAST(0x0000A46900DEDFD9 AS DateTime), N'<Link id="1104" parentID="1054" level="3" creatorID="0" sortOrder="4" createDate="2015-03-28T13:30:32" updateDate="2015-03-28T13:31:27" nodeName="Priser" urlName="priser" path="-1,1050,1054,1104" isDoc="" nodeType="1103" creatorName="Mads Tjørnfelt" writerName="Mads Tjørnfelt" writerID="0" template="0" nodeTypeAlias="Link">
  <internalLink>1072</internalLink>
</Link>')
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 04/02/2015 10:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_cmsContentType_thumbnail]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
/****** Object:  Default [DF_cmsContentType_isContainer]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
/****** Object:  Default [DF_cmsContentType_allowAtRoot]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
/****** Object:  Default [df_cmsContentTypeAllowedContentType_sortOrder]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
/****** Object:  Default [DF_cmsContentVersion_VersionDate]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentVersion] ADD  CONSTRAINT [DF_cmsContentVersion_VersionDate]  DEFAULT (getdate()) FOR [VersionDate]
GO
/****** Object:  Default [DF_cmsDocument_updateDate]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
/****** Object:  Default [DF_cmsDocument_newest]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_newest]  DEFAULT ('0') FOR [newest]
GO
/****** Object:  Default [DF_cmsDocumentType_IsDefault]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
/****** Object:  Default [DF_cmsMacro_macroUseInEditor]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
/****** Object:  Default [DF_cmsMacro_macroRefreshRate]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
/****** Object:  Default [DF_cmsMacro_macroCacheByPage]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
/****** Object:  Default [DF_cmsMacro_macroCachePersonalized]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
/****** Object:  Default [DF_cmsMacro_macroDontRender]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
/****** Object:  Default [DF_cmsMacroProperty_macroPropertySortOrder]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
/****** Object:  Default [DF_cmsMember_Email]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
/****** Object:  Default [DF_cmsMember_LoginName]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
/****** Object:  Default [DF_cmsMember_Password]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
/****** Object:  Default [DF_cmsMemberType_memberCanEdit]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
/****** Object:  Default [DF_cmsMemberType_viewOnProfile]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
/****** Object:  Default [DF_cmsPropertyType_sortOrder]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
/****** Object:  Default [DF_cmsPropertyType_mandatory]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
/****** Object:  Default [DF_cmsTask_closed]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_closed]  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF_cmsTask_DateTime]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_DateTime]  DEFAULT (getdate()) FOR [DateTime]
GO
/****** Object:  Default [DF_umbracoLog_Datestamp]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
/****** Object:  Default [DF_umbracoNode_trashed]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
/****** Object:  Default [DF_umbracoNode_createDate]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_umbracoRelation_datetime]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
/****** Object:  Default [DF_umbracoServer_registeredDate]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
/****** Object:  Default [DF_umbracoUser_userDisabled]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
/****** Object:  Default [DF_umbracoUser_userNoConsole]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
/****** Object:  ForeignKey [FK_cmsContent_cmsContentType_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_cmsContentType_nodeId] FOREIGN KEY([contentType])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsContent_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsContentType_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsContentType2ContentType_umbracoNode_child]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
/****** Object:  ForeignKey [FK_cmsContentType2ContentType_umbracoNode_parent]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType1]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
/****** Object:  ForeignKey [FK_cmsContentVersion_cmsContent_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentVersion] CHECK CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsContentXml_cmsContent_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsContentXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentXml] CHECK CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDataType_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDataType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDataType] CHECK CONSTRAINT [FK_cmsDataType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsDataTypePreValues_cmsDataType_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDataTypePreValues]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId] FOREIGN KEY([datatypeNodeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] CHECK CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsContent_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsTemplate_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsContentType_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsTemplate_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsLanguageText_cmsDictionary_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
/****** Object:  ForeignKey [FK_cmsMacroProperty_cmsMacro_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
/****** Object:  ForeignKey [FK_cmsMember_cmsContent_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMember_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_cmsMember_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_cmsContentType_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContent_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContentVersion_VersionId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[cmsContentVersion] ([VersionId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_cmsPropertyType_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id] FOREIGN KEY([propertytypeid])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_umbracoNode_id] FOREIGN KEY([contentNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsContentType_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsDataType_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsPropertyTypeGroup_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id] FOREIGN KEY([parentGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id]
GO
/****** Object:  ForeignKey [FK_cmsStylesheet_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsStylesheet]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheet_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsStylesheet] CHECK CONSTRAINT [FK_cmsStylesheet_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_cmsContent]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_cmsPropertyType]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_cmsTags_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
/****** Object:  ForeignKey [FK_cmsTags_cmsTags]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_cmsTags] FOREIGN KEY([ParentId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_cmsTags]
GO
/****** Object:  ForeignKey [FK_cmsTask_cmsTaskType_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_cmsTaskType_id] FOREIGN KEY([taskTypeId])
REFERENCES [dbo].[cmsTaskType] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_cmsTaskType_id]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser1]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser1]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_cmsTemplate]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_cmsTemplate] FOREIGN KEY([master])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_cmsTemplate]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_umbracoNode]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoDomains_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoDomains]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomains_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomains] CHECK CONSTRAINT [FK_umbracoDomains_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoNode_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode1]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoRelationType_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser_umbracoUserType_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser_umbracoUserType_id] FOREIGN KEY([userType])
REFERENCES [dbo].[umbracoUserType] ([id])
GO
ALTER TABLE [dbo].[umbracoUser] CHECK CONSTRAINT [FK_umbracoUser_umbracoUserType_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2app_umbracoUser_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoUser_id] FOREIGN KEY([user])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoUser_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoUser_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoNode_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoUser_id]    Script Date: 04/02/2015 10:31:52 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id]
GO

/****** Object:  Table [dbo].[UTOrder]    Script Date: 12/16/2022 10:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderAggregationRef] [nvarchar](50) NULL,
	[OrderType] [nvarchar](50) NOT NULL,
	[OrderStatus] [nvarchar](50) NULL,
	[SubmitDate] [datetime] NOT NULL,
	[Amount] [decimal](18, 4) NULL,
	[Unit] [decimal](18, 4) NULL,
	[FundId] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[PriceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UTOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)ON [PRIMARY]
) 
GO
/****** Object:  Table [dbo].[UTOrderAggregate]    Script Date: 12/16/2022 10:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTOrderAggregate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderAggregationRef] [nvarchar](50) NULL,
	[OrderType] [nvarchar](50) NOT NULL,
	[Count] [int] NOT NULL,
	[SubmitDate] [datetime] NOT NULL,
	[Amount] [decimal](18, 4) NULL,
	[Unit] [decimal](18, 4) NULL,
	[Status] [nvarchar](50) NOT NULL,
	[FundId] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[PriceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UTOrderAggregate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
)
GO
SET IDENTITY_INSERT [dbo].[UTOrder] ON 

INSERT [dbo].[UTOrder] ([Id], [OrderAggregationRef], [OrderType], [OrderStatus], [SubmitDate], [Amount], [Unit], [FundId], [Price], [PriceDate]) VALUES (1, NULL, N'SB', N'', CAST(N'2022-12-19T13:00:00.000' AS DateTime), CAST(100.0000 AS Decimal(18, 4)), NULL, N'FundA', CAST(1.0000 AS Decimal(18, 4)), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[UTOrder] ([Id], [OrderAggregationRef], [OrderType], [OrderStatus], [SubmitDate], [Amount], [Unit], [FundId], [Price], [PriceDate]) VALUES (2, NULL, N'SB', N'', CAST(N'2022-12-19T11:00:00.000' AS DateTime), CAST(300.0000 AS Decimal(18, 4)), NULL, N'FundA', CAST(1.0000 AS Decimal(18, 4)), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[UTOrder] ([Id], [OrderAggregationRef], [OrderType], [OrderStatus], [SubmitDate], [Amount], [Unit], [FundId], [Price], [PriceDate]) VALUES (3, NULL, N'SB', N'', CAST(N'2022-12-19T11:00:00.000' AS DateTime), CAST(100.0000 AS Decimal(18, 4)), NULL, N'FundB', CAST(1.0000 AS Decimal(18, 4)), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[UTOrder] ([Id], [OrderAggregationRef], [OrderType], [OrderStatus], [SubmitDate], [Amount], [Unit], [FundId], [Price], [PriceDate]) VALUES (4, NULL, N'RD', N'', CAST(N'2022-12-19T13:00:00.000' AS DateTime), NULL, CAST(10.0000 AS Decimal(18, 4)), N'FundB', CAST(1.0000 AS Decimal(18, 4)), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[UTOrder] ([Id], [OrderAggregationRef], [OrderType], [OrderStatus], [SubmitDate], [Amount], [Unit], [FundId], [Price], [PriceDate]) VALUES (5, NULL, N'RD', N'', CAST(N'2022-12-19T13:00:00.000' AS DateTime), NULL, CAST(20.0000 AS Decimal(18, 4)), N'FundB', CAST(1.0000 AS Decimal(18, 4)), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[UTOrder] ([Id], [OrderAggregationRef], [OrderType], [OrderStatus], [SubmitDate], [Amount], [Unit], [FundId], [Price], [PriceDate]) VALUES (6, NULL, N'RD', N'Pending Settlement', CAST(N'2022-12-19T13:00:00.000' AS DateTime), NULL, CAST(50.0000 AS Decimal(18, 4)), N'FundB', CAST(1.0000 AS Decimal(18, 4)), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[UTOrder] OFF
GO


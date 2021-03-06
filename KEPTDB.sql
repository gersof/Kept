USE [KEPT_DB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionItems]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionItems](
	[ActionItemId] [bigint] NOT NULL,
	[Description] [varchar](300) NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[PostActionUpdate] [varchar](300) NULL,
	[EmployeeDocumentId] [varchar](30) NOT NULL,
	[Completed] [bit] NOT NULL,
 CONSTRAINT [PK_ActionItems] PRIMARY KEY CLUSTERED 
(
	[ActionItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[Description] [varchar](300) NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssessmentTestQuestions]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentTestQuestions](
	[QuestionId] [bigint] IDENTITY(1,1) NOT NULL,
	[QuestionText] [varchar](500) NOT NULL,
	[CAndPId] [bigint] NOT NULL,
 CONSTRAINT [PK_AssessmentTestQuestions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssessmentTestResults]    Script Date: 04/09/2018 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentTestResults](
	[AssessmentId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompletedDate] [datetime] NOT NULL,
	[QuestionId] [bigint] NOT NULL,
	[Score] [real] NOT NULL,
	[EmployeeDocumentId] [varchar](30) NOT NULL,
	[SelfScore] [real] NOT NULL,
	[SelfComments] [varchar](300) NULL,
 CONSTRAINT [PK_AssessmentTestResults] PRIMARY KEY CLUSTERED 
(
	[AssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAndPByPP]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAndPByPP](
	[PPId] [bigint] NOT NULL,
	[CoPId] [bigint] NOT NULL,
	[AchievementPorcentage] [int] NOT NULL,
	[AssessmentCompleted] [bit] NOT NULL,
 CONSTRAINT [PK_CAndPByPP] PRIMARY KEY CLUSTERED 
(
	[PPId] ASC,
	[CoPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetencyAndPerformance]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetencyAndPerformance](
	[CAndPId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](300) NOT NULL,
	[IsCompetency] [bit] NOT NULL,
 CONSTRAINT [PK_CompetencyAndPerformance] PRIMARY KEY CLUSTERED 
(
	[CAndPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryUnits]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryUnits](
	[DUId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](100) NOT NULL,
	[Description] [varchar](300) NULL,
 CONSTRAINT [PK_DeliveryUnits] PRIMARY KEY CLUSTERED 
(
	[DUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[DocumentId] [varchar](30) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[DeliveryUnitId] [int] NULL,
	[GradeId] [int] NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[LeadDocumentId] [varchar](30) NULL,
	[PictureURL] [varchar](300) NULL,
	[IsLead] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](300) NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OportunitiesOfImprovement]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OportunitiesOfImprovement](
	[OOIId] [bigint] IDENTITY(1,1) NOT NULL,
	[CAndPId] [bigint] NOT NULL,
	[Description] [varchar](300) NOT NULL,
	[EmployeeDocumentId] [varchar](30) NULL,
 CONSTRAINT [PK_OportunitiesOfImprovement] PRIMARY KEY CLUSTERED 
(
	[OOIId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerformanceProfile]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerformanceProfile](
	[PPId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeDocumentId] [varchar](30) NOT NULL,
	[TeamScore] [int] NULL,
	[ClientScore] [int] NULL,
	[ProjectScore] [int] NULL,
	[CompanyScore] [int] NULL,
 CONSTRAINT [PK_PerformanceProfile] PRIMARY KEY CLUSTERED 
(
	[PPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](300) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillsByPP]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillsByPP](
	[SkillId] [int] NOT NULL,
	[PPId] [bigint] NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_SkillsByPP] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC,
	[PPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strengths]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strengths](
	[StrenghId] [bigint] NOT NULL,
	[CAndPId] [bigint] NOT NULL,
	[Description] [nchar](10) NOT NULL,
	[EmployeeDocumentId] [varchar](30) NULL,
 CONSTRAINT [PK_Strengths] PRIMARY KEY CLUSTERED 
(
	[StrenghId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainnings]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainnings](
	[TrainningId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](300) NOT NULL,
	[Room] [varchar](50) NOT NULL,
	[Hours] [int] NOT NULL,
 CONSTRAINT [PK_Trainnings] PRIMARY KEY CLUSTERED 
(
	[TrainningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainningsByPP]    Script Date: 04/09/2018 10:37:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainningsByPP](
	[TrainningId] [bigint] NOT NULL,
	[PPId] [bigint] NOT NULL,
	[AsistancePorcentage] [real] NULL,
	[Certified] [bit] NULL,
 CONSTRAINT [PK_TrainningsByPP] PRIMARY KEY CLUSTERED 
(
	[TrainningId] ASC,
	[PPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201809031445481_InitialCreate', N'KeptWeb.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE3B612BE3FC079074157E71C64ADFC7417DBC06E913AC93941373F5867B7E76E414BB423AC44A912952628FA64BDE823F5153A942859E28F44D98AED140B2C2C72F8CD70382487C361FEFCFD8FF1F74F61603DE224F52332B18F4687B685891B793E594EEC8C2EDEBCB7BFFFEE9FFF185F78E193F5B9A43B6174D092A413FB81D2F8D47152F70187281D85BE9B4469B4A023370A1DE445CEF1E1E1B7CED1918301C2062CCB1A7FCC08F5439C7FC0E734222E8E698682EBC8C341CACBA16696A35A3728C4698C5C3CB17F04C29FF07C5450DAD659E02390628683856D2142228A28C878FA29C5339A4464398BA10005F7CF3106BA050A52CC653F5D919B76E3F09875C359352CA1DC2CA551D813F0E884EBC5119BAFA55DBBD21B68EE02344C9F59AF73ED4DEC2B0FE7451FA3001420323C9D0609239ED8D7158BB334BEC17454361C15909709C0FD12255F4775C403CBB8DD416547C7A343F6EFC09A6601CD123C2138A3090A0EACBB6C1EF8EE8FF8F93EFA8AC9E4E468BE3879FFF61DF24EDE7D834FDED67B0A7D05BA460114DD25518C13900D2FAAFEDB96D36CE7880DAB66B5368556C096604AD8D6357AFA80C9923EC064397E6F5B97FE13F6CA126E5C9F880F33081AD12483CF9B2C08D03CC055BDD3CA93FDDFC2F5F8EDBB41B8DEA0477F990FBDC01F264E02F3EA230EF2DAF4C18F8BE9D518EF2F9CEC328942F6DDB4AFA2F6CB2CCA12977526D292DCA364896953BAB1B3325E23936650C39B7589BAFFA6CD2495CD5B49CA3AB4CE4C28596C7B3694F2BE2C5F638B3B8B6318BCDCB49846DA0CAEB9518D84960716AF5F99CC91A9C910E8CADF7905BC08911F0CB0041A7001CF63E12721AE7AF943040687486F99EF509AC20AE0FD0FA50F2DA2C3CF01449F61374BC030671485F18B73BB7B8808BEC9C239B3F7EDF11A6C68EE7F892E914BA3E482B0561BE37D88DCAF51462F88778E28FE44DD12907DDEFBA139C020E29CB92E4ED34B3066EC4D2370AC4BC02B424F8E7BC3B1C569D72EC834407EA8F6418465F44B49BAF243D414922FA22153F9236DA27E88963E3113B524D58B5A50748ACAC9FA8ACAC0CC24E5947A4173824E390BAAC13CBC7C848677F172D8FDF7F136DBBC756B414D8D335821F17F31C1092C63DE1DA2142764350226EBC62E9C857CF818D317DF9B724E9F51900DCD6AADD9902F02C3CF861C76FF67432E26143FFA1EF34A0C0E3E2531C01BD1ABCF54DD734E906CDBD3A1D1CD6D33DFCE1AA09B2E67691AB97E3E0B14212F1EB068CA0F3E9CD51DBD287A234640A06360E83EDBF2A004FA668B46754BCE718029B6CEDC22243845A98B3C598DD021AF8760E58EAA106C1509690AF71F8927583A4E5823C40E4129CC549F50795AF8C4F56314746A496869B885B1BE573CC49A731C63C218766AC284B93AF0C104A8F80883D2A5A1B153B3B87643D478ADBA31EF726157E32EC523B662931DBEB3C62EB9FFF62286D9AEB12D1867BB4A4C04D006F17661A0FCAC626A00E2C165DF0C543831690C94BB545B31D0A6C67660A04D95BC3A032D8EA8A6E32F9C57F7CD3C9B07E5ED6FEBADEADA816D36F4B167A659F89ED086420B9CC8E6793E6795F8892A0E6720273F9FA5DCD5154D8481CF306D866C56FEAED20F75DA4144236A035C195A0728BFFE9380A409D543B83296D72A1DF7227AC09671B75658BEF60BB0351B90B1EBD7A03542FD65A9689C46A78FAA67953548466E7458A8E1280C425CBC9A1D37508A2E2E2B2BC6C417EEE30DD73AC607A345411D9EAB4649656706D752699ADD5A5239647D5CB28DB424B84F1A2D959D195C4BDC46BB95A4700A7AB8051BA9A8B9850F34D9CA4847B5DB547563A7C88CE2056347934235BE4671EC93652DA58A9758B3229F6AFA66D63FD9282C301C3755E41C55D2569C6894A025166A8135487AE927293D4714CD118BF34CBD502253EEAD9AE5BF6459DF3EE5412CF781929AFD2E5A0897F68D7D56764478FB4BE85DC8BC993C84AE187B75738BA5B7A100258AA8FD340AB290E89D2B7DEBE2EEAEDEBE289111C68E20BFE43C499A925CDCA6DA8D06459E10030C50E5B7AC3F487A089DAA4BAFB3AE6C9D27AA4729035375145DB06A6783A673608C074AF40BFB8F5327C2CBCC279E8C5207E0453D316AF90C1258ADCE1CB5997252C76CD698230A79257548A1AA8794F5EC918690F58AB5F0341A5553987390F345EAE872AD39B22273A40EADA85E035B21B358678EAA482EA9032BAACDB1579926E202BAC73B96F6B4B2D696551C6637DBB334182FB31A0EB3E5D5EEECEB40B5E29E58FC565E02E3E57B6949DA13DD5A9654C42F36B3240D867EC569DC7437179CD6EB793D66E3FABAB1A8B75DDFEBF1FAD9EB8B5A85749813492AEED5A14E38BC8DF941AAFB918C74B22A486CAB54236CE8CF29C5E188118C663F07D3C0C76CF92E09AE11F11738A545CA867D7C78742CBCB5D99F772F4E9A7A81E220AA7BFCD21CB32D645F914794B80F2891732136781BB20295C2CC57C4C34F13FBD7BCD5691EB160BFF2E203EB2AFD44FC9F33A8B84F326CFD26E7760E932B6FF03AA312F4B757F1ECC15CE557FFFF52343DB06E13984EA7D6A1A0E87586BFF918A2973445D30DA459FB89C4EB9D6D8D77084A5461B6ACFFEC60EED3419E1C9452FE2B444FFFEE2B9AF259C146888AA70343E10DA242DDD38075B0B4CF023CF8A4F9B3807E9D553F13584734ED13019FF407131F08982F4365CB1DEE438AC3D23696A45CCF9D09D61B655BEE7A6F92F2B0379AE872AE750FB841F3A93773515E599EF2605BA7220D7930EC5DDAFD8BE71EEF4BBAF1CA69DF6D96F136138B5B2E91FE56F9C47B9001A7C8E8D97DD6F0B66D4D17FDDDF3D4CB7EB9C17B666C7C9BDF7D06F0B68D4D1720DE7363EB95E7BB67B6B6ABFD73C79666BC85EE3C6B574E40D2DCE2A8A2C85D59B945C81D8EFFF3088CA0F0288BC794EA34B0B614D60E862B123D537DFE99C8589A38125F89A29D6DBFBEF20DBFB5B39CA69DAD266BB38D375FFF5B79739A76DE9A5CC85DE4132BB3115539DE1DEB585BCAD46BCA1F6EF4A4235DBDCB676DBD927F4DE9C28328A5317B34B7CBAF273B7810950C39757A6403CB17C5B077D6FEE622ECDFA9BF5C41B0BFC048B0DBD8352B9A2BB288CACD5B90A824112234D798220FB6D4B384FA0BE452A86601E8FC35781ED463D72073EC5D91DB8CC619852EE3701E34025ECC0968E39FA73C37651EDFC6EC2B1DA20B20A6CF02F7B7E487CC0FBC4AEE4B454C4803C1BC0B1EEE65634959D877F95C21DD44C41088ABAF728AEE7118070096DE92197AC4EBC806E6F7012F91FBBC8A00EA40BA07A2A9F6F1B98F96090A538EB16A0F9F60C35EF8F4DD5F355778AF7A540000, N'6.2.0-61023')
INSERT [dbo].[ActionItems] ([ActionItemId], [Description], [DueDate], [PostActionUpdate], [EmployeeDocumentId], [Completed]) VALUES (1, N'Action Item 1', CAST(N'2018-10-10T00:00:00.000' AS DateTime), NULL, N'98664948', 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'85665e5b-59fa-4919-8df1-58ce894ba8d6', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'18648dfb-9667-43df-bb4a-4ef37e72e910', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'216d9068-e4fc-4dfa-ba7b-9ebf2bd9b7ed', N'Lead')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Description]) VALUES (N'62d6647d-1090-4309-9c2d-1c901ad796f1', N'85665e5b-59fa-4919-8df1-58ce894ba8d6', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Description]) VALUES (N'6e671028-335b-43e5-99b8-86df59fea37f', N'18648dfb-9667-43df-bb4a-4ef37e72e910', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'35a34984-256c-453d-a448-3a5b3e91d107', N'ballesteroswilliam@gmail.com', 0, N'AEDBPIK2Q1qVQ2IT5fCZf90C7lqAtWVA13MKSb72uMyKOSVwmac7RI7rTa91T6iVxw==', N'8af002a8-b117-4482-be4b-2cc8a0284682', NULL, 0, 0, NULL, 1, 0, N'William Ballesteros Blanco')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'61f4740a-e654-4907-9d7a-eed4434b71e4', N'nivato@msn.com', 0, N'ACfF+LDe/34xAFn2LsL3h0lMU0+YC5BbEl8WKOirwZahY6fF5wqdJFFj1OD7A47pUA==', N'0ea6e89b-c68c-4024-af3e-39ecc347c0c0', NULL, 0, 0, NULL, 1, 0, N'nivato@msn.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'62d6647d-1090-4309-9c2d-1c901ad796f1', N'pepe@gmail.com', 0, N'AF0BOA3H/WyjVZ3JYSHhs3nzmgvYkb1pTQHMfg/SeBzxo5jEK27tj1IpUWRgCxAM3Q==', N'6ba0b11a-d681-40f3-b25f-424522985240', NULL, 0, 0, NULL, 1, 0, N'Pepito Perez')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6e671028-335b-43e5-99b8-86df59fea37f', N'william@live.com', 0, N'AIc0l2iXQT61iGS4yEmRHuHejI7NMs1/eK0hKVC7tMZm1BNgKJYnfC11qWEXSUoxPQ==', N'514b1d3b-d661-4eed-9f82-b32744ac507c', NULL, 0, 0, NULL, 1, 0, N'William Ballesteros ')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8c2bd834-d259-4d37-82fd-99af1164a8dc', N'juan@endava.com', 0, N'AFNYnWtY6SR7il83s2k/391faJOtSnlAAIgShksK76fZ86uhKGO4ufmfb/A+nekzUg==', N'2c76f78a-d955-4349-9610-c27df823b9f3', NULL, 0, 0, NULL, 1, 0, N'juan@endava.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b2d6983c-ff37-4b5d-9399-acf2b9989a34', N'juanita@hotmail.com', 0, N'AEyecz/LX3iVjI3WADDftWrdN2eaXP491znG6v2yPYYFWiv0C7JfkpK5lRclegIVUA==', N'edbe4c12-3036-4cd0-97b0-f103cd498b98', NULL, 0, 0, NULL, 1, 0, N'Juanita O')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b3a32c04-cb76-4b7a-ab51-166425f0cab1', N'diferotorres@gmail.com', 0, N'AEoxFV2NJ6+HQlC5ZYnmRL1nXwy+AlpGl+PoQJa39NoCYYHNKTbuM+LxRvGwitzEJw==', N'5eaaed58-dc93-43e7-8aec-d26cefe4b258', NULL, 0, 0, NULL, 1, 0, N'diferotorres@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b5fb61ea-a8de-48a6-9fa3-8e4a9b36ffc2', N'jangulorama@gmail.com', 0, N'ABiiqL6Mhxg9Am1PYBssf3lPAnuk+rOegHHBg5chrcaOyQOVd3tfJCJml9WplPelqg==', N'69ceb0c4-9f2e-440b-a3ec-11d1c6518b99', NULL, 0, 0, NULL, 1, 0, N'jangulorama@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c6174fce-fa60-4d1a-b078-bfecda659e5f', N'jusanq@hotmail.com', 0, N'AOsODrGQ2c6wvR6U8lQ+FOvjZ01vx8b2GVHYxkXShYuF2zaogJa5qBGn12R2LcDcHw==', N'604695d1-534e-4688-a1fe-0afab82245ea', NULL, 0, 0, NULL, 1, 0, N'jusanq@hotmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd03749b3-2040-4fe2-868b-63a916a55a21', N'aguapanela@gmail.com', 0, N'ADeWsW8uSqC66qoCuhYN0ata3DVeXqN0k2dpNvJVs/mL7DsbczXyX5DT+iV3tmC6Uw==', N'27c0d4bc-e0e4-4d8b-9319-c07739c67c6a', NULL, 0, 0, NULL, 1, 0, N'Aguapanela')
SET IDENTITY_INSERT [dbo].[AssessmentTestQuestions] ON 

INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (1, N'Do you show a deep level of understanding of the client s business and overall activity?', 1)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (2, N'Do you achieve to have a friendly but professional relationship based on trust with your client?', 1)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (3, N'Do you show involvement with regards to the client s business by providing suggestions and new ideas to the team on a regular basis?', 1)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (4, N'Are you considered to be a key team player from the client s perspective?', 1)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (5, N'Do you adapt your actions and work to the needs of the environment and the client s demands?', 2)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (6, N'Are you able to sustain your performance level independently from the project s complexities and/or client s circumstances?', 2)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (7, N'Are you able to come up with and implement alternative actions to ensure objectives will be met accordingly?', 2)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (8, N'Are you able to succeed in (and is open to try) different roles within your team when the context demands it?', 2)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (9, N'Are you able to establish and sustain collaborative relationships, based on cordiality and respect, with your team colleagues?', 3)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (10, N'Do you understand the importance of group interests, versus your own, when it comes to fulfil the objectives that have been set at a team level?', 3)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (11, N'Are you able to overcome the differences with your team colleagues, and establish working agreements contributing with ideas .....', 3)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (12, N'Do you achieve to deliver commended tasks respecting timelines?', 4)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (13, N'Do you show persistent effort to achieve the results expected from you?', 4)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (14, N'Do you show proactivity in the face of adversity to assure that the expected results won t be negatively affected?', 4)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (15, N'Do you show the ability to plan effective actions in line with the project s business model, designed to manage setbacks and risks to assure objectives will be met?', 4)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (16, N'Do you effectively communicate to his team the parameters and objectives by which they will be evaluated, and achieves each time to establish clear and adequate priorities?', 5)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (17, N'Do you provide enough feedback to his team so that they can identify their strengths and opportunities for improvement?', 5)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (18, N'Are you attentive to the engagement and motivation of the people within your team, and performs actions to inspire them and improve satisfaction?', 5)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (19, N'Do you show ability to train your team members so that they can improve their technical performance and advance on the development of soft skills?', 5)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (20, N'Do you show ability to adequately solve interpersonal conflicts and to mediate difficult situations between team members?', 5)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (21, N'Are you considered to be a true a technical referent within the team, both by your team members and the client?', 5)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (22, N'Do you recognize his learning needs and takes measures to bridge the knowledge gap effectively and with agility?', 6)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (23, N'Do you show ability to integrate high complexity concepts autonomously and investigate alternatives successfully in the face of adversity?', 6)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (24, N'Are you open to receiving feedback from others to learn and step further from your difficulties?', 6)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (25, N'Do you share with others your learning resources and favour the exchange of experiences to build knowledge collectively?', 6)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (26, N'Do you show a level of technical knowledge and skill as expected of your seniority?', 7)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (27, N'Do you implement the best design practices and principles possible in your daily tasks?', 7)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (28, N'Do your work/code show good quality standards?', 7)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (29, N'Is your work/code understandable for others to follow?', 7)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (30, N'Do you show a level of knowledge in Agile principles and practices as expected of your seniority?', 8)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (31, N'Do you promote the implementation of the best methodologic principles and practices possible within your team dynamic?', 8)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (32, N'Do you apply them yourself?', 8)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (33, N'Do you orient your efforts towards the continuous improvement of delivery within your team?', 8)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (34, N'Are you able to deliver and comply with accorded timelines as expected of your seniority?', 9)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (35, N'Are you able to prioritize your work accordingly to delivery advancements?', 9)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (36, N'Do you show commitment and responsibility to achieve the goals set for the team?', 9)
INSERT [dbo].[AssessmentTestQuestions] ([QuestionId], [QuestionText], [CAndPId]) VALUES (37, N'Do you achieve to exceed the expected results on a regular basis?', 9)
SET IDENTITY_INSERT [dbo].[AssessmentTestQuestions] OFF
SET IDENTITY_INSERT [dbo].[AssessmentTestResults] ON 

INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (77, CAST(N'2018-09-03T18:14:47.100' AS DateTime), 1, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (78, CAST(N'2018-09-03T18:14:47.773' AS DateTime), 2, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (79, CAST(N'2018-09-03T18:14:48.340' AS DateTime), 3, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (80, CAST(N'2018-09-03T18:14:49.333' AS DateTime), 4, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (81, CAST(N'2018-09-03T18:14:52.727' AS DateTime), 5, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (82, CAST(N'2018-09-03T18:14:53.247' AS DateTime), 6, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (83, CAST(N'2018-09-03T18:14:54.493' AS DateTime), 7, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (84, CAST(N'2018-09-03T18:14:55.030' AS DateTime), 8, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (85, CAST(N'2018-09-03T18:15:00.047' AS DateTime), 9, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (86, CAST(N'2018-09-03T18:15:00.870' AS DateTime), 10, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (87, CAST(N'2018-09-03T18:15:01.543' AS DateTime), 11, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (88, CAST(N'2018-09-03T18:15:05.597' AS DateTime), 12, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (89, CAST(N'2018-09-03T18:15:06.333' AS DateTime), 13, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (90, CAST(N'2018-09-03T18:15:06.957' AS DateTime), 14, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (91, CAST(N'2018-09-03T18:15:07.750' AS DateTime), 15, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (92, CAST(N'2018-09-03T18:15:12.453' AS DateTime), 16, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (93, CAST(N'2018-09-03T18:15:13.047' AS DateTime), 17, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (94, CAST(N'2018-09-03T18:15:14.063' AS DateTime), 18, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (95, CAST(N'2018-09-03T18:15:14.613' AS DateTime), 19, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (96, CAST(N'2018-09-03T18:15:15.327' AS DateTime), 20, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (97, CAST(N'2018-09-03T18:15:16.397' AS DateTime), 21, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (98, CAST(N'2018-09-03T18:15:20.237' AS DateTime), 22, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (99, CAST(N'2018-09-03T18:15:20.997' AS DateTime), 23, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (100, CAST(N'2018-09-03T18:15:21.847' AS DateTime), 24, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (101, CAST(N'2018-09-03T18:15:22.420' AS DateTime), 25, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (102, CAST(N'2018-09-03T18:15:26.327' AS DateTime), 26, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (103, CAST(N'2018-09-03T18:15:26.903' AS DateTime), 27, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (104, CAST(N'2018-09-03T18:15:27.687' AS DateTime), 28, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (105, CAST(N'2018-09-03T18:15:29.077' AS DateTime), 29, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (106, CAST(N'2018-09-03T18:15:35.103' AS DateTime), 30, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (107, CAST(N'2018-09-03T18:15:35.757' AS DateTime), 31, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (108, CAST(N'2018-09-03T18:15:36.420' AS DateTime), 32, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (109, CAST(N'2018-09-03T18:15:37.830' AS DateTime), 33, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (110, CAST(N'2018-09-03T18:15:42.630' AS DateTime), 34, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (111, CAST(N'2018-09-03T18:15:43.197' AS DateTime), 35, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (112, CAST(N'2018-09-03T18:15:43.790' AS DateTime), 36, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (113, CAST(N'2018-09-03T18:15:44.397' AS DateTime), 37, 0, N'526879', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (114, CAST(N'2018-09-03T18:21:55.493' AS DateTime), 1, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (115, CAST(N'2018-09-03T18:21:56.137' AS DateTime), 2, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (116, CAST(N'2018-09-03T18:21:56.787' AS DateTime), 3, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (117, CAST(N'2018-09-03T18:21:57.423' AS DateTime), 4, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (118, CAST(N'2018-09-03T18:22:01.733' AS DateTime), 5, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (119, CAST(N'2018-09-03T18:22:02.437' AS DateTime), 6, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (120, CAST(N'2018-09-03T18:22:03.037' AS DateTime), 7, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (121, CAST(N'2018-09-03T18:22:03.727' AS DateTime), 8, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (122, CAST(N'2018-09-03T18:22:07.813' AS DateTime), 9, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (123, CAST(N'2018-09-03T18:22:08.647' AS DateTime), 10, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (124, CAST(N'2018-09-03T18:22:09.543' AS DateTime), 11, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (125, CAST(N'2018-09-03T18:22:13.133' AS DateTime), 12, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (126, CAST(N'2018-09-03T18:22:13.773' AS DateTime), 13, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (127, CAST(N'2018-09-03T18:22:14.443' AS DateTime), 14, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (128, CAST(N'2018-09-03T18:22:15.757' AS DateTime), 15, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (129, CAST(N'2018-09-03T18:22:59.333' AS DateTime), 16, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (130, CAST(N'2018-09-03T18:23:00.013' AS DateTime), 17, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (131, CAST(N'2018-09-03T18:23:00.630' AS DateTime), 18, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (132, CAST(N'2018-09-03T18:23:02.023' AS DateTime), 19, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (133, CAST(N'2018-09-03T18:23:03.063' AS DateTime), 20, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (134, CAST(N'2018-09-03T18:23:03.903' AS DateTime), 21, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (135, CAST(N'2018-09-03T18:23:28.373' AS DateTime), 22, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (136, CAST(N'2018-09-03T18:23:29.110' AS DateTime), 23, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (137, CAST(N'2018-09-03T18:23:29.710' AS DateTime), 24, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (138, CAST(N'2018-09-03T18:23:30.337' AS DateTime), 25, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (139, CAST(N'2018-09-03T18:23:32.903' AS DateTime), 26, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (140, CAST(N'2018-09-03T18:23:34.047' AS DateTime), 27, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (141, CAST(N'2018-09-03T18:23:34.630' AS DateTime), 28, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (142, CAST(N'2018-09-03T18:23:35.213' AS DateTime), 29, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (143, CAST(N'2018-09-03T18:25:21.447' AS DateTime), 30, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (144, CAST(N'2018-09-03T18:25:22.247' AS DateTime), 31, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (145, CAST(N'2018-09-03T18:25:23.607' AS DateTime), 32, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (146, CAST(N'2018-09-03T18:25:24.230' AS DateTime), 33, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (147, CAST(N'2018-09-03T18:25:27.383' AS DateTime), 34, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (148, CAST(N'2018-09-03T18:25:28.167' AS DateTime), 35, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (149, CAST(N'2018-09-03T18:25:28.927' AS DateTime), 36, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (150, CAST(N'2018-09-03T18:25:29.887' AS DateTime), 37, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (151, CAST(N'2018-09-03T18:57:29.747' AS DateTime), 1, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (152, CAST(N'2018-09-03T18:57:30.603' AS DateTime), 2, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (153, CAST(N'2018-09-03T18:57:31.673' AS DateTime), 3, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (154, CAST(N'2018-09-03T18:57:32.787' AS DateTime), 4, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (155, CAST(N'2018-09-03T18:59:21.483' AS DateTime), 5, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (156, CAST(N'2018-09-03T18:59:22.097' AS DateTime), 6, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (157, CAST(N'2018-09-03T18:59:22.777' AS DateTime), 7, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (158, CAST(N'2018-09-03T18:59:24.107' AS DateTime), 8, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (159, CAST(N'2018-09-03T18:59:26.137' AS DateTime), 9, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (160, CAST(N'2018-09-03T18:59:27.290' AS DateTime), 10, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (161, CAST(N'2018-09-03T18:59:28.843' AS DateTime), 11, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (162, CAST(N'2018-09-03T18:59:31.610' AS DateTime), 12, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (163, CAST(N'2018-09-03T18:59:32.360' AS DateTime), 13, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (164, CAST(N'2018-09-03T18:59:33.027' AS DateTime), 14, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (165, CAST(N'2018-09-03T18:59:33.770' AS DateTime), 15, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (166, CAST(N'2018-09-03T18:59:36.563' AS DateTime), 16, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (167, CAST(N'2018-09-03T18:59:37.160' AS DateTime), 17, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (168, CAST(N'2018-09-03T18:59:37.760' AS DateTime), 18, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (169, CAST(N'2018-09-03T18:59:39.513' AS DateTime), 20, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (170, CAST(N'2018-09-03T18:59:40.147' AS DateTime), 19, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (171, CAST(N'2018-09-03T18:59:40.977' AS DateTime), 21, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (172, CAST(N'2018-09-03T18:59:43.187' AS DateTime), 22, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (173, CAST(N'2018-09-03T18:59:44.467' AS DateTime), 23, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (174, CAST(N'2018-09-03T18:59:45.227' AS DateTime), 24, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (175, CAST(N'2018-09-03T18:59:45.747' AS DateTime), 25, 0, N'1036613151', 1, NULL)
GO
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (176, CAST(N'2018-09-03T18:59:48.353' AS DateTime), 26, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (177, CAST(N'2018-09-03T18:59:49.777' AS DateTime), 27, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (178, CAST(N'2018-09-03T18:59:50.593' AS DateTime), 28, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (179, CAST(N'2018-09-03T18:59:52.467' AS DateTime), 29, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (180, CAST(N'2018-09-03T18:59:55.800' AS DateTime), 30, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (181, CAST(N'2018-09-03T18:59:56.387' AS DateTime), 31, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (182, CAST(N'2018-09-03T18:59:57.123' AS DateTime), 32, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (183, CAST(N'2018-09-03T18:59:57.810' AS DateTime), 33, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (184, CAST(N'2018-09-03T19:00:00.937' AS DateTime), 34, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (185, CAST(N'2018-09-03T19:00:01.523' AS DateTime), 35, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (186, CAST(N'2018-09-03T19:00:02.530' AS DateTime), 36, 0, N'1036613151', 1, NULL)
INSERT [dbo].[AssessmentTestResults] ([AssessmentId], [CompletedDate], [QuestionId], [Score], [EmployeeDocumentId], [SelfScore], [SelfComments]) VALUES (187, CAST(N'2018-09-03T19:00:07.377' AS DateTime), 37, 0, N'1036613151', 1, NULL)
SET IDENTITY_INSERT [dbo].[AssessmentTestResults] OFF
SET IDENTITY_INSERT [dbo].[CompetencyAndPerformance] ON 

INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (1, N'CUSTOMER MANAGEMENT ', N'Ability to build lasting and productive relationships with customers, anticipating and responding to their needs, and acting in a friendly and professional manner.', 1)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (2, N'FLEXIBILITY', N'Ability to adapt to the varying requirements of the work environment, willingness to improve, commitment to goals and consistent performance in the face of change.', 1)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (3, N'TEAMWORK', N'Ability to maintain a climate of teamwork and coordination, working with other people both internal and external to the company, maximizing the strengths of the team and overcoming differences to achieve the results desired by the organization.', 1)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (4, N'RESULTS ORIENTATION', N'Commitment to achieve results and execute planned actions in the pursuit of achieving results. Ability to understand the urgency and relevance of commended tasks, and act diligently to fulfil them.', 1)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (5, N'LEADERSHIP', N'Ability to influence, motivate and lead teams to achieve organizational goals through the development of individual and group skills, while adding to the overall synergy of the organization.', 1)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (6, N'LEARNING CAPABILITY', N'Ability to recognize the need for development, research new resources, integrate new knowledge and develop new concepts.', 1)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (7, N'PERFORMANCE TECHNICAL KNOWLEDGE AND QUALITY', N'Ability to demonstrate a desired level of technical knowledge and skill, implement good design principles and practices, and keep your code clear and understandable for others to follow.', 0)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (8, N'PERFORMANCE PRODUCTION PROCESS AND METHODOLOGY', N'Ability to demonstrate knowledge in Agile principles and practices, promote their implementation within his/her project, and apply them in the pursuit of continuous improvement.', 0)
INSERT [dbo].[CompetencyAndPerformance] ([CAndPId], [Name], [Description], [IsCompetency]) VALUES (9, N'PERFORMANCE PRODUCTIVITY', N'Ability to deliver and comply with accorded timelines, prioritize his/her work, show commitment and responsibility regarding goal achievement, and exceed the expected results.', 0)
SET IDENTITY_INSERT [dbo].[CompetencyAndPerformance] OFF
SET IDENTITY_INSERT [dbo].[DeliveryUnits] ON 

INSERT [dbo].[DeliveryUnits] ([DUId], [LocationName], [Description]) VALUES (1, N'Bogota', N'The Capital of Colombia')
INSERT [dbo].[DeliveryUnits] ([DUId], [LocationName], [Description]) VALUES (2, N'Medellin', N'The Second main city of Colombia')
INSERT [dbo].[DeliveryUnits] ([DUId], [LocationName], [Description]) VALUES (3, N'Caracas', N'The Capital of Venezuela')
SET IDENTITY_INSERT [dbo].[DeliveryUnits] OFF
INSERT [dbo].[Employee] ([DocumentId], [FullName], [DeliveryUnitId], [GradeId], [UserId], [LeadDocumentId], [PictureURL], [IsLead]) VALUES (N'1036613151', N'Juanito', NULL, NULL, N'b5fb61ea-a8de-48a6-9fa3-8e4a9b36ffc2', NULL, NULL, NULL)
INSERT [dbo].[Employee] ([DocumentId], [FullName], [DeliveryUnitId], [GradeId], [UserId], [LeadDocumentId], [PictureURL], [IsLead]) VALUES (N'12321231', N'Juanita O', NULL, NULL, N'b2d6983c-ff37-4b5d-9399-acf2b9989a34', NULL, NULL, NULL)
INSERT [dbo].[Employee] ([DocumentId], [FullName], [DeliveryUnitId], [GradeId], [UserId], [LeadDocumentId], [PictureURL], [IsLead]) VALUES (N'4353455555', N'Aguapanela', NULL, NULL, N'd03749b3-2040-4fe2-868b-63a916a55a21', NULL, NULL, NULL)
INSERT [dbo].[Employee] ([DocumentId], [FullName], [DeliveryUnitId], [GradeId], [UserId], [LeadDocumentId], [PictureURL], [IsLead]) VALUES (N'526879', N'SIr Lord Jaramillo', NULL, NULL, N'8c2bd834-d259-4d37-82fd-99af1164a8dc', NULL, NULL, NULL)
INSERT [dbo].[Employee] ([DocumentId], [FullName], [DeliveryUnitId], [GradeId], [UserId], [LeadDocumentId], [PictureURL], [IsLead]) VALUES (N'74376653', N'William Ballesteros ', NULL, NULL, N'6e671028-335b-43e5-99b8-86df59fea37f', NULL, NULL, NULL)
INSERT [dbo].[Employee] ([DocumentId], [FullName], [DeliveryUnitId], [GradeId], [UserId], [LeadDocumentId], [PictureURL], [IsLead]) VALUES (N'7569888889', N'Pepita Perez', 2, 5, N'62d6647d-1090-4309-9c2d-1c901ad796f1', N'98664948', N'http://gravatar/wballesteros', 1)
INSERT [dbo].[Employee] ([DocumentId], [FullName], [DeliveryUnitId], [GradeId], [UserId], [LeadDocumentId], [PictureURL], [IsLead]) VALUES (N'98664948', N'Nicolas Vallejo', 2, 6, N'61f4740a-e654-4907-9d7a-eed4434b71e4', N'7569888889', NULL, 1)
SET IDENTITY_INSERT [dbo].[Grades] ON 

INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (1, N'Intern', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (2, N'Junior Technician', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (3, N'Technician', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (4, N'Senior Technician', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (5, N'Engineer', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (6, N'Senior Engineer', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (7, N'Consultant', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (8, N'Senior Consultant', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (9, N'Manager', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (10, N'Senior Manager', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (11, N'Business Manager', N'')
INSERT [dbo].[Grades] ([GradeId], [Name], [Description]) VALUES (12, N'Director', N'')
SET IDENTITY_INSERT [dbo].[Grades] OFF
SET IDENTITY_INSERT [dbo].[OportunitiesOfImprovement] ON 

INSERT [dbo].[OportunitiesOfImprovement] ([OOIId], [CAndPId], [Description], [EmployeeDocumentId]) VALUES (3, 1, N'Opportunity of Improvement 1', N'98664948')
SET IDENTITY_INSERT [dbo].[OportunitiesOfImprovement] OFF
SET IDENTITY_INSERT [dbo].[PerformanceProfile] ON 

INSERT [dbo].[PerformanceProfile] ([PPId], [EmployeeDocumentId], [TeamScore], [ClientScore], [ProjectScore], [CompanyScore]) VALUES (1, N'98664948', 80, 85, 70, 90)
SET IDENTITY_INSERT [dbo].[PerformanceProfile] OFF
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (1, N'Agile Development', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (2, N'Agile Project Methodology', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (3, N'Amazon Web Services (AWS)', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (4, N'Analytics', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (5, N'Enhancing group productivity', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (6, N'Interpersonal', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (7, N'Listening', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (8, N'Reporting', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (9, N'Teamwork', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (10, N'Verbal Communication', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (11, N'Written Communication', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (12, N'Budgeting', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (13, N'Collaborating', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (14, N'Improving', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (15, N'Optimization', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (16, N'Planning', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (17, N'Strategic planning', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (18, N'Troubleshooting', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (19, N'Actively seek new programming knowledge', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (20, N'Android Software Development Kit (SDK)', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (21, N'Attention to detail', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (22, N'C#', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (23, N'C/C++', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (24, N'Cascading Style Sheets (CSS)', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (25, N'Command line utilities ', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (26, N'Communication', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (27, N'Create android applications based on UI/UX requirements and mockups', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (28, N'Create iOS applications based on UI/UX requirements and mockups', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (29, N'Creativity', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (30, N'Critical thinking', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (31, N'Cross-platform development', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (32, N'Data structures and algorithms', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (33, N'Estimate scope of project and cost', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (34, N'Git', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (35, N'Github', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (36, N'Google Play store', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (37, N'Graphical user interface design (UI)', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (38, N'HTML5', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (39, N'Independent worker', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (40, N'Java', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (41, N'JavaScript', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (42, N'Networking', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (43, N'Node.js development', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (44, N'Objective-C', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (45, N'PHP', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (46, N'Presentation skills', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (47, N'Problem-solving skills', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (48, N'Programming languages', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (49, N'Python', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (50, N'Responsible web design', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (51, N'RESTful APIs ', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (52, N'Structured Query Language (SQL)', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (53, N'Swift', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (54, N'Test and debug code', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (55, N'Thorough understanding of development lifecycle', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (56, N'Time management', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (57, N'User experience design (UX)', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (58, N'User interface design (UI)', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (59, N'Website design', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (60, N'Website development', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (61, N'Work well under pressure', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (62, N'Write and maintain applications', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (63, N'Written communication', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (64, N'Analyze and Recommend Database Improvements', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (65, N'Analyze Impact of Database Changes to the Business', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (66, N'Audit Database Access and Requests', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (67, N'APIs', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (68, N'Application and Server Monitoring Tools', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (69, N'Applications', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (70, N'Application Development', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (71, N'Attention to Detail', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (72, N'Architecture', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (73, N'Big Data', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (74, N'Business Analytics', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (75, N'Business Process Modeling', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (76, N'Cloud Applications', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (77, N'Cloud Based Visualizations', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (78, N'Cloud Hosting Services', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (79, N'Cloud Maintenance Tasks', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (80, N'Cloud Management Tools', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (81, N'Cloud Platforms', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (82, N'Cloud Scalability', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (83, N'Cloud Services', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (84, N'Cloud Systems Administration', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (85, N'Code', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (86, N'Coding', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (87, N'Computer', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (88, N'Communication', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (89, N'Configure Database Software', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (90, N'Configuration', N'')
INSERT [dbo].[Skills] ([SkillId], [Name], [Description]) VALUES (91, N'Configuration Management', N'')
SET IDENTITY_INSERT [dbo].[Skills] OFF
ALTER TABLE [dbo].[ActionItems]  WITH CHECK ADD  CONSTRAINT [FK_ActionItems_Employee] FOREIGN KEY([EmployeeDocumentId])
REFERENCES [dbo].[Employee] ([DocumentId])
GO
ALTER TABLE [dbo].[ActionItems] CHECK CONSTRAINT [FK_ActionItems_Employee]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AssessmentTestQuestions]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentTestQuestions_CompetencyAndPerformance] FOREIGN KEY([CAndPId])
REFERENCES [dbo].[CompetencyAndPerformance] ([CAndPId])
GO
ALTER TABLE [dbo].[AssessmentTestQuestions] CHECK CONSTRAINT [FK_AssessmentTestQuestions_CompetencyAndPerformance]
GO
ALTER TABLE [dbo].[AssessmentTestResults]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentTestResults_AssessmentTestQuestions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[AssessmentTestQuestions] ([QuestionId])
GO
ALTER TABLE [dbo].[AssessmentTestResults] CHECK CONSTRAINT [FK_AssessmentTestResults_AssessmentTestQuestions]
GO
ALTER TABLE [dbo].[AssessmentTestResults]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentTestResults_Employee] FOREIGN KEY([EmployeeDocumentId])
REFERENCES [dbo].[Employee] ([DocumentId])
GO
ALTER TABLE [dbo].[AssessmentTestResults] CHECK CONSTRAINT [FK_AssessmentTestResults_Employee]
GO
ALTER TABLE [dbo].[CAndPByPP]  WITH CHECK ADD  CONSTRAINT [FK_CAndPByPP_CompetencyAndPerformance] FOREIGN KEY([CoPId])
REFERENCES [dbo].[CompetencyAndPerformance] ([CAndPId])
GO
ALTER TABLE [dbo].[CAndPByPP] CHECK CONSTRAINT [FK_CAndPByPP_CompetencyAndPerformance]
GO
ALTER TABLE [dbo].[CAndPByPP]  WITH CHECK ADD  CONSTRAINT [FK_CAndPByPP_PerformanceProfile] FOREIGN KEY([PPId])
REFERENCES [dbo].[PerformanceProfile] ([PPId])
GO
ALTER TABLE [dbo].[CAndPByPP] CHECK CONSTRAINT [FK_CAndPByPP_PerformanceProfile]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_DeliveryUnits] FOREIGN KEY([DeliveryUnitId])
REFERENCES [dbo].[DeliveryUnits] ([DUId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_DeliveryUnits]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Employee] FOREIGN KEY([LeadDocumentId])
REFERENCES [dbo].[Employee] ([DocumentId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Grades] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grades] ([GradeId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Grades]
GO
ALTER TABLE [dbo].[OportunitiesOfImprovement]  WITH CHECK ADD  CONSTRAINT [FK_OportunitiesOfImprovement_CompetencyAndPerformance] FOREIGN KEY([CAndPId])
REFERENCES [dbo].[CompetencyAndPerformance] ([CAndPId])
GO
ALTER TABLE [dbo].[OportunitiesOfImprovement] CHECK CONSTRAINT [FK_OportunitiesOfImprovement_CompetencyAndPerformance]
GO
ALTER TABLE [dbo].[OportunitiesOfImprovement]  WITH CHECK ADD  CONSTRAINT [FK_OportunitiesOfImprovement_Employee] FOREIGN KEY([EmployeeDocumentId])
REFERENCES [dbo].[Employee] ([DocumentId])
GO
ALTER TABLE [dbo].[OportunitiesOfImprovement] CHECK CONSTRAINT [FK_OportunitiesOfImprovement_Employee]
GO
ALTER TABLE [dbo].[PerformanceProfile]  WITH CHECK ADD  CONSTRAINT [FK_PerformanceProfile_Employee] FOREIGN KEY([EmployeeDocumentId])
REFERENCES [dbo].[Employee] ([DocumentId])
GO
ALTER TABLE [dbo].[PerformanceProfile] CHECK CONSTRAINT [FK_PerformanceProfile_Employee]
GO
ALTER TABLE [dbo].[SkillsByPP]  WITH CHECK ADD  CONSTRAINT [FK_SkillsByPP_PerformanceProfile] FOREIGN KEY([PPId])
REFERENCES [dbo].[PerformanceProfile] ([PPId])
GO
ALTER TABLE [dbo].[SkillsByPP] CHECK CONSTRAINT [FK_SkillsByPP_PerformanceProfile]
GO
ALTER TABLE [dbo].[SkillsByPP]  WITH CHECK ADD  CONSTRAINT [FK_SkillsByPP_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[SkillsByPP] CHECK CONSTRAINT [FK_SkillsByPP_Skills]
GO
ALTER TABLE [dbo].[Strengths]  WITH CHECK ADD  CONSTRAINT [FK_Strengths_CompetencyAndPerformance] FOREIGN KEY([CAndPId])
REFERENCES [dbo].[CompetencyAndPerformance] ([CAndPId])
GO
ALTER TABLE [dbo].[Strengths] CHECK CONSTRAINT [FK_Strengths_CompetencyAndPerformance]
GO
ALTER TABLE [dbo].[Strengths]  WITH CHECK ADD  CONSTRAINT [FK_Strengths_Employee] FOREIGN KEY([EmployeeDocumentId])
REFERENCES [dbo].[Employee] ([DocumentId])
GO
ALTER TABLE [dbo].[Strengths] CHECK CONSTRAINT [FK_Strengths_Employee]
GO
ALTER TABLE [dbo].[TrainningsByPP]  WITH CHECK ADD  CONSTRAINT [FK_TrainningsByPP_PerformanceProfile] FOREIGN KEY([PPId])
REFERENCES [dbo].[PerformanceProfile] ([PPId])
GO
ALTER TABLE [dbo].[TrainningsByPP] CHECK CONSTRAINT [FK_TrainningsByPP_PerformanceProfile]
GO
ALTER TABLE [dbo].[TrainningsByPP]  WITH CHECK ADD  CONSTRAINT [FK_TrainningsByPP_Trainnings] FOREIGN KEY([PPId])
REFERENCES [dbo].[Trainnings] ([TrainningId])
GO
ALTER TABLE [dbo].[TrainningsByPP] CHECK CONSTRAINT [FK_TrainningsByPP_Trainnings]
GO

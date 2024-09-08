USE [deneme2_proje]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 3.09.2024 19:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[kuladi] [nvarchar](30) NOT NULL,
	[sifre] [nvarchar](10) NOT NULL,
	[foto] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilan_goster]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilan_goster](
	[ilan_no] [int] IDENTITY(1,100) NOT NULL,
	[ilan_tarihi] [datetime2](7) NOT NULL,
	[FotoURL] [nvarchar](255) NULL,
	[uyeid] [int] NOT NULL,
	[plaka_id] [tinyint] NOT NULL,
	[ilce_id] [int] NOT NULL,
	[tas_marka_id] [int] NOT NULL,
	[tas_model_id] [int] NOT NULL,
	[fiyat] [money] NOT NULL,
	[km] [int] NOT NULL,
	[yakit_tipi_id] [tinyint] NOT NULL,
	[vites_tip_id] [tinyint] NOT NULL,
	[renk_id] [tinyint] NOT NULL,
	[motor_gucu_id] [tinyint] NOT NULL,
	[motor_hacmi_id] [tinyint] NOT NULL,
	[kasa_tip_id] [tinyint] NOT NULL,
	[acıklama] [nvarchar](2000) NOT NULL,
	[varyant_id] [int] NOT NULL,
	[takas] [bit] NOT NULL,
	[tas_tur_id] [int] NOT NULL,
	[uretim_yil_id] [int] NOT NULL,
	[ilan_basligi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ilan_gos__A7EE721714B4FD53] PRIMARY KEY CLUSTERED 
(
	[ilan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilceler](
	[ilce_no] [int] NOT NULL,
	[plaka_id] [tinyint] NOT NULL,
	[ilce_adi] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ilce_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kasa_tipleri]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kasa_tipleri](
	[kasa_tip_no] [tinyint] NOT NULL,
	[kasa_tipi] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[kasa_tip_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[motor_gucleri]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motor_gucleri](
	[motor_gucu_no] [tinyint] NOT NULL,
	[motor_gucu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[motor_gucu_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[motor_hacimleri]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motor_hacimleri](
	[motor_hacmi_no] [tinyint] NOT NULL,
	[motor_hacmi] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK__motor_ha__F343C9844A9BAA61] PRIMARY KEY CLUSTERED 
(
	[motor_hacmi_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renkler]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renkler](
	[renk_no] [tinyint] NOT NULL,
	[renk] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[renk_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehirler]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehirler](
	[plaka] [tinyint] IDENTITY(1,1) NOT NULL,
	[sehir_adi] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tasit_markalari]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasit_markalari](
	[tas_marka_no] [int] NOT NULL,
	[uretim_yil_id] [int] NOT NULL,
	[tas_marka_adi] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tas_marka_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tasit_modelleri]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasit_modelleri](
	[tas_model_no] [int] NOT NULL,
	[tas_marka_id] [int] NOT NULL,
	[tas_model_ad] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tas_model_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tasit_turleri]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasit_turleri](
	[tas_tur_no] [int] IDENTITY(1,1) NOT NULL,
	[tas_tur_adi] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tas_tur_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uretim_yili]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uretim_yili](
	[uretim_yili_no] [int] NOT NULL,
	[tas_tur_id] [int] NOT NULL,
	[yillar] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[uretim_yili_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uyeler]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uyeler](
	[uyeno] [int] IDENTITY(1,1) NOT NULL,
	[kuladi] [nvarchar](30) NOT NULL,
	[sifre] [nvarchar](10) NOT NULL,
	[uye_TC] [nvarchar](11) NOT NULL,
	[adsoyad] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[Telefon] [nvarchar](15) NULL,
	[plaka_id] [tinyint] NOT NULL,
	[ilce_id] [int] NOT NULL,
	[KayitTarihi] [datetime] NULL,
	[uye_foto] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[uyeno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[varyantlar]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[varyantlar](
	[tas_model_id] [int] NOT NULL,
	[varyant_no] [int] NOT NULL,
	[varyant_ad] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK__varyantl__12D49B469AED4235] PRIMARY KEY CLUSTERED 
(
	[varyant_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vites_tipi]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vites_tipi](
	[vites_tip_no] [tinyint] NOT NULL,
	[vites_tip] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vites_tip_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yakit_tipleri]    Script Date: 3.09.2024 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yakit_tipleri](
	[yakit_tipi_no] [tinyint] NOT NULL,
	[yakit_tip] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[yakit_tipi_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([admin_id], [kuladi], [sifre], [foto]) VALUES (1, N'alperkaan', N'781462', NULL)
INSERT [dbo].[admin] ([admin_id], [kuladi], [sifre], [foto]) VALUES (2, N'elifd', N'123456', NULL)
INSERT [dbo].[admin] ([admin_id], [kuladi], [sifre], [foto]) VALUES (3, N'gokhanoz', N'11223344', NULL)
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[ilan_goster] ON 

INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (3201, CAST(N'2024-08-26T00:00:00.0000000' AS DateTime2), N'resimyok.png', 3, 1, 4, 15, 15, 1220000.0000, 77000, 1, 2, 2, 16, 6, 8, N'TERTEMIZ KAZASIZ ILK SAHIBINDEN', 65, 1, 1, 37, N'ford focus sahibinden tertemiz sorunsuz')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (3401, CAST(N'2024-08-27T00:00:00.0000000' AS DateTime2), N'hyundai-i20-n.jpg', 1, 34, 450, 18, 11, 1280000.0000, 88000, 1, 2, 2, 30, 7, 4, N'TERTEMIZ KAZASIZ ILK SAHIBINDEN', 50, 1, 1, 37, N'hyundai i20 n gozum gibi baktim ')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (3501, CAST(N'2024-08-30T00:00:00.0000000' AS DateTime2), N'resimyok.png', 1, 16, 232, 17, 1, 1280000.0000, 12000, 1, 2, 2, 29, 6, 7, N'TERTEMIZ KAZASIZ ILK SAHIBINDEN', 1, 1, 1, 37, N'honda accord dsdffsdf')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (3601, CAST(N'2024-08-27T00:00:00.0000000' AS DateTime2), N'resimyok.png', 1, 16, 232, 15, 14, 880000.0000, 90000, 1, 1, 2, 13, 5, 4, N'TERTEMIZ KAZASIZ ILK SAHIBINDEN', 1, 0, 1, 37, N'ford fiesta 2023 model')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (4001, CAST(N'2024-08-30T04:42:44.8134220' AS DateTime2), N'resimyok.png', 1, 16, 232, 17, 5, 1235000.0000, 12350, 3, 2, 4, 12, 4, 4, N'TERTEMIZ KAZASIZ ILK SAHIBINDEN', 18, 1, 1, 37, N'honda jazz ilk sahibinden')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (4201, CAST(N'2024-09-01T23:42:16.2442381' AS DateTime2), NULL, 8, 34, 484, 17, 3, 1400000.0000, 12300, 1, 2, 1, 23, 11, 7, N'arabam cok temiz gozum gibi baktim
', 17, 0, 1, 37, N'Alirsin Ford olursun lord')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (4301, CAST(N'2024-09-02T00:11:36.2059170' AS DateTime2), N'resimyok.png', 8, 17, 239, 95, 41, 1500000.0000, 1000, 5, 2, 1, 49, 19, 5, N'az kullanilmis kazasiz velasiz', 79, 0, 2, 51, N'tesla az kullanilmis menzili ilk gunku gibi')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (4401, CAST(N'2024-09-02T00:15:31.8801919' AS DateTime2), N'resimyok.png', 8, 16, 232, 95, 42, 1400000.0000, 1222, 5, 2, 14, 39, 19, 5, N'arabam temiz sorunsuz sigara dahi icilmemis', 91, 1, 2, 51, N'tesla az kullanilmis menzili ilk gunku gibi')
INSERT [dbo].[ilan_goster] ([ilan_no], [ilan_tarihi], [FotoURL], [uyeid], [plaka_id], [ilce_id], [tas_marka_id], [tas_model_id], [fiyat], [km], [yakit_tipi_id], [vites_tip_id], [renk_id], [motor_gucu_id], [motor_hacmi_id], [kasa_tip_id], [acıklama], [varyant_id], [takas], [tas_tur_id], [uretim_yil_id], [ilan_basligi]) VALUES (4701, CAST(N'2024-09-02T01:06:47.3857219' AS DateTime2), N'resimyok.png', 8, 16, 232, 17, 3, 2000000.0000, 0, 4, 2, 1, 51, 11, 3, N'dsfdfsdfdfsdvcxcv xdcvwsefsd ', 17, 1, 1, 37, N'honda civic type-r japon spor otomobil')
SET IDENTITY_INSERT [dbo].[ilan_goster] OFF
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (1, 1, N'Aladağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (2, 1, N'Ceyhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (3, 1, N'Çukurova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (4, 1, N'Feke')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (5, 1, N'İmamoğlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (6, 1, N'Karaisalı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (7, 1, N'Karataş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (8, 1, N'Kozan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (9, 1, N'Pozantı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (10, 1, N'Saimbeyli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (11, 1, N'Sarıçam')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (12, 1, N'Seyhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (13, 1, N'Tufanbeyli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (14, 1, N'Yumurtalık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (15, 1, N'Yüreğir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (16, 2, N'Besni')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (17, 2, N'Çelikhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (18, 2, N'Gerger')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (19, 2, N'Gölbaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (20, 2, N'Kahta')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (21, 2, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (22, 2, N'Samsat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (23, 2, N'Sincik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (24, 2, N'Tut')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (25, 3, N'Başmakçı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (26, 3, N'Bayat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (27, 3, N'Bolvadin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (28, 3, N'Çay')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (29, 3, N'Çobanlar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (30, 3, N'Dazkırı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (31, 3, N'Dinar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (32, 3, N'Emirdağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (33, 3, N'Evciler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (34, 3, N'Hocalar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (35, 3, N'İhsaniye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (36, 3, N'İscehisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (37, 3, N'Kızılören')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (38, 3, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (39, 3, N'Sandıklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (40, 3, N'Sinanpaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (41, 3, N'Sultandağı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (42, 3, N'Şuhut')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (43, 4, N'Diyadin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (44, 4, N'Doğubayazıt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (45, 4, N'Eleşkirt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (46, 4, N'Hamur')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (47, 4, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (48, 4, N'Patnos')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (49, 4, N'Taşlıçay')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (50, 4, N'Tutak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (51, 5, N'Ağaçören')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (52, 5, N'Eskil')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (53, 5, N'Gülağaç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (54, 5, N'Güzelyurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (55, 5, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (56, 5, N'Ortaköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (57, 5, N'Sarıyahşi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (58, 5, N'Sultanhanı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (59, 68, N'Göynücek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (60, 68, N'Gümüşhacıköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (61, 68, N'Hamamözü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (62, 68, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (63, 68, N'Merzifon')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (64, 68, N'Suluova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (65, 68, N'Taşova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (66, 6, N'Akyurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (67, 6, N'Altındağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (68, 6, N'Ayaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (69, 6, N'Bala')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (70, 6, N'Beypazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (71, 6, N'Çamlıdere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (72, 6, N'Çankaya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (73, 6, N'Çubuk')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (74, 6, N'Elmadağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (75, 6, N'Etimesgut')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (76, 6, N'Evren')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (77, 6, N'Gölbaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (78, 6, N'Güdül')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (79, 6, N'Haymana')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (80, 6, N'Kahramankazan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (81, 6, N'Kalecik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (82, 6, N'Keçiören')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (83, 6, N'Kızılcahamam')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (84, 6, N'Mamak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (85, 6, N'Nallıhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (86, 6, N'Polatlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (87, 6, N'Pursaklar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (88, 6, N'Sincan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (89, 6, N'Şereflikoçhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (90, 6, N'Yenimahalle')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (91, 7, N'Akseki')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (92, 7, N'Aksu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (93, 7, N'Alanya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (94, 7, N'Demre')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (95, 7, N'Döşemealtı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (96, 7, N'Elmalı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (97, 7, N'Finike')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (98, 7, N'Gazipaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (99, 7, N'Gündoğmuş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (100, 7, N'İbradı')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (101, 7, N'Kaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (102, 7, N'Kemer')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (103, 7, N'Kepez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (104, 7, N'Konyaaltı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (105, 7, N'Korkuteli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (106, 7, N'Kumluca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (107, 7, N'Manavgat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (108, 7, N'Muratpaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (109, 7, N'Serik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (110, 75, N'Çıldır')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (111, 75, N'Damal')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (112, 75, N'Göle')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (113, 75, N'Hanak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (114, 75, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (115, 75, N'Posof')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (116, 8, N'Ardanuç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (117, 8, N'Arhavi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (118, 8, N'Borçka')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (119, 8, N'Hopa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (120, 8, N'Kemalpaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (121, 8, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (122, 8, N'Murgul')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (123, 8, N'Şavşat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (124, 8, N'Yusufeli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (125, 9, N'Bozdoğan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (126, 9, N'Buharkent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (127, 9, N'Çine')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (128, 9, N'Didim')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (129, 9, N'Efeler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (130, 9, N'Germencik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (131, 9, N'İncirliova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (132, 9, N'Karacasu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (133, 9, N'Karpuzlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (134, 9, N'Koçarlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (135, 9, N'Köşk')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (136, 9, N'Kuşadası')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (137, 9, N'Kuyucak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (138, 9, N'Nazilli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (139, 9, N'Söke')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (140, 9, N'Sultanhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (141, 9, N'Yenipazar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (142, 10, N'Altıeylül')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (143, 10, N'Ayvalık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (144, 10, N'Balya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (145, 10, N'Bandırma')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (146, 10, N'Bigadiç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (147, 10, N'Burhaniye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (148, 10, N'Dursunbey')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (149, 10, N'Edremit')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (150, 10, N'Erdek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (151, 10, N'Gömeç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (152, 10, N'Gönen')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (153, 10, N'Havran')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (154, 10, N'İvrindi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (155, 10, N'Karesi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (156, 10, N'Kepsut')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (157, 10, N'Manyas')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (158, 10, N'Marmara')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (159, 10, N'Savaştepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (160, 10, N'Sındırgı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (161, 10, N'Susurluk')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (162, 11, N'Amasra')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (163, 11, N'Kurucaşile')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (164, 11, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (165, 11, N'Ulus')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (166, 72, N'Beşiri')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (167, 72, N'Gercüş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (168, 72, N'Hasankeyf')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (169, 72, N'Kozluk')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (170, 72, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (171, 72, N'Sason')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (172, 72, N'Aydıntepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (173, 72, N'Demirözü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (174, 12, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (175, 12, N'Bozüyük')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (176, 12, N'Gölpazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (177, 12, N'İnhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (178, 12, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (179, 12, N'Osmaneli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (180, 12, N'Pazaryeri')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (181, 12, N'Söğüt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (182, 12, N'Yenipazar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (183, 13, N'Adaklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (184, 13, N'Genç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (185, 13, N'Karlıova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (186, 13, N'Kiğı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (187, 13, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (188, 13, N'Solhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (189, 13, N'Yayladere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (190, 13, N'Yedisu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (191, 14, N'Adilcevaz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (192, 14, N'Ahlat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (193, 14, N'Güroymak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (194, 14, N'Hizan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (195, 14, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (196, 14, N'Mutki')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (197, 14, N'Tatvan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (198, 14, N'Dörtdivan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (199, 14, N'Gerede')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (200, 14, N'Göynük')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (201, 14, N'Kıbrıscık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (202, 14, N'Mengen')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (203, 14, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (204, 14, N'Mudurnu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (205, 14, N'Seben')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (206, 14, N'Yeniçağa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (207, 20, N'Ağlasun')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (208, 20, N'Altınyayla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (209, 20, N'Bucak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (210, 20, N'Çavdır')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (211, 20, N'Çeltikçi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (212, 20, N'Gölhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (213, 20, N'Karamanlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (214, 20, N'Kemer')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (215, 20, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (216, 20, N'Tefenni')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (217, 20, N'Yeşilova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (218, 16, N'Büyükorhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (219, 16, N'Gemlik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (220, 16, N'Gürsu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (221, 16, N'Harmancık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (222, 16, N'İnegöl')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (223, 16, N'İznik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (224, 16, N'Karacabey')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (225, 16, N'Keles')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (226, 16, N'Kestel')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (227, 16, N'Mudanya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (228, 16, N'Mustafakemalpaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (229, 16, N'Nilüfer')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (230, 16, N'Orhaneli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (231, 16, N'Orhangazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (232, 16, N'Osmangazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (233, 16, N'Yenişehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (234, 16, N'Yıldırım')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (235, 17, N'Ayvacık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (236, 17, N'Bayramiç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (237, 17, N'Biga')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (238, 17, N'Bozcaada')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (239, 17, N'Çan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (240, 17, N'Eceabat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (241, 17, N'Ezine')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (242, 17, N'Gelibolu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (243, 17, N'Gökçeada')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (244, 17, N'Lapseki')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (245, 17, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (246, 17, N'Yenice')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (247, 18, N'Atkaracalar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (248, 18, N'Bayramören')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (249, 18, N'Çerkeş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (250, 18, N'Eldivan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (251, 18, N'Ilgaz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (252, 18, N'Kızılırmak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (253, 18, N'Korgun')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (254, 18, N'Kurşunlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (255, 18, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (256, 18, N'Orta')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (257, 18, N'Şabanözü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (258, 18, N'Yapraklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (259, 18, N'Alaca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (260, 19, N'Bayat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (261, 19, N'Boğazkale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (262, 19, N'Dodurga')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (263, 19, N'İskilip')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (264, 19, N'Kargı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (265, 19, N'Laçin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (266, 19, N'Mecitözü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (267, 19, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (268, 19, N'Oğuzlar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (269, 19, N'Ortaköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (270, 19, N'Osmancık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (271, 19, N'Sungurlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (272, 19, N'Uğurludağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (273, 20, N'Acıpayam')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (274, 20, N'Babadağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (275, 20, N'Baklan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (276, 20, N'Bekilli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (277, 20, N'Beyağaç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (278, 20, N'Bozkurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (279, 20, N'Buldan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (280, 20, N'Çal')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (281, 20, N'Çameli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (282, 20, N'Çardak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (283, 20, N'Çivril')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (284, 20, N'Güney')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (285, 20, N'Honaz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (286, 20, N'Kale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (287, 20, N'Merkezefendi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (288, 20, N'Pamukkale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (289, 20, N'Sarayköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (290, 20, N'Serinhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (291, 20, N'Tavas')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (292, 21, N'Bağlar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (293, 21, N'Bismil')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (294, 21, N'Çermik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (295, 21, N'Çınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (296, 21, N'Çüngüş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (297, 21, N'Dicle')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (298, 21, N'Eğil')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (299, 21, N'Ergani')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (300, 21, N'Hani')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (301, 21, N'Hazro')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (302, 21, N'Kayapınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (303, 21, N'Kocaköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (304, 21, N'Kulp')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (305, 21, N'Lice')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (306, 21, N'Silvan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (307, 21, N'Sur')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (308, 21, N'Yenişehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (309, 81, N'Akçakoca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (310, 81, N'Cumayeri')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (311, 81, N'Çilimli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (312, 81, N'Gölyaka')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (313, 81, N'Gümüşova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (314, 81, N'Kaynaşlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (315, 81, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (316, 81, N'Yığılca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (317, 22, N'Enez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (318, 22, N'Havsa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (319, 22, N'İpsala')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (320, 22, N'Keşan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (321, 22, N'Lalapaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (322, 22, N'Meriç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (323, 22, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (324, 22, N'Süloğlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (325, 23, N'Uzunköprü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (326, 23, N'Ağın')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (327, 23, N'Alacakaya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (328, 23, N'Arıcak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (329, 23, N'Baskil')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (330, 23, N'Karakoçan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (331, 23, N'Keban')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (332, 23, N'Kovancılar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (333, 23, N'Maden')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (334, 23, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (335, 23, N'Palu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (336, 23, N'Sivrice')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (337, 24, N'Çayırlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (338, 24, N'İliç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (339, 24, N'Kemah')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (340, 24, N'Kemaliye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (341, 24, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (342, 24, N'Otlukbeli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (343, 24, N'Refahiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (344, 24, N'Tercan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (345, 24, N'Üzümlü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (346, 25, N'Aşkale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (347, 25, N'Aziziye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (348, 25, N'Çat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (349, 25, N'Hınıs')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (350, 25, N'Horasan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (351, 25, N'İspir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (352, 25, N'Karaçoban')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (353, 25, N'Karayazı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (354, 25, N'Köprüköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (355, 25, N'Narman')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (356, 25, N'Oltu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (357, 25, N'Olur')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (358, 25, N'Palandöken')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (359, 25, N'Pasinler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (360, 25, N'Pazaryolu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (361, 25, N'Şenkaya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (362, 25, N'Tekman')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (363, 25, N'Tortum')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (364, 25, N'Uzundere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (365, 25, N'Yakutiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (366, 26, N'Alpu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (367, 26, N'Beylikova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (368, 26, N'Çifteler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (369, 26, N'Günyüzü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (370, 26, N'Han')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (371, 26, N'İnönü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (372, 26, N'Mahmudiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (373, 26, N'Mihalgazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (374, 26, N'Mihalıççık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (375, 26, N'Odunpazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (376, 26, N'Sarıcakaya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (377, 26, N'Seyitgazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (378, 26, N'Sivrihisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (379, 26, N'Tepebaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (380, 27, N'Araban')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (381, 27, N'İslahiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (382, 27, N'Karkamış')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (383, 27, N'Nizip')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (384, 27, N'Nurdağı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (385, 27, N'Oğuzeli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (386, 27, N'Şahinbey')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (387, 27, N'Şehitkamil')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (388, 27, N'Yavuzeli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (389, 28, N'Alucra')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (390, 28, N'Bulancak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (391, 28, N'Çamoluk')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (392, 28, N'Çanakçı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (393, 28, N'Dereli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (394, 28, N'Doğankent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (395, 28, N'Espiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (396, 28, N'Eynesil')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (397, 28, N'Görele')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (398, 28, N'Güce')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (399, 28, N'Keşap')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (400, 28, N'Merkez')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (401, 28, N'Piraziz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (402, 28, N'Şebinkarahisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (403, 28, N'Tirebolu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (404, 28, N'Yağlıdere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (405, 29, N'Kelkit')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (406, 29, N'Köse')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (407, 29, N'Kürtün')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (408, 29, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (409, 29, N'Şiran')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (410, 29, N'Torul')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (411, 30, N'Çukurca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (412, 30, N'Derecik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (413, 30, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (414, 30, N'Şemdinli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (415, 30, N'Yüksekova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (416, 31, N'Altınözü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (417, 31, N'Antakya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (418, 31, N'Arsuz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (419, 31, N'Belen')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (420, 31, N'Defne')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (421, 31, N'Dörtyol')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (422, 31, N'Erzin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (423, 31, N'Hassa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (424, 31, N'İskenderun')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (425, 31, N'Kırıkhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (426, 31, N'Kumlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (427, 31, N'Payas')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (428, 31, N'Reyhanlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (429, 37, N'Samandağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (430, 31, N'Yayladağı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (431, 76, N'Aralık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (432, 76, N'Karakoyunlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (433, 76, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (434, 76, N'Tuzluca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (435, 32, N'Aksu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (436, 32, N'Atabey')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (437, 32, N'Eğirdir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (438, 32, N'Gelendost')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (439, 32, N'Gönen')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (440, 32, N'Keçiborlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (441, 32, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (442, 32, N'Senirkent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (443, 32, N'Sütçüler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (444, 32, N'Şarkikaraağaç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (445, 32, N'Uluborlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (446, 32, N'Yalvaç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (447, 32, N'Yenişarbademli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (448, 34, N'Adalar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (449, 34, N'Arnavutköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (450, 34, N'Ataşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (451, 34, N'Avcılar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (452, 34, N'Bağcılar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (453, 34, N'Bahçelievler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (454, 34, N'Bakırköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (455, 34, N'Başakşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (456, 34, N'Bayrampaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (457, 34, N'Beşiktaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (458, 34, N'Beykoz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (459, 34, N'Beylikdüzü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (460, 34, N'Beyoğlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (461, 34, N'Büyükçekmece')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (462, 34, N'Çatalca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (463, 34, N'Çekmeköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (464, 34, N'Esenler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (465, 34, N'Esenyurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (466, 34, N'Eyüpsultan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (467, 34, N'Fatih')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (468, 34, N'Gaziosmanpaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (469, 34, N'Güngören')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (470, 34, N'Kadıköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (471, 34, N'Kağıthane')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (472, 34, N'Kartal')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (473, 34, N'Küçükçekmece')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (474, 34, N'Maltepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (475, 34, N'Pendik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (476, 34, N'Sancaktepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (477, 34, N'Sarıyer')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (478, 34, N'Silivri')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (479, 34, N'Sultanbeyli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (480, 34, N'Sultangazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (481, 34, N'Şile')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (482, 34, N'Şişli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (483, 34, N'Tuzla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (484, 34, N'Ümraniye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (485, 34, N'Üsküdar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (486, 34, N'Zeytinburnu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (487, 35, N'Aliağa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (488, 35, N'Balçova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (489, 35, N'Bayındır')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (490, 35, N'Bayraklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (491, 35, N'Bergama')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (492, 35, N'Beydağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (493, 35, N'Bornova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (494, 35, N'Buca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (495, 35, N'Çeşme')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (496, 35, N'Çiğli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (497, 35, N'Dikili')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (498, 35, N'Foça')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (499, 35, N'Gaziemir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (500, 35, N'Güzelbahçe')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (501, 35, N'Karabağlar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (502, 35, N'Karaburun')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (503, 35, N'Karşıyaka')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (504, 35, N'Kemalpaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (505, 35, N'Kınık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (506, 35, N'Kiraz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (507, 35, N'Konak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (508, 35, N'Menderes')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (509, 35, N'Menemen')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (510, 35, N'Narlıdere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (511, 35, N'Ödemiş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (512, 35, N'Seferihisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (513, 35, N'Selçuk')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (514, 35, N'Tire')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (515, 35, N'Torbalı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (516, 35, N'Urla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (517, 46, N'Afşin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (518, 46, N'Andırın')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (519, 46, N'Çağlayancerit')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (520, 46, N'Dulkadiroğlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (521, 46, N'Ekinözü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (522, 46, N'Elbistan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (523, 46, N'Göksun')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (524, 46, N'Nurhak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (525, 46, N'Onikişubat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (526, 46, N'Pazarcık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (527, 46, N'Türkoğlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (528, 78, N'Eflani')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (529, 78, N'Eskipazar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (530, 78, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (531, 78, N'Ovacık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (532, 78, N'Safranbolu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (533, 78, N'Yenice')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (534, 70, N'Ayrancı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (535, 70, N'Başyayla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (536, 70, N'Ermenek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (537, 70, N'Kazımkarabekir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (538, 70, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (539, 70, N'Sarıveliler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (540, 36, N'Akyaka')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (541, 36, N'Arpaçay')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (542, 36, N'Digor')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (543, 36, N'Kağızman')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (544, 36, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (545, 36, N'Sarıkamış')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (546, 36, N'Selim')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (547, 36, N'Susuz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (548, 37, N'Abana')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (549, 37, N'Ağlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (550, 37, N'Araç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (551, 37, N'Azdavay')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (552, 37, N'Bozkurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (553, 37, N'Cide')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (554, 37, N'Çatalzeytin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (555, 37, N'Daday')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (556, 37, N'Devrekani')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (557, 37, N'Doğanyurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (558, 37, N'Hanönü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (559, 37, N'İhsangazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (560, 37, N'İnebolu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (561, 37, N'Küre')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (562, 37, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (563, 37, N'Pınarbaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (564, 37, N'Seydiler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (565, 37, N'Şenpazar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (566, 37, N'Taşköprü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (567, 37, N'Tosya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (568, 38, N'Akkışla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (569, 38, N'Bünyan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (570, 38, N'Develi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (571, 38, N'Felahiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (572, 38, N'Hacılar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (573, 38, N'İncesu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (574, 38, N'Kocasinan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (575, 38, N'Melikgazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (576, 38, N'Özvatan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (577, 38, N'Pınarbaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (578, 38, N'Sarıoğlan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (579, 38, N'Sarız')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (580, 38, N'Talas')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (581, 38, N'Tomarza')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (582, 38, N'Yahyalı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (583, 38, N'Yeşilhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (584, 71, N'Bahşılı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (585, 71, N'Balışeyh')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (586, 71, N'Çelebi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (587, 71, N'Delice')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (588, 71, N'Karakeçili')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (589, 71, N'Keskin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (590, 71, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (591, 71, N'Sulakyurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (592, 71, N'Yahşihan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (593, 39, N'Babaeski')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (594, 39, N'Demirköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (595, 39, N'Kofçaz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (596, 39, N'Lüleburgaz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (597, 39, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (598, 39, N'Pehlivanköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (599, 39, N'Pınarhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (600, 39, N'Vize')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (601, 40, N'Akçakent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (602, 40, N'Akpınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (603, 40, N'Boztepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (604, 40, N'Çiçekdağı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (605, 40, N'Kaman')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (606, 40, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (607, 40, N'Mucur')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (608, 79, N'Elbeyli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (609, 79, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (610, 79, N'Musabeyli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (611, 79, N'Polateli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (612, 41, N'Başiskele')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (613, 41, N'Çayırova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (614, 41, N'Darıca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (615, 41, N'Derince')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (616, 41, N'Dilovası')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (617, 41, N'Gebze')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (618, 41, N'Gölcük')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (619, 41, N'İzmit')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (620, 41, N'Kandıra')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (621, 41, N'Karamürsel')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (622, 41, N'Kartepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (623, 41, N'Körfez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (624, 42, N'Ahırlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (625, 42, N'Akören')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (626, 42, N'Akşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (627, 42, N'Altınekin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (628, 42, N'Beyşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (629, 42, N'Bozkır')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (630, 42, N'Cihanbeyli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (631, 42, N'Çeltik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (632, 42, N'Çumra')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (633, 42, N'Derbent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (634, 42, N'Derebucak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (635, 42, N'Doğanhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (636, 42, N'Emirgazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (637, 42, N'Ereğli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (638, 42, N'Güneysınır')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (639, 42, N'Hadim')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (640, 42, N'Halkapınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (641, 42, N'Hüyük')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (642, 42, N'Ilgın')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (643, 42, N'Kadınhanı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (644, 42, N'Karapınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (645, 42, N'Karatay')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (646, 42, N'Kulu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (647, 42, N'Meram')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (648, 42, N'Sarayönü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (649, 42, N'Selçuklu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (650, 42, N'Seydişehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (651, 42, N'Taşkent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (652, 42, N'Tuzlukçu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (653, 42, N'Yalıhüyük')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (654, 42, N'Yunak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (655, 43, N'Altıntaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (656, 43, N'Aslanapa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (657, 43, N'Çavdarhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (658, 43, N'Domaniç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (659, 43, N'Dumlupınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (660, 43, N'Emet')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (661, 43, N'Gediz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (662, 43, N'Hisarcık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (663, 43, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (664, 43, N'Pazarlar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (665, 43, N'Simav')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (666, 43, N'Şaphane')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (667, 43, N'Tavşanlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (668, 44, N'Akçadağ')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (669, 44, N'Arapgir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (670, 44, N'Arguvan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (671, 44, N'Battalgazi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (672, 44, N'Darende')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (673, 44, N'Doğanşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (674, 44, N'Doğanyol')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (675, 44, N'Hekimhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (676, 44, N'Kale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (677, 44, N'Kuluncak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (678, 44, N'Pütürge')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (679, 44, N'Yazıhan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (680, 44, N'Yeşilyurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (681, 45, N'Ahmetli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (682, 45, N'Akhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (683, 45, N'Alaşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (684, 45, N'Demirci')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (685, 45, N'Gölmarmara')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (686, 45, N'Gördes')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (687, 45, N'Kırkağaç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (688, 45, N'Köprübaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (689, 45, N'Kula')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (690, 45, N'Salihli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (691, 45, N'Sarıgöl')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (692, 45, N'Saruhanlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (693, 45, N'Selendi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (694, 45, N'Soma')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (695, 45, N'Şehzadeler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (696, 45, N'Turgutlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (697, 45, N'Yunusemre')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (698, 47, N'Artuklu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (699, 47, N'Dargeçit')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (700, 47, N'Derik')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (701, 47, N'Kızıltepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (702, 47, N'Mazıdağı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (703, 47, N'Midyat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (704, 47, N'Nusaybin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (705, 47, N'Ömerli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (706, 47, N'Savur')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (707, 47, N'Yeşilli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (708, 33, N'Akdeniz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (709, 58, N'Anamur')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (710, 58, N'Aydıncık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (711, 58, N'Bozyazı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (712, 58, N'Çamlıyayla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (713, 58, N'Erdemli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (714, 58, N'Gülnar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (715, 58, N'Mezitli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (716, 58, N'Mut')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (717, 33, N'Silifke')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (718, 33, N'Tarsus')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (719, 33, N'Toroslar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (720, 33, N'Yenişehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (721, 48, N'Bodrum')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (722, 48, N'Dalaman')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (723, 48, N'Datça')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (724, 48, N'Fethiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (725, 48, N'Kavaklıdere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (726, 48, N'Köyceğiz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (727, 48, N'Marmaris')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (728, 48, N'Menteşe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (729, 48, N'Milas')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (730, 48, N'Ortaca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (731, 48, N'Seydikemer')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (732, 48, N'Ula')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (733, 48, N'Yatağan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (734, 49, N'Bulanık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (735, 49, N'Hasköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (736, 49, N'Korkut')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (737, 49, N'Malazgirt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (738, 49, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (739, 49, N'Varto')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (740, 50, N'Acıgöl')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (741, 50, N'Avanos')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (742, 50, N'Derinkuyu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (743, 50, N'Gülşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (744, 50, N'Hacıbektaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (745, 50, N'Kozaklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (746, 50, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (747, 50, N'Ürgüp')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (748, 51, N'Altunhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (749, 51, N'Bor')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (750, 51, N'Çamardı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (751, 51, N'Çiftlik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (752, 51, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (753, 51, N'Ulukışla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (754, 52, N'Akkuş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (755, 52, N'Altınordu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (756, 52, N'Aybastı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (757, 52, N'Çamaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (758, 52, N'Çatalpınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (759, 52, N'Çaybaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (760, 52, N'Fatsa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (761, 52, N'Gölköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (762, 52, N'Gülyalı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (763, 52, N'Gürgentepe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (764, 52, N'İkizce')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (765, 52, N'Kabadüz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (766, 52, N'Kabataş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (767, 52, N'Korgan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (768, 52, N'Kumru')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (769, 52, N'Mesudiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (770, 52, N'Perşembe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (771, 52, N'Ulubey')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (772, 52, N'Ünye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (773, 80, N'Bahçe')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (774, 80, N'Düziçi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (775, 80, N'Hasanbeyli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (776, 80, N'Kadirli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (777, 80, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (778, 80, N'Sumbas')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (779, 80, N'Toprakkale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (780, 53, N'Ardeşen')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (781, 53, N'Çamlıhemşin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (782, 53, N'Çayeli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (783, 53, N'Derepazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (784, 53, N'Fındıklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (785, 53, N'Güneysu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (786, 53, N'Hemşin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (787, 53, N'İkizdere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (788, 53, N'İyidere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (789, 53, N'Kalkandere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (790, 53, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (791, 53, N'Pazar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (792, 54, N'Adapazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (793, 54, N'Akyazı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (794, 54, N'Arifiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (795, 54, N'Erenler')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (796, 54, N'Ferizli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (797, 54, N'Geyve')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (798, 54, N'Hendek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (799, 54, N'Karapürçek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (800, 54, N'Karasu')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (801, 54, N'Kaynarca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (802, 54, N'Kocaali')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (803, 54, N'Pamukova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (804, 54, N'Sapanca')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (805, 54, N'Serdivan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (806, 54, N'Söğütlü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (807, 54, N'Taraklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (808, 55, N'19 Mayıs')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (809, 55, N'Alaçam')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (810, 55, N'Asarcık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (811, 55, N'Atakum')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (812, 55, N'Ayvacık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (813, 55, N'Bafra')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (814, 55, N'Canik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (815, 55, N'Çarşamba')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (816, 55, N'Havza')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (817, 55, N'İlkadım')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (818, 55, N'Kavak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (819, 55, N'Ladik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (820, 55, N'Salıpazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (821, 55, N'Tekkeköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (822, 55, N'Terme')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (823, 55, N'Vezirköprü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (824, 55, N'Yakakent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (825, 56, N'Baykan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (826, 56, N'Eruh')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (827, 56, N'Kurtalan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (828, 56, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (829, 56, N'Pervari')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (830, 56, N'Şirvan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (831, 56, N'Tillo')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (832, 57, N'Ayancık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (833, 57, N'Boyabat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (834, 57, N'Dikmen')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (835, 57, N'Durağan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (836, 57, N'Erfelek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (837, 57, N'Gerze')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (838, 57, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (839, 57, N'Saraydüzü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (840, 57, N'Türkeli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (841, 58, N'Akıncılar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (842, 58, N'Altınyayla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (843, 58, N'Divriği')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (844, 58, N'Doğanşar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (845, 58, N'Gemerek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (846, 58, N'Gölova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (847, 58, N'Gürün')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (848, 58, N'Hafik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (849, 58, N'İmranlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (850, 58, N'Kangal')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (851, 58, N'Koyulhisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (852, 58, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (853, 58, N'Suşehri')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (854, 58, N'Şarkışla')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (855, 58, N'Ulaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (856, 58, N'Yıldızeli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (857, 58, N'Zara')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (858, 63, N'Akçakale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (859, 63, N'Birecik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (860, 63, N'Bozova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (861, 63, N'Ceylanpınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (862, 63, N'Eyyübiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (863, 63, N'Halfeti')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (864, 63, N'Haliliye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (865, 63, N'Harran')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (866, 63, N'Hilvan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (867, 63, N'Karaköprü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (868, 63, N'Siverek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (869, 63, N'Suruç')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (870, 63, N'Viranşehir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (871, 73, N'Beytüşşebap')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (872, 73, N'Cizre')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (873, 73, N'Güçlükonak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (874, 73, N'İdil')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (875, 73, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (876, 73, N'Silopi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (877, 73, N'Uludere')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (878, 59, N'Çerkezköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (879, 59, N'Çorlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (880, 59, N'Ergene')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (881, 59, N'Hayrabolu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (882, 59, N'Kapaklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (883, 59, N'Malkara')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (884, 59, N'Marmaraereğlisi')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (885, 59, N'Muratlı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (886, 59, N'Saray')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (887, 59, N'Süleymanpaşa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (888, 59, N'Şarköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (889, 60, N'Almus')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (890, 60, N'Artova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (891, 60, N'Başçiftlik')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (892, 60, N'Erbaa')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (893, 60, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (894, 60, N'Niksar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (895, 60, N'Pazar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (896, 60, N'Reşadiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (897, 60, N'Sulusaray')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (898, 60, N'Turhal')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (899, 60, N'Yeşilyurt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (900, 60, N'Zile')
GO
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (901, 61, N'Akçaabat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (902, 61, N'Araklı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (903, 61, N'Arsin')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (904, 61, N'Beşikdüzü')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (905, 61, N'Çarşıbaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (906, 61, N'Çaykara')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (907, 61, N'Dernekpazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (908, 61, N'Düzköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (909, 61, N'Hayrat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (910, 61, N'Köprübaşı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (911, 61, N'Maçka')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (912, 61, N'Of')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (913, 61, N'Ortahisar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (914, 61, N'Sürmene')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (915, 61, N'Şalpazarı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (916, 61, N'Tonya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (917, 61, N'Vakfıkebir')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (918, 61, N'Yomra')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (919, 62, N'Çemişgezek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (920, 62, N'Hozat')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (921, 62, N'Mazgirt')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (922, 62, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (923, 62, N'Nazımiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (924, 62, N'Ovacık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (925, 62, N'Pertek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (926, 62, N'Pülümür')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (927, 64, N'Banaz')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (928, 64, N'Eşme')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (929, 64, N'Karahallı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (930, 64, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (931, 64, N'Sivaslı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (932, 64, N'Ulubey')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (933, 65, N'Bahçesaray')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (934, 65, N'Başkale')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (935, 65, N'Çaldıran')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (936, 65, N'Çatak')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (937, 65, N'Edremit')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (938, 65, N'Erciş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (939, 65, N'Gevaş')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (940, 65, N'Gürpınar')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (941, 65, N'İpekyolu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (942, 65, N'Muradiye')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (943, 65, N'Özalp')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (944, 65, N'Saray')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (945, 65, N'Tuşba')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (946, 77, N'Altınova')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (947, 77, N'Armutlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (948, 77, N'Çınarcık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (949, 77, N'Çiftlikköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (950, 77, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (951, 77, N'Termal')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (952, 66, N'Akdağmadeni')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (953, 66, N'Aydıncık')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (954, 66, N'Boğazlıyan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (955, 66, N'Çandır')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (956, 66, N'Çayıralan')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (957, 66, N'Çekerek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (958, 66, N'Kadışehri')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (959, 66, N'Merkez')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (960, 66, N'Saraykent')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (961, 66, N'Sarıkaya')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (962, 66, N'Sorgun')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (963, 66, N'Şefaatli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (964, 66, N'Yenifakılı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (965, 66, N'Yerköy')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (966, 67, N'Alaplı')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (967, 67, N'Çaycuma')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (968, 67, N'Devrek')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (969, 67, N'Ereğli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (970, 67, N'Gökçebey')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (971, 67, N'Kilimli')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (972, 67, N'Kozlu')
INSERT [dbo].[ilceler] ([ilce_no], [plaka_id], [ilce_adi]) VALUES (973, 67, N'Merkez')
GO
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (1, N'CABRIO')
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (2, N'COUPE')
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (3, N'HATCHBACK/3')
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (4, N'HATCHBACK/5')
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (5, N'MVP')
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (6, N'ROADSTER')
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (7, N'SEDAN')
INSERT [dbo].[kasa_tipleri] ([kasa_tip_no], [kasa_tipi]) VALUES (8, N'STATION VAGON')
GO
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (1, 60)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (2, 65)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (3, 70)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (4, 75)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (5, 80)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (6, 85)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (7, 90)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (8, 95)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (9, 100)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (10, 105)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (11, 110)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (12, 115)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (13, 120)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (14, 125)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (15, 130)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (16, 135)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (17, 140)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (18, 145)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (19, 150)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (20, 155)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (21, 160)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (22, 165)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (23, 170)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (24, 175)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (25, 180)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (26, 185)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (27, 190)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (28, 195)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (29, 200)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (30, 205)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (31, 210)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (32, 215)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (33, 220)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (34, 225)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (35, 230)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (36, 235)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (37, 240)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (38, 245)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (39, 250)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (40, 255)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (41, 260)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (42, 265)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (43, 270)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (44, 275)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (45, 280)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (46, 285)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (47, 290)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (48, 295)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (49, 300)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (50, 305)
INSERT [dbo].[motor_gucleri] ([motor_gucu_no], [motor_gucu]) VALUES (51, 310)
GO
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (1, N'0.9')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (2, N'1.0')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (3, N'1.2')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (4, N'1.3')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (5, N'1.4')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (6, N'1.5')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (7, N'1.6')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (8, N'1.7')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (9, N'1.8')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (10, N'1.9')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (11, N'2.0')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (12, N'2.2')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (13, N'2.3')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (14, N'2.4')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (15, N'2.5')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (17, N'2.7')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (18, N'3.0')
INSERT [dbo].[motor_hacimleri] ([motor_hacmi_no], [motor_hacmi]) VALUES (19, N'0')
GO
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (1, N'Kırmızı')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (2, N'Mavi')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (3, N'Yeşil')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (4, N'Sarı')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (5, N'Turuncu')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (6, N'Mor')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (7, N'Beyaz')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (8, N'Siyah')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (9, N'Gri')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (10, N'Pembe')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (11, N'Kahverengi')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (12, N'Lacivert')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (13, N'Bej')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (14, N'Altın')
INSERT [dbo].[renkler] ([renk_no], [renk]) VALUES (15, N'Gümüş')
GO
SET IDENTITY_INSERT [dbo].[sehirler] ON 

INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (1, N'ADANA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (3, N'AFYON')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (4, N'AĞRI')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (5, N'AMASYA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (6, N'ANKARA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (7, N'ANTALYA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (8, N'ARTVİN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (9, N'AYDIN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (11, N'BARTIN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (12, N'BİLECİK')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (13, N'BİTLIS')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (14, N'BOLU')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (15, N'BURDUR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (16, N'BURSA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (19, N'ÇORUM')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (22, N'EDİRNE')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (25, N'ERZURUM')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (28, N'GİRESUN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (31, N'HATAY')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (32, N'ISPARTA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (33, N'MERSİN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (35, N'İZMİR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (36, N'KARS')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (40, N'KIRŞEHİR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (42, N'KONYA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (44, N'MALATYA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (45, N'MANİSA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (46, N'KAHRAMANMARAŞ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (47, N'MARDİN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (48, N'MUĞLA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (49, N'MUŞ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (50, N'NEVŞEHİR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (51, N'NİĞDE')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (52, N'ORDU')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (53, N'RİZE')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (54, N'SAKARYA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (55, N'SAMSUN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (56, N'SİİRT')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (57, N'SİNOP')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (58, N'SİVAS')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (60, N'TOKAT')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (61, N'TRABZON')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (64, N'UŞAK')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (65, N'VAN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (66, N'YOZGAT')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (68, N'AKSARAY')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (69, N'BAYBURT')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (70, N'KARAMAN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (72, N'BATMAN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (74, N'BARTIN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (76, N'IĞDIR')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (77, N'YALOVA')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (78, N'KARABÜK')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (79, N'KİLİS')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[sehirler] ([plaka], [sehir_adi]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[sehirler] OFF
GO
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (15, 37, N'Ford')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (17, 37, N'Honda')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (18, 37, N'Hyundai')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (62, 38, N'Ford')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (64, 38, N'Honda')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (65, 38, N'Hyundai')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (66, 107, N'Ikco')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (95, 51, N'Tesla')
INSERT [dbo].[tasit_markalari] ([tas_marka_no], [uretim_yil_id], [tas_marka_adi]) VALUES (96, 107, N'Tesla')
GO
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (1, 17, N'Accord')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (2, 17, N'City')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (3, 17, N'Civic')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (4, 17, N'Integra')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (5, 17, N'Jazz')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (6, 18, N'Coupe')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (7, 18, N'Elantra')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (8, 18, N'i10')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (9, 18, N'i20')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (10, 18, N'i20 Active')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (11, 18, N'i20 N')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (12, 18, N'i40')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (13, 18, N'Matrix')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (14, 15, N'Fiesta')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (15, 15, N'Focus')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (16, 15, N'Galaxy')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (17, 15, N'Mondeo')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (18, 15, N'Mustang')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (19, 15, N'S-Max')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (20, 64, N'Accord')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (21, 64, N'City')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (22, 64, N'Civic')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (23, 64, N'Integra')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (24, 64, N'Jazz')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (25, 65, N'Coupe')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (26, 65, N'Elantra')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (27, 65, N'i10')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (28, 65, N'i20')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (29, 65, N'i20 Active')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (30, 65, N'i20 N')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (31, 65, N'i40')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (32, 65, N'Matrix')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (39, 18, N'Ioniq')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (40, 95, N'Model 3')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (41, 95, N'Model S')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (42, 95, N'Model Y')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (43, 96, N'Model 3')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (44, 96, N'Model S')
INSERT [dbo].[tasit_modelleri] ([tas_model_no], [tas_marka_id], [tas_model_ad]) VALUES (45, 96, N'Model Y')
GO
SET IDENTITY_INSERT [dbo].[tasit_turleri] ON 

INSERT [dbo].[tasit_turleri] ([tas_tur_no], [tas_tur_adi]) VALUES (1, N'Otomobil')
INSERT [dbo].[tasit_turleri] ([tas_tur_no], [tas_tur_adi]) VALUES (2, N'Elektrikli Araçlar')
INSERT [dbo].[tasit_turleri] ([tas_tur_no], [tas_tur_adi]) VALUES (3, N'Minivan/Panelvan')
INSERT [dbo].[tasit_turleri] ([tas_tur_no], [tas_tur_adi]) VALUES (4, N'Arazi, SUV& Pickup')
SET IDENTITY_INSERT [dbo].[tasit_turleri] OFF
GO
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (11, 1, 1996)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (12, 1, 1997)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (13, 1, 1998)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (14, 1, 1999)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (15, 1, 2001)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (16, 1, 2002)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (17, 1, 2003)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (18, 1, 2004)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (19, 1, 2005)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (20, 1, 2006)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (21, 1, 2007)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (22, 1, 2008)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (23, 1, 2009)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (24, 1, 2010)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (25, 1, 2011)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (26, 1, 2012)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (27, 1, 2013)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (28, 1, 2014)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (29, 1, 2015)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (30, 1, 2016)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (31, 1, 2017)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (32, 1, 2018)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (33, 1, 2019)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (34, 1, 2020)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (35, 1, 2021)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (36, 1, 2022)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (37, 1, 2023)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (38, 1, 2024)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (39, 2, 2011)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (40, 2, 2012)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (41, 2, 2013)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (42, 2, 2014)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (43, 2, 2015)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (44, 2, 2016)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (45, 2, 2017)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (46, 2, 2018)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (47, 2, 2019)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (48, 2, 2020)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (49, 2, 2021)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (50, 2, 2022)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (51, 2, 2023)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (52, 2, 2024)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (53, 3, 1996)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (54, 3, 1997)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (55, 3, 1998)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (56, 3, 1999)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (57, 3, 2001)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (58, 3, 2002)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (59, 3, 2003)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (60, 3, 2004)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (61, 3, 2005)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (62, 3, 2006)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (63, 3, 2007)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (64, 3, 2008)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (65, 3, 2009)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (66, 3, 2010)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (67, 3, 2011)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (68, 3, 2012)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (69, 3, 2013)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (70, 3, 2014)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (71, 3, 2015)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (72, 3, 2016)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (73, 3, 2017)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (74, 3, 2018)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (75, 3, 2019)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (76, 3, 2020)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (77, 3, 2021)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (78, 3, 2022)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (79, 3, 2023)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (80, 3, 2024)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (81, 4, 1996)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (82, 4, 1997)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (83, 4, 1998)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (84, 4, 1999)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (85, 4, 2001)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (86, 4, 2002)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (87, 4, 2003)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (88, 4, 2004)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (89, 4, 2005)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (90, 4, 2006)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (91, 4, 2007)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (92, 4, 2008)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (93, 4, 2009)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (94, 4, 2010)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (95, 4, 2011)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (96, 4, 2012)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (97, 4, 2013)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (98, 4, 2014)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (99, 4, 2015)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (100, 4, 2016)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (101, 4, 2017)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (102, 4, 2018)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (103, 4, 2019)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (104, 4, 2020)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (105, 4, 2021)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (106, 4, 2022)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (107, 4, 2023)
INSERT [dbo].[uretim_yili] ([uretim_yili_no], [tas_tur_id], [yillar]) VALUES (108, 4, 2024)
GO
SET IDENTITY_INSERT [dbo].[uyeler] ON 

INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (1, N'alperkd', N'781462', N'11747129282', N'Alper Kaan Dinc', N'alperkaan@gmail.com', N'54148482902', 34, 484, NULL, N'profilfotoyok.png')
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (2, N'Hakan_Var', N'123456', N'38936728940', N'Hakan', N'Varoglu', N'54438294902', 35, 494, NULL, NULL)
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (3, N'Bilalk', N'7812221', N'12345678976', N'Bilal Mese', N'mese@hotmail.com', N'5566778899', 1, 2, NULL, NULL)
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (5, N'Adnans', N'264187', N'3899892873', N'Adnan Sen', N'adnan@hotmail.com', N'5337338393', 4, 45, NULL, NULL)
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (6, N'burakD', N'678996', N'14826347823', N'Burak Durak', N'bdurak@gmail.com', N'5318534543', 1, 5, NULL, NULL)
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (7, N'gokhano', N'1234567', N'11992288111', N'Gokhan Ozek', N'gokhan@gmail.com', N'5437788818', 54, 792, NULL, NULL)
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (8, N'Dundaru', N'7890123', N'22889966942', N'Dundar Ugur', N'dundar@hotmail.com', N'5332111186', 10, 152, NULL, N'profilfotoyok.png')
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (9, N'halilm', N'567890', N'2345667865', N'Halil Mutlu', N'mutluh@gmail.com', N'5447745434', 49, 739, NULL, NULL)
INSERT [dbo].[uyeler] ([uyeno], [kuladi], [sifre], [uye_TC], [adsoyad], [Email], [Telefon], [plaka_id], [ilce_id], [KayitTarihi], [uye_foto]) VALUES (10, N'kaans', N'99887766', N'35487954573', N'Kaan Sandal', N'kaan@hotmail.com', N'5312678789', 61, 904, NULL, NULL)
SET IDENTITY_INSERT [dbo].[uyeler] OFF
GO
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (1, 1, N'Executive')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (1, 2, N'Executive Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (2, 3, N'Elegance')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (2, 4, N'Executive')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 5, N'Eco Elagance')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 6, N'Eco Executive Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 7, N'Eco Premium')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 8, N'Elegance')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 9, N'Executive Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 10, N'Sport')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 11, N'Sport Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 12, N'Dream')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 13, N'Eco Elegance')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 14, N'Eco Executive')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 15, N'Elegance')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 16, N'Executive')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (3, 17, N'Type-R')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (5, 18, N'Dream')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (5, 19, N'Elegance')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (6, 20, N'Dynamic')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (7, 21, N'Elite')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (7, 22, N'Elite Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (7, 23, N'Smart')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (7, 24, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (7, 25, N'Style Confort')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (7, 26, N'Style Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (8, 27, N'Jump')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (8, 28, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (8, 29, N'Elite')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (8, 30, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 31, N'Active Elite')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 32, N'Elite')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 33, N'Elite Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 34, N'Elite Smart')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 35, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 36, N'Style Desing Pack')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 37, N'Style Desing Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 38, N'Style Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 39, N'Jump')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 40, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 41, N'Active Elite')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 42, N'Elite')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 43, N'Elite Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 44, N'Jump')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 45, N'Smart')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 46, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 47, N'Style Desing')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (9, 48, N'Style Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (10, 49, N'Elite Smart')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (11, 50, N'N')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (12, 51, N'Prime')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (13, 52, N'Select')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (13, 53, N'Start')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (13, 54, N'Style Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (14, 55, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (14, 56, N'Titanium')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (14, 57, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (14, 58, N'TitaniumX')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (14, 59, N'Trend')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (14, 60, N'Ecoboost ST Line')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (15, 61, N'Ecoboost Active X')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (15, 62, N'Ecoboost ST Line')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (15, 63, N'Ecoboost Titanium Stil')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (15, 64, N'Ecoboost Titanium X')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (15, 65, N'Ecoboost Trend X')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (15, 66, N'Ti-VCT Titanium')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (15, 67, N'Ti-VCT Trend X')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (16, 68, N'Ecoboost Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (17, 69, N'Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (17, 70, N'Titanium')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (17, 71, N'Ecoboost Style')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (17, 72, N'Ecoboost Titanium')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (39, 73, N'6 53kWh Advance')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (39, 74, N'6 53kWh Progressive')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (39, 75, N'6 77.4kWh Progressive')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (40, 76, N'75 kWh AWD Long Range')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (40, 77, N'75kWh AWD Performans')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (40, 78, N'54kWh Standart Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 79, N'S70')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 80, N'70D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 81, N'75')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 82, N'75D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 83, N'85')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 84, N'85D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 85, N'90D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 86, N'100D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 87, N'P85D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 88, N'P90D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (41, 89, N'P100D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (42, 90, N'70kWh Long Range AWD')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (42, 91, N'75kWh Long Range AWD')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (42, 92, N'77kWh Performance AWD')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (43, 93, N'75kWh AWD Longe Range')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (43, 94, N'54kWh Standart Plus')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (43, 95, N'75kWh Performans')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 96, N'S70')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 97, N'70D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 98, N'75')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 99, N'75D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 100, N'85')
GO
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 101, N'85D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 102, N'90D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 103, N'100D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 104, N'P85D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 105, N'P90D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (44, 106, N'P100D')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (45, 107, N'70kWh Long Range AWD')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (45, 108, N'75kWh Long Range AWD')
INSERT [dbo].[varyantlar] ([tas_model_id], [varyant_no], [varyant_ad]) VALUES (45, 109, N'77kWh Performance AWD')
GO
INSERT [dbo].[vites_tipi] ([vites_tip_no], [vites_tip]) VALUES (1, N'MANUEL')
INSERT [dbo].[vites_tipi] ([vites_tip_no], [vites_tip]) VALUES (2, N'OTOMATIK')
INSERT [dbo].[vites_tipi] ([vites_tip_no], [vites_tip]) VALUES (3, N'YARI OTOMATIK')
GO
INSERT [dbo].[yakit_tipleri] ([yakit_tipi_no], [yakit_tip]) VALUES (1, N'Benzin')
INSERT [dbo].[yakit_tipleri] ([yakit_tipi_no], [yakit_tip]) VALUES (2, N'Mazot')
INSERT [dbo].[yakit_tipleri] ([yakit_tipi_no], [yakit_tip]) VALUES (3, N'Hybrit')
INSERT [dbo].[yakit_tipleri] ([yakit_tipi_no], [yakit_tip]) VALUES (4, N'Benzin/LPG')
INSERT [dbo].[yakit_tipleri] ([yakit_tipi_no], [yakit_tip]) VALUES (5, N'Elektrik')
GO
/****** Object:  Index [uk_admin_kuladi]    Script Date: 3.09.2024 19:04:56 ******/
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [uk_admin_kuladi] UNIQUE NONCLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__uyeler__A9D10534823C86FD]    Script Date: 3.09.2024 19:04:56 ******/
ALTER TABLE [dbo].[uyeler] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__uyeler__BDF6359E2F3BEABB]    Script Date: 3.09.2024 19:04:56 ******/
ALTER TABLE [dbo].[uyeler] ADD UNIQUE NONCLUSTERED 
(
	[kuladi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__uyeler__C15D838A90538DD5]    Script Date: 3.09.2024 19:04:56 ******/
ALTER TABLE [dbo].[uyeler] ADD UNIQUE NONCLUSTERED 
(
	[uye_TC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ilan_goster] ADD  CONSTRAINT [DF__ilan_gost__ilan___09A971A2]  DEFAULT (getdate()) FOR [ilan_tarihi]
GO
ALTER TABLE [dbo].[uyeler] ADD  DEFAULT (getdate()) FOR [KayitTarihi]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [FK_ilan_goster_tasit_turleri] FOREIGN KEY([tas_tur_id])
REFERENCES [dbo].[tasit_turleri] ([tas_tur_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [FK_ilan_goster_tasit_turleri]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [FK_ilan_goster_uretim_yili] FOREIGN KEY([uretim_yil_id])
REFERENCES [dbo].[uretim_yili] ([uretim_yili_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [FK_ilan_goster_uretim_yili]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_ilce_ilan] FOREIGN KEY([ilce_id])
REFERENCES [dbo].[ilceler] ([ilce_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_ilce_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_kasatip_ilan] FOREIGN KEY([kasa_tip_id])
REFERENCES [dbo].[kasa_tipleri] ([kasa_tip_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_kasatip_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_markalar_ilan] FOREIGN KEY([tas_marka_id])
REFERENCES [dbo].[tasit_markalari] ([tas_marka_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_markalar_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_modeller_ilan] FOREIGN KEY([tas_model_id])
REFERENCES [dbo].[tasit_modelleri] ([tas_model_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_modeller_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_motorgucu_ilan] FOREIGN KEY([motor_gucu_id])
REFERENCES [dbo].[motor_gucleri] ([motor_gucu_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_motorgucu_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_motorhacmi_ilan] FOREIGN KEY([motor_hacmi_id])
REFERENCES [dbo].[motor_hacimleri] ([motor_hacmi_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_motorhacmi_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_renk_ilan] FOREIGN KEY([renk_id])
REFERENCES [dbo].[renkler] ([renk_no])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_renk_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_sehir_ilan] FOREIGN KEY([plaka_id])
REFERENCES [dbo].[sehirler] ([plaka])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_sehir_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_uyeler_ilan] FOREIGN KEY([uyeid])
REFERENCES [dbo].[uyeler] ([uyeno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_uyeler_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_varyant_ilan] FOREIGN KEY([varyant_id])
REFERENCES [dbo].[varyantlar] ([varyant_no])
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_varyant_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_vites_ilan] FOREIGN KEY([vites_tip_id])
REFERENCES [dbo].[vites_tipi] ([vites_tip_no])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_vites_ilan]
GO
ALTER TABLE [dbo].[ilan_goster]  WITH CHECK ADD  CONSTRAINT [fk_yakit_ilan] FOREIGN KEY([yakit_tipi_id])
REFERENCES [dbo].[yakit_tipleri] ([yakit_tipi_no])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ilan_goster] CHECK CONSTRAINT [fk_yakit_ilan]
GO
ALTER TABLE [dbo].[ilceler]  WITH CHECK ADD  CONSTRAINT [fk_sehir_ilce] FOREIGN KEY([plaka_id])
REFERENCES [dbo].[sehirler] ([plaka])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ilceler] CHECK CONSTRAINT [fk_sehir_ilce]
GO
ALTER TABLE [dbo].[tasit_markalari]  WITH CHECK ADD  CONSTRAINT [fk_uretim_yil_tasit_marka] FOREIGN KEY([uretim_yil_id])
REFERENCES [dbo].[uretim_yili] ([uretim_yili_no])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tasit_markalari] CHECK CONSTRAINT [fk_uretim_yil_tasit_marka]
GO
ALTER TABLE [dbo].[tasit_modelleri]  WITH CHECK ADD  CONSTRAINT [fk_tasit_marka_tasit_model] FOREIGN KEY([tas_marka_id])
REFERENCES [dbo].[tasit_markalari] ([tas_marka_no])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tasit_modelleri] CHECK CONSTRAINT [fk_tasit_marka_tasit_model]
GO
ALTER TABLE [dbo].[uretim_yili]  WITH CHECK ADD  CONSTRAINT [FK_uretim_yili_tasit_turleri] FOREIGN KEY([tas_tur_id])
REFERENCES [dbo].[tasit_turleri] ([tas_tur_no])
GO
ALTER TABLE [dbo].[uretim_yili] CHECK CONSTRAINT [FK_uretim_yili_tasit_turleri]
GO
ALTER TABLE [dbo].[varyantlar]  WITH CHECK ADD  CONSTRAINT [fk_tasit_model_varyant] FOREIGN KEY([tas_model_id])
REFERENCES [dbo].[tasit_modelleri] ([tas_model_no])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[varyantlar] CHECK CONSTRAINT [fk_tasit_model_varyant]
GO

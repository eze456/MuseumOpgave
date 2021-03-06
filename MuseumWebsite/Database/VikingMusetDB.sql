USE [dbMuseum]
GO
/****** Object:  Table [dbo].[tblThema]    Script Date: 04/05/2016 09:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblThema](
	[fldThemaID] [int] IDENTITY(1,1) NOT NULL,
	[fldTitle] [varchar](300) NOT NULL,
	[fldDescription] [varchar](max) NOT NULL,
	[fldImage] [varchar](20) NULL,
 CONSTRAINT [PK_tblThema] PRIMARY KEY CLUSTERED 
(
	[fldThemaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblThema] ON
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (2, N'Hvem var vikingerne?', N'Vikingerne var skandinaver – svenskere, nordmænd og danskere. Almindeligvis forbinder man ordet viking med sørøveri og plyndringer, men vikingernes aktiviteter var langt mere omfattende.', N'moenter.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (3, N'Angreb og forsvar', N'Aros´ placering direkte ud mod det åbne hav var en ulempe for forsvaret af byen.', N'horn.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (4, N'Tidlig advarsel', N'På Djursland findes mindst otte stednavne, hvori navnet Baunehøj indgår. På toppen af disse høje blev der ifølge traditionen tændt store bål, bavne, når faren truede udefra.', N'ild.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (5, N'Fremskudt søforsvar', N'Fjendens fremrykning mod Aros kunne forsinkes af et fremskudt forsvar af snekker (mindre eller mellemstore krigsskibe) mellem Helgenæs og Issehoved på Samsø, hvor en indsnævring af farvandet dannede en naturlig forsvarsposition.', N'fisk.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (6, N'Angreb på Aros', N'Det årvågne vagtmadskab på Bavnehøj ved Bønnerup opdager i den tidlige morgendæmring en stor fjentlig flåde, der hurtigt nærmer sig nordøstsiden af Djursland nordfra. Vagterne tænder omgående deres bavn, der straks blusser op under stor røgudvikling', N'soelv.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (7, N'Byens forsvar', N'For at kunne modstå angreb på byen blev Aros i år 934 omgivet af vold og grav. Omkring 980 beordrede Harald Blåtand befæstningen forstærket, og med sine 5-6 meter i højden og 18 meter i bredden udgjorde volden en reel forhindring for angribere fra landsiden. Fra søsiden blev byen desuden forsvaret af kongens ledningsflåde, der blandt andet lå udstationeret ved Helgenæs og Samsø.', N'oekse.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (8, N'Dagligliv', N'Fundene fra Aros er præget af dagliglivet i byen: husgeråd, personligt udstyr og affald af enhver slags. Enkelte fund afspejler i særlig grad byborenes hovederhverv: handel og håndværk.', N'gryde.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (9, N'De nordiske guder', N'I den nordiske mytologi er der et væld af guder, der har forskellige egenskaber, og som der er knyttet forskellige historier til', N'hjelm.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (10, N'Den nye tro', N'En af de vigtigste begivenheder i vikingetiden er trosskiftet. I slutningen af 700-tallet er Norden et område, hvor der blev ofret til de nordiske guder, men i løbet af de næste 300 år fik kristendommen fodfæste.', N'Kirke.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (11, N'Ben, tak og glas', N'Vikingerne friserede hyppigt hår og skæg, og de holdt af at pynte sig med perler og smykker. I Aros er der fundet affald efter kammageri mange steder, og fund af glasperler og halvfabrikita afspejler lokal glasperleproduktion.', N'bugle.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (12, N'Metal of træ', N'Med byernes opståen blev håndværksproduktionen, der før da overvejende fandt sted ude i landsbyerne, placeret i byerne, hvor der efterhånden udviklede sig flere og flere håndværksgrene. Således også i Aros, hvor vi har fundet resterne af håndværkernes værksteder, redskaber, råmaterialer, affald og frem fir alt produkterne.', N'skjold.png')
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage]) VALUES (19, N'Vikingeskibene', N'Skibet var vikingernes vigtigste transportmiddel. Uden skibe kunne et ørige som Danmark ikke hænge sammen, og uden skibe kunne vikingetidens plyndringer, søhandel og kolonisation langs Europas kyster, over Nordsøen og Nordatlanten ikke have fundet sted.', N'vikingeskib.png')
SET IDENTITY_INSERT [dbo].[tblThema] OFF
/****** Object:  Table [dbo].[tblKontakt]    Script Date: 04/05/2016 09:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKontakt](
	[fldKontaktID] [int] IDENTITY(1,1) NOT NULL,
	[fldAdress] [varchar](250) NOT NULL,
	[fldBy] [varchar](100) NOT NULL,
	[fldPostnr] [int] NOT NULL,
	[fldEmail] [varchar](50) NOT NULL,
	[fldTelefone] [int] NOT NULL,
 CONSTRAINT [PK_tblKontakt] PRIMARY KEY CLUSTERED 
(
	[fldKontaktID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKontakt] ON
INSERT [dbo].[tblKontakt] ([fldKontaktID], [fldAdress], [fldBy], [fldPostnr], [fldEmail], [fldTelefone]) VALUES (1, N'Skt. Clemens Torv 6', N'Aarhus', 8000, N'INFO@MOESGAARDMUSEUM.DK', 87394000)
SET IDENTITY_INSERT [dbo].[tblKontakt] OFF
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 04/05/2016 09:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[fldAdminID] [int] IDENTITY(1,1) NOT NULL,
	[fldBrugerNavn] [varchar](50) NOT NULL,
	[fldPassword] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[fldAdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAdmin] ON
INSERT [dbo].[tblAdmin] ([fldAdminID], [fldBrugerNavn], [fldPassword]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[tblAdmin] OFF

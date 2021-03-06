USE [dbMuseum]
GO
/****** Object:  Table [dbo].[tblTider]    Script Date: 04/07/2016 21:45:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTider](
	[fldTidID] [int] IDENTITY(1,1) NOT NULL,
	[fldAabningstid] [varchar](50) NOT NULL,
	[fldHverdage] [varchar](50) NOT NULL,
	[fldTorsdag] [varchar](50) NOT NULL,
	[fldWogH] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblTider] PRIMARY KEY CLUSTERED 
(
	[fldTidID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblTider] ON
INSERT [dbo].[tblTider] ([fldTidID], [fldAabningstid], [fldHverdage], [fldTorsdag], [fldWogH]) VALUES (1, N'Åbningstider', N'Hverdage kl 10.15-16', N'Torsdage åbent til kl.17', N'Lukket i weekender og på helligdage')
SET IDENTITY_INSERT [dbo].[tblTider] OFF
/****** Object:  Table [dbo].[tblThema]    Script Date: 04/07/2016 21:45:15 ******/
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
	[fldkatID_fk] [int] NULL,
 CONSTRAINT [PK_tblThema] PRIMARY KEY CLUSTERED 
(
	[fldThemaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblThema] ON
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (1, N'Velkommen til viking Museum', N'Vikingetiden varede fra slutningen af 700-tallet til slutningen af 1000-tallet. For godt 1200 år siden grundlagde vikingerne Århus – i det niveau, hvor du står nu.', N'hjelm.png', 1)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (2, N'Hvem var vikingerne?', N'Vikingerne var skandinaver – svenskere, nordmænd og danskere. Almindeligvis forbinder man ordet viking med sørøveri og plyndringer, men vikingernes aktiviteter var langt mere omfattende.', N'vikingeskib.png', 1)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (3, N'Angreb og forsvar', N'Aros´ placering direkte ud mod det åbne hav var en ulempe for forsvaret af byen.', N'oekse.png', 2)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (4, N'Tidlig advarsel', N'På Djursland findes mindst otte stednavne, hvori navnet Baunehøj indgår. På toppen af disse høje blev der ifølge traditionen tændt store bål, bavne, når faren truede udefra.', N'bugle.png', 2)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (5, N'Fremskudt søforsvar', N'Fjendens fremrykning mod Aros kunne forsinkes af et fremskudt forsvar af snekker (mindre eller mellemstore krigsskibe) mellem Helgenæs og Issehoved på Samsø, hvor en indsnævring af farvandet dannede en naturlig forsvarsposition.', N'fisk.png', 3)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (6, N'Angreb på Aros', N'Det årvågne vagtmadskab på Bavnehøj ved Bønnerup opdager i den tidlige morgendæmring en stor fjentlig flåde, der hurtigt nærmer sig nordøstsiden af Djursland nordfra. Vagterne tænder omgående deres bavn, der straks blusser op under stor røgudvikling', N'ild.png', 2)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (7, N'Byens forsvar', N'For at kunne modstå angreb på byen blev Aros i år 934 omgivet af vold og grav. Omkring 980 beordrede Harald Blåtand befæstningen forstærket, og med sine 5-6 meter i højden og 18 meter i bredden udgjorde volden en reel forhindring for angribere fra landsiden. Fra søsiden blev byen desuden forsvaret af kongens ledningsflåde, der blandt andet lå udstationeret ved Helgenæs og Samsø.', N'soelv.png', 2)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (8, N'Dagligliv', N'Fundene fra Aros er præget af dagliglivet i byen: husgeråd, personligt udstyr og affald af enhver slags. Enkelte fund afspejler i særlig grad byborenes hovederhverv: handel og håndværk.', N'gryde.png', 4)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (9, N'De nordiske guder', N'I den nordiske mytologi er der et væld af guder, der har forskellige egenskaber, og som der er knyttet forskellige historier til', N'hjelm.png', 4)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (10, N'Den nye tro', N'En af de vigtigste begivenheder i vikingetiden er trosskiftet. I slutningen af 700-tallet er Norden et område, hvor der blev ofret til de nordiske guder, men i løbet af de næste 300 år fik kristendommen fodfæste.', N'kirke.png', 4)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (11, N'Ben, tak og glas', N'Vikingerne friserede hyppigt hår og skæg, og de holdt af at pynte sig med perler og smykker. I Aros er der fundet affald efter kammageri mange steder, og fund af glasperler og halvfabrikita afspejler lokal glasperleproduktion.', N'horn.png', 5)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (12, N'Metal of træ', N'Med byernes opståen blev håndværksproduktionen, der før da overvejende fandt sted ude i landsbyerne, placeret i byerne, hvor der efterhånden udviklede sig flere og flere håndværksgrene. Således også i Aros, hvor vi har fundet resterne af håndværkernes værksteder, redskaber, råmaterialer, affald og frem fir alt produkterne.', N'skjold.png', 5)
INSERT [dbo].[tblThema] ([fldThemaID], [fldTitle], [fldDescription], [fldImage], [fldkatID_fk]) VALUES (13, N'Vikingeskibene', N'Skibet var vikingernes vigtigste transportmiddel. Uden skibe kunne et ørige som Danmark ikke hænge sammen, og uden skibe kunne vikingetidens plyndringer, søhandel og kolonisation langs Europas kyster, over Nordsøen og Nordatlanten ikke have fundet sted.', N'vikingeskib.png', 3)
SET IDENTITY_INSERT [dbo].[tblThema] OFF
/****** Object:  Table [dbo].[tblKontakt]    Script Date: 04/07/2016 21:45:15 ******/
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
INSERT [dbo].[tblKontakt] ([fldKontaktID], [fldAdress], [fldBy], [fldPostnr], [fldEmail], [fldTelefone]) VALUES (1, N'Skt. Clemens Torv 6', N'Aarhus', 9000, N'INFO@MOESGAARDMUSEUM.DK', 87394000)
SET IDENTITY_INSERT [dbo].[tblKontakt] OFF
/****** Object:  Table [dbo].[tblkat]    Script Date: 04/07/2016 21:45:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblkat](
	[fldKatID] [int] IDENTITY(1,1) NOT NULL,
	[fldkatnavn] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblkat] PRIMARY KEY CLUSTERED 
(
	[fldKatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblkat] ON
INSERT [dbo].[tblkat] ([fldKatID], [fldkatnavn]) VALUES (1, N'Introduktion')
INSERT [dbo].[tblkat] ([fldKatID], [fldkatnavn]) VALUES (2, N'Plyndring og kolonisering')
INSERT [dbo].[tblkat] ([fldKatID], [fldkatnavn]) VALUES (3, N'Til søs')
INSERT [dbo].[tblkat] ([fldKatID], [fldkatnavn]) VALUES (4, N'Vikingernes Hverdag')
INSERT [dbo].[tblkat] ([fldKatID], [fldkatnavn]) VALUES (5, N'Materialer i vikingetiden')
SET IDENTITY_INSERT [dbo].[tblkat] OFF
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 04/07/2016 21:45:15 ******/
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

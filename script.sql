USE [SoHoa]
GO
/****** Object:  Table [dbo].[S_Authority]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Authority](
	[AuthorityID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorityName] [nchar](10) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_Authority] PRIMARY KEY CLUSTERED 
(
	[AuthorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_CQCTuPhap]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_CQCTuPhap](
	[CQTuPhapID] [int] IDENTITY(1,1) NOT NULL,
	[TenCQTuPhap] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_CQCTuPhap] PRIMARY KEY CLUSTERED 
(
	[CQTuPhapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_CQHanhPhap]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_CQHanhPhap](
	[CQHanhPhapID] [int] IDENTITY(1,1) NOT NULL,
	[TenCQHanhPhap] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_CQHanhPhap] PRIMARY KEY CLUSTERED 
(
	[CQHanhPhapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_DonViHanhChinh]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_DonViHanhChinh](
	[DonViHanhChinhID] [int] IDENTITY(1,1) NOT NULL,
	[TenDonViHanhChinh] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_DonViHanhChinh] PRIMARY KEY CLUSTERED 
(
	[DonViHanhChinhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_File]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_File](
	[FileID] [int] IDENTITY(1,1) NOT NULL,
	[VanBanID] [int] NOT NULL,
	[TenFile] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_S_File_1] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_FileAttachment]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_FileAttachment](
	[FileAttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[FileID] [int] NOT NULL,
	[URL] [varchar](100) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_FileAttachment_1] PRIMARY KEY CLUSTERED 
(
	[FileAttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_HopSo]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_HopSo](
	[HopSoID] [int] IDENTITY(1,1) NOT NULL,
	[MucLucHoSoID] [int] NOT NULL,
	[TieuDeHopSo] [nvarchar](50) NULL,
	[SoluongHoSo] [int] NULL,
	[ThoiHanBaoQuan] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_S_HopSo_1] PRIMARY KEY CLUSTERED 
(
	[HopSoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_HoSo]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_HoSo](
	[HoSoID] [int] IDENTITY(1,1) NOT NULL,
	[HopSoID] [int] NOT NULL,
	[TieuDeHoSo] [nvarchar](50) NULL,
	[TenHoSo] [nvarchar](50) NULL,
	[SoLuongVanBan] [nchar](10) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_HoSo_1] PRIMARY KEY CLUSTERED 
(
	[HoSoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_Kho]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Kho](
	[KhoID] [int] IDENTITY(1,1) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_Kho] PRIMARY KEY CLUSTERED 
(
	[KhoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_LoaiHoSo]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_LoaiHoSo](
	[LoaiHoSoID] [int] IDENTITY(1,1) NOT NULL,
	[HoSoID] [int] NULL,
	[TenLoaiHoSo] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_LoaiHoSo] PRIMARY KEY CLUSTERED 
(
	[LoaiHoSoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_LuuTru]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_LuuTru](
	[MucLucHoSoID] [int] NULL,
	[KhoID] [int] NOT NULL,
	[PhongID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_Menu]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nchar](10) NULL,
	[RoleID] [int] NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_MucLucHoSo]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_MucLucHoSo](
	[MucLucHoSoID] [int] IDENTITY(1,1) NOT NULL,
	[PhongID] [int] NOT NULL,
	[TenMucLucHoSo] [nvarchar](50) NULL,
	[MucLucSo] [int] NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_MucLucHoSo_1] PRIMARY KEY CLUSTERED 
(
	[MucLucHoSoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_NhanVien]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_NhanVien](
	[NhanVienID] [int] IDENTITY(1,1) NOT NULL,
	[User] [char](50) NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[Email] [nchar](50) NULL,
	[CMND] [char](20) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_S_NhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_Page]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_Page](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[SystemID] [int] NULL,
	[PageName] [nchar](800) NULL,
	[URLPage] [char](800) NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_Page] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_Phong]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Phong](
	[PhongID] [int] IDENTITY(1,1) NOT NULL,
	[PhongSo] [nchar](10) NULL,
	[CQTuPhapID] [int] NULL,
	[CQHanhPhapID] [int] NULL,
	[DonViHanhChinhID] [int] NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_Phong_1] PRIMARY KEY CLUSTERED 
(
	[PhongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_Role_Uers_Atuthority]]]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Role_Uers_Atuthority]]](
	[SystemID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[AuthorityID] [int] NULL,
	[RoleID] [int] NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_Role_Uers_Atuthority]]] PRIMARY KEY CLUSTERED 
(
	[SystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_Users]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[UserName] [nchar](50) NULL,
	[Password] [nchar](800) NULL,
	[PasswordSalt] [nchar](800) NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiCapNhat] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_VanBan]    Script Date: 12/21/2019 11:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_VanBan](
	[VanBanID] [int] NOT NULL,
	[HoSoID] [int] NOT NULL,
	[TieuDeVanBan] [nvarchar](50) NULL,
	[TenVanBan] [nvarchar](50) NULL,
	[SoTo] [nchar](10) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_S_VanBan_1] PRIMARY KEY CLUSTERED 
(
	[VanBanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[S_File]  WITH CHECK ADD  CONSTRAINT [FK_S_File_S_VanBan] FOREIGN KEY([VanBanID])
REFERENCES [dbo].[S_VanBan] ([VanBanID])
GO
ALTER TABLE [dbo].[S_File] CHECK CONSTRAINT [FK_S_File_S_VanBan]
GO
ALTER TABLE [dbo].[S_FileAttachment]  WITH CHECK ADD  CONSTRAINT [FK_S_FileAttachment_S_File] FOREIGN KEY([FileAttachmentID])
REFERENCES [dbo].[S_File] ([FileID])
GO
ALTER TABLE [dbo].[S_FileAttachment] CHECK CONSTRAINT [FK_S_FileAttachment_S_File]
GO
ALTER TABLE [dbo].[S_HopSo]  WITH CHECK ADD  CONSTRAINT [FK_MucLucHoSoID] FOREIGN KEY([MucLucHoSoID])
REFERENCES [dbo].[S_MucLucHoSo] ([MucLucHoSoID])
GO
ALTER TABLE [dbo].[S_HopSo] CHECK CONSTRAINT [FK_MucLucHoSoID]
GO
ALTER TABLE [dbo].[S_HoSo]  WITH CHECK ADD  CONSTRAINT [FK_S_HoSo_S_HopSo] FOREIGN KEY([HopSoID])
REFERENCES [dbo].[S_HopSo] ([HopSoID])
GO
ALTER TABLE [dbo].[S_HoSo] CHECK CONSTRAINT [FK_S_HoSo_S_HopSo]
GO
ALTER TABLE [dbo].[S_LoaiHoSo]  WITH CHECK ADD  CONSTRAINT [FK_S_LoaiHoSo_S_HoSo] FOREIGN KEY([HoSoID])
REFERENCES [dbo].[S_HoSo] ([HoSoID])
GO
ALTER TABLE [dbo].[S_LoaiHoSo] CHECK CONSTRAINT [FK_S_LoaiHoSo_S_HoSo]
GO
ALTER TABLE [dbo].[S_LuuTru]  WITH CHECK ADD  CONSTRAINT [FK_S_LuuTru_S_Kho1] FOREIGN KEY([KhoID])
REFERENCES [dbo].[S_Kho] ([KhoID])
GO
ALTER TABLE [dbo].[S_LuuTru] CHECK CONSTRAINT [FK_S_LuuTru_S_Kho1]
GO
ALTER TABLE [dbo].[S_LuuTru]  WITH CHECK ADD  CONSTRAINT [FK_S_LuuTru_S_MucLucHoSo] FOREIGN KEY([MucLucHoSoID])
REFERENCES [dbo].[S_MucLucHoSo] ([MucLucHoSoID])
GO
ALTER TABLE [dbo].[S_LuuTru] CHECK CONSTRAINT [FK_S_LuuTru_S_MucLucHoSo]
GO
ALTER TABLE [dbo].[S_LuuTru]  WITH CHECK ADD  CONSTRAINT [FK_S_LuuTru_S_Phong1] FOREIGN KEY([PhongID])
REFERENCES [dbo].[S_Phong] ([PhongID])
GO
ALTER TABLE [dbo].[S_LuuTru] CHECK CONSTRAINT [FK_S_LuuTru_S_Phong1]
GO
ALTER TABLE [dbo].[S_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_S_NhanVien_S_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[S_Users] ([UserID])
GO
ALTER TABLE [dbo].[S_NhanVien] CHECK CONSTRAINT [FK_S_NhanVien_S_Users]
GO
ALTER TABLE [dbo].[S_Page]  WITH CHECK ADD  CONSTRAINT [FK_S_Page_S_Role_Uers_Atuthority]]] FOREIGN KEY([SystemID])
REFERENCES [dbo].[S_Role_Uers_Atuthority]]] ([SystemID])
GO
ALTER TABLE [dbo].[S_Page] CHECK CONSTRAINT [FK_S_Page_S_Role_Uers_Atuthority]]]
GO
ALTER TABLE [dbo].[S_Phong]  WITH CHECK ADD  CONSTRAINT [FK_S_Phong_S_CQCTuPhap] FOREIGN KEY([CQTuPhapID])
REFERENCES [dbo].[S_CQCTuPhap] ([CQTuPhapID])
GO
ALTER TABLE [dbo].[S_Phong] CHECK CONSTRAINT [FK_S_Phong_S_CQCTuPhap]
GO
ALTER TABLE [dbo].[S_Phong]  WITH CHECK ADD  CONSTRAINT [FK_S_Phong_S_CQHanhPhap] FOREIGN KEY([CQHanhPhapID])
REFERENCES [dbo].[S_CQHanhPhap] ([CQHanhPhapID])
GO
ALTER TABLE [dbo].[S_Phong] CHECK CONSTRAINT [FK_S_Phong_S_CQHanhPhap]
GO
ALTER TABLE [dbo].[S_Phong]  WITH CHECK ADD  CONSTRAINT [FK_S_Phong_S_DonViHanhChinh] FOREIGN KEY([DonViHanhChinhID])
REFERENCES [dbo].[S_DonViHanhChinh] ([DonViHanhChinhID])
GO
ALTER TABLE [dbo].[S_Phong] CHECK CONSTRAINT [FK_S_Phong_S_DonViHanhChinh]
GO
ALTER TABLE [dbo].[S_Role_Uers_Atuthority]]]  WITH CHECK ADD  CONSTRAINT [FK_S_Role_Uers_Atuthority]]_S_Authority] FOREIGN KEY([AuthorityID])
REFERENCES [dbo].[S_Authority] ([AuthorityID])
GO
ALTER TABLE [dbo].[S_Role_Uers_Atuthority]]] CHECK CONSTRAINT [FK_S_Role_Uers_Atuthority]]_S_Authority]
GO
ALTER TABLE [dbo].[S_Role_Uers_Atuthority]]]  WITH CHECK ADD  CONSTRAINT [FK_S_Role_Uers_Atuthority]]_S_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[S_Users] ([UserID])
GO
ALTER TABLE [dbo].[S_Role_Uers_Atuthority]]] CHECK CONSTRAINT [FK_S_Role_Uers_Atuthority]]_S_Users]
GO
ALTER TABLE [dbo].[S_VanBan]  WITH CHECK ADD  CONSTRAINT [FK_S_VanBan_S_HoSo] FOREIGN KEY([HoSoID])
REFERENCES [dbo].[S_HoSo] ([HoSoID])
GO
ALTER TABLE [dbo].[S_VanBan] CHECK CONSTRAINT [FK_S_VanBan_S_HoSo]
GO

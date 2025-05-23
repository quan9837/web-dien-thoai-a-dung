USE [master]
GO
/****** Object:  Database [Hshop2023]    Script Date: 4/21/2025 9:40:51 AM ******/
CREATE DATABASE [Hshop2023]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hshop2023', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DUNG\MSSQL\DATA\Hshop2023.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hshop2023_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DUNG\MSSQL\DATA\Hshop2023_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hshop2023].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hshop2023] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hshop2023] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hshop2023] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hshop2023] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hshop2023] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hshop2023] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hshop2023] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hshop2023] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hshop2023] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hshop2023] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hshop2023] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hshop2023] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hshop2023] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hshop2023] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hshop2023] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hshop2023] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hshop2023] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hshop2023] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hshop2023] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hshop2023] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hshop2023] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hshop2023] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hshop2023] SET RECOVERY FULL 
GO
ALTER DATABASE [Hshop2023] SET  MULTI_USER 
GO
ALTER DATABASE [Hshop2023] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hshop2023] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hshop2023] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hshop2023] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hshop2023', N'ON'
GO
USE [Hshop2023]
GO
/****** Object:  Table [dbo].[BanBe]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanBe](
	[MaBB] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [nvarchar](20) NULL,
	[MaHH] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[NgayGui] [datetime] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[MaBB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaHH] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiamGia] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GopY]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GopY](
	[MaGY] [nvarchar](50) NOT NULL,
	[MaCD] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayGY] [date] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[CanTraLoi] [bit] NOT NULL,
	[TraLoi] [nvarchar](50) NULL,
	[NgayTL] [date] NULL,
 CONSTRAINT [PK_GopY] PRIMARY KEY CLUSTERED 
(
	[MaGY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [int] IDENTITY(1,1) NOT NULL,
	[TenHH] [nvarchar](50) NOT NULL,
	[TenAlias] [nvarchar](50) NULL,
	[MaLoai] [int] NOT NULL,
	[MoTaDonVi] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[Hinh] [nvarchar](50) NULL,
	[NgaySX] [datetime] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[SoLanXem] [int] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaNCC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [nvarchar](20) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[NgayCan] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DienThoai] [nchar](24) NULL,
	[DiaChi] [nvarchar](60) NOT NULL,
	[CachThanhToan] [nvarchar](50) NOT NULL,
	[CachVanChuyen] [nvarchar](50) NOT NULL,
	[PhiVanChuyen] [float] NOT NULL,
	[MaTrangThai] [int] NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiDap]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiDap](
	[MaHD] [int] NOT NULL,
	[CauHoi] [nvarchar](50) NOT NULL,
	[TraLoi] [nvarchar](50) NOT NULL,
	[NgayDua] [date] NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HoiDap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[DiaChi] [nvarchar](60) NULL,
	[DienThoai] [nvarchar](24) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Hinh] [nvarchar](50) NULL,
	[HieuLuc] [bit] NOT NULL,
	[VaiTro] [int] NOT NULL,
	[RandomKey] [varchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[TenLoaiAlias] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Hinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenCongTy] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](50) NOT NULL,
	[NguoiLienLac] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaPC] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[MaPB] [varchar](7) NOT NULL,
	[NgayPC] [datetime] NULL,
	[HieuLuc] [bit] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPQ] [int] IDENTITY(1,1) NOT NULL,
	[MaPB] [varchar](7) NULL,
	[MaTrang] [int] NULL,
	[Them] [bit] NOT NULL,
	[Sua] [bit] NOT NULL,
	[Xoa] [bit] NOT NULL,
	[Xem] [bit] NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](7) NOT NULL,
	[TenPB] [nvarchar](50) NOT NULL,
	[ThongTin] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[MaTrangThai] [int] NOT NULL,
	[TenTrangThai] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangWeb]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangWeb](
	[MaTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTrang] [nvarchar](50) NOT NULL,
	[URL] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_TrangWeb] PRIMARY KEY CLUSTERED 
(
	[MaTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuThich]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThich](
	[MaYT] [int] IDENTITY(1,1) NOT NULL,
	[MaHH] [int] NULL,
	[MaKH] [nvarchar](20) NULL,
	[NgayChon] [datetime] NULL,
	[MoTa] [nvarchar](255) NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[MaYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vChiTietHoaDon]    Script Date: 4/21/2025 9:40:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vChiTietHoaDon]
AS 
	SELECT cthd.*, TenHH
	FROM ChiTietHD cthd JOIN HangHoa hh 
		ON hh.MaHH = cthd.MaHH


GO
SET IDENTITY_INSERT [dbo].[ChiTietHD] ON 

INSERT [dbo].[ChiTietHD] ([MaCT], [MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (102240, 2, 1149, 5990000, 2, 0)
INSERT [dbo].[ChiTietHD] ([MaCT], [MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (102241, 8, 1133, 28990000, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaCT], [MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (102242, 10, 1113, 18990000, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaCT], [MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (102243, 12, 1145, 7990000, 2, 0)
SET IDENTITY_INSERT [dbo].[ChiTietHD] OFF
GO
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1113, N'iPhone 13', N'iphone-13', 1000, N'Full HD', 18990000, N'iphone131.jpg', CAST(N'2023-01-10T00:00:00.000' AS DateTime), 0, 0, N'Di động Apple, chip A15, camera kép 12MP, Face ID', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1114, N'iPhone 14', N'iphone-14', 1000, N'HD+', 20990000, N'iphone14.jpg', CAST(N'2023-06-15T00:00:00.000' AS DateTime), 0, 0, N'Màn hình Super Retina XDR 6.1", chip A15 Bionic mạnh mẽ', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1115, N'iPhone 14 Pro Max', N'iphone-14-pro-max', 1000, N'Full HD', 27990000, N'iphone14prm.jpg', CAST(N'2023-09-20T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 6.7", Dynamic Island, camera 48MP, hiệu năng cao', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1116, N'Samsung Galaxy S23', N'samsung-galaxy-s23', 1000, N'1.5K', 17990000, N'SSGalaxyS23.jpg', CAST(N'2023-02-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình AMOLED 6.1", Snapdragon 8 Gen 2, camera 50MP', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1117, N'Samsung S23 Ultra', N'samsung-galaxy-s23-ultra', 1000, N'HD+', 29990000, N'SSGalaxyS23Ultra.jpg', CAST(N'2023-03-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 6.8", camera 200MP, bút S Pen, pin 5000mAh', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1118, N'Samsung Galaxy A54', N'samsung-galaxy-a54', 1000, N'Full HD', 10490000, N'SSGalaxyA54.jpg', CAST(N'2023-04-05T00:00:00.000' AS DateTime), 0, 0, N'Màn hình Super AMOLED 6.4", pin 5000mAh, thiết kế trẻ trung', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1119, N'Xiaomi Redmi Note 12', N'xiaomi-redmi-note-12', 1000, N'2K', 4490000, N'XMNote12.jpg', CAST(N'2023-02-18T00:00:00.000' AS DateTime), 0, 0, N'Màn hình AMOLED 6.67", Snapdragon 685, pin 5000mAh', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1120, N'Xiaomi 13T', N'xiaomi-13t', 1000, N'Full HD', 11990000, N'XM13T.jpg', CAST(N'2023-09-26T00:00:00.000' AS DateTime), 0, 0, N'Camera Leica, hiệu năng cao, thiết kế cao cấp', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1121, N'Xiaomi 12 Pro', N'xiaomi-12-pro', 1000, N'Full HD+', 13990000, N'XM12Pro.jpg', CAST(N'2022-12-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình AMOLED 2K, Snapdragon 8 Gen 1, camera 50MP', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1122, N'OPPO Reno8 T', N'oppo-reno8-t', 1000, N'4K', 7490000, N'OPPO8T.jpg', CAST(N'2023-05-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 6.4", camera 100MP, pin lớn 5000mAh, sạc nhanh 33W', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1123, N'OPPO Reno10', N'oppo-reno10', 1000, N'3K', 10990000, N'OPPO10.jpg', CAST(N'2023-08-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình AMOLED 6.7", Snapdragon 778G, sạc nhanh 67W', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1124, N'OPPO A78', N'oppo-a78', 1000, N'Full HD+', 6290000, N'OPPOA78.jpg', CAST(N'2023-07-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 6.56", pin 5000mAh, chip Helio G85, giá tốt', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1125, N'Vivo V25e', N'vivo-v25e', 1000, N'Full HD', 7990000, N'VIVOV25.jpg', CAST(N'2023-03-10T00:00:00.000' AS DateTime), 0, 0, N'Màn hình AMOLED 6.44", camera 64MP, sạc nhanh 44W', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1126, N'Vivo Y35', N'vivo-y35', 1000, N'2K', 5590000, N'VIVOY35.jpg', CAST(N'2023-02-20T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 6.58", pin 5000mAh, Snapdragon 680, giá mềm', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1127, N'Vivo V29e', N'vivo-v29e', 1000, N'2K', 10490000, N'VIVO29e.jpg', CAST(N'2023-09-15T00:00:00.000' AS DateTime), 0, 0, N'Màn hình cong AMOLED, camera 64MP OIS, thiết kế cao cấp', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1132, N'Vivo A35', N'vivo-A35', 1000, N'HD+', 14500000, N'VIVOA35.jpg', CAST(N'2024-06-24T00:00:00.000' AS DateTime), 0, 0, N'Màn hình đẹp, sắc nét', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1133, N'MacBook Air M2', N'macbook-air-m2', 1001, N'Chiếc', 28990000, N'1.jpg', CAST(N'2023-06-10T00:00:00.000' AS DateTime), 0, 0, N'Laptop Apple, chip M2, màn hình 13.6", pin lâu, nhẹ và mỏng', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1134, N'MacBook Pro 14 M2', N'macbook-pro-14-m2', 1001, N'Chiếc', 43990000, N'2.jpg', CAST(N'2023-07-01T00:00:00.000' AS DateTime), 0, 0, N'MacBook Pro M2, màn hình 14", RAM 16GB, SSD 512GB', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1135, N'MacBook Pro 16 M3', N'macbook-pro-16-m3', 1001, N'Chiếc', 59990000, N'3.jpg', CAST(N'2024-01-15T00:00:00.000' AS DateTime), 0, 0, N'MacBook Pro cao cấp M3, màn hình 16", hiệu năng vượt trội', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1136, N'Dell XPS 13', N'dell-xps-13', 1001, N'Chiếc', 29990000, N'4.jpg', CAST(N'2023-05-01T00:00:00.000' AS DateTime), 0, 0, N'Laptop cao cấp, màn hình 13.3", chip Intel Core i7, RAM 16GB, SSD 512GB', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1137, N'Dell Inspiron 15', N'dell-inspiron-15', 1001, N'Chiếc', 18990000, N'5.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 0, 0, N'Laptop phổ thông, màn hình 15.6", Intel Core i5, pin trâu', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1138, N'Dell Gaming G15', N'dell-gaming-g15', 1001, N'Chiếc', 26990000, N'6.jpg', CAST(N'2023-09-20T00:00:00.000' AS DateTime), 0, 0, N'Laptop gaming Dell G15, RTX 3050, Intel Core i7, 144Hz', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1139, N'ASUS ZenBook 14 OLED', N'asus-zenbook-14-oled', 1001, N'Chiếc', 23990000, N'7.jpg', CAST(N'2023-07-20T00:00:00.000' AS DateTime), 0, 0, N'Màn OLED 14", Intel Gen 13, siêu mỏng nhẹ, thời trang', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1140, N'ASUS TUF Gaming F15', N'asus-tuf-gaming-f15', 1001, N'Chiếc', 22990000, N'8.jpg', CAST(N'2023-04-05T00:00:00.000' AS DateTime), 0, 0, N'Laptop gaming bền bỉ, RTX 3050, Intel Core i5 Gen 12', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1141, N'ASUS ROG Zephyrus G14', N'asus-rog-zephyrus-g14', 1001, N'Chiếc', 35990000, N'9.jpg', CAST(N'2023-08-05T00:00:00.000' AS DateTime), 0, 0, N'Gaming mỏng nhẹ, Ryzen 9, RTX 4070, màn hình QHD 165Hz', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1142, N'HP Envy 16', N'hp-envy-16', 1001, N'Chiếc', 25990000, N'10.jpg', CAST(N'2023-07-15T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 16", Intel Core i7 Gen 13, card đồ hoạ RTX 4060', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1143, N'HP Pavilion 14', N'hp-pavilion-14', 1001, N'Chiếc', 15990000, N'11.jpg', CAST(N'2023-02-25T00:00:00.000' AS DateTime), 0, 0, N'Laptop học tập văn phòng, Intel Core i3 Gen 12, giá tốt', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1144, N'HP Victus 16', N'hp-victus-16', 1001, N'Chiếc', 27990000, N'12.jpg', CAST(N'2023-10-10T00:00:00.000' AS DateTime), 0, 0, N'Laptop gaming tầm trung, màn hình 16", RTX 4060', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1145, N'iPad Gen 9', N'ipad-gen-9', 1002, N'Chiếc', 7990000, N'20.jpg', CAST(N'2022-11-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 10.2", chip A13 Bionic, hỗ trợ Apple Pencil 1', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1146, N'iPad Air 5', N'ipad-air-5', 1002, N'Chiếc', 16990000, N'21.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 10.9", chip M1, hỗ trợ Apple Pencil 2', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1147, N'iPad Pro M2 11"', N'ipad-pro-m2-11', 1002, N'Chiếc', 24990000, N'22.jpg', CAST(N'2023-06-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình ProMotion 120Hz, chip M2, Face ID, hỗ trợ Apple Pencil 2', N'NCC01')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1148, N'Samsung Galaxy Tab S9', N'galaxy-tab-s9', 1002, N'Chiếc', 18990000, N'23.jpg', CAST(N'2023-08-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình AMOLED 11", Snapdragon 8 Gen 2, kháng nước IP68', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1149, N'Samsung Galaxy Tab A8', N'galaxy-tab-a8', 1002, N'Chiếc', 5990000, N'24.jpg', CAST(N'2023-01-10T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 10.5", RAM 4GB, pin 7040mAh, học online tốt', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1150, N'Samsung Galaxy Tab S6 Lite', N'galaxy-tab-s6-lite', 1002, N'Chiếc', 8990000, N'25.jpg', CAST(N'2022-12-15T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 10.4", hỗ trợ bút S Pen, pin 7040mAh', N'NCC02')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1151, N'Xiaomi Pad 6', N'xiaomi-pad-6', 1002, N'Chiếc', 8490000, N'26.jpg', CAST(N'2023-05-01T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 11", 2.8K 144Hz, Snapdragon 870, pin 8840mAh', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1152, N'Xiaomi Pad 5', N'xiaomi-pad-5', 1002, N'Chiếc', 6990000, N'27.jpg', CAST(N'2022-09-10T00:00:00.000' AS DateTime), 0, 0, N'Màn hình 2.5K 120Hz, Snapdragon 860, 4 loa, pin trâu', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1170, N'Casio MTP-V002D-7B3', N'casio-mtp-v002d-7b3', 1003, N'Chiếc', 850000, N'30.jpg', CAST(N'2025-01-01T00:00:00.000' AS DateTime), 0, 0, N'Đồng hồ Casio MTP-V002D-7B3 thiết kế kim loại chắc chắn, chống nước, rất phù hợp cho những người yêu thích sự bền bỉ.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1171, N'Casio MTP-V200', N'casio-mtp-v200', 1003, N'Chiếc', 900000, N'31.jpg', CAST(N'2025-01-05T00:00:00.000' AS DateTime), 0, 0, N'Casio MTP-V200 có thiết kế thể thao với dây kim loại chắc chắn, là sự lựa chọn tuyệt vời cho các bạn yêu thích đồng hồ mạnh mẽ.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1172, N'Casio F91W', N'casio-f91w', 1003, N'Chiếc', 350000, N'32.jpg', CAST(N'2025-01-10T00:00:00.000' AS DateTime), 10, 0, N'Casio F91W là chiếc đồng hồ điện tử huyền thoại với thiết kế đơn giản, dễ sử dụng và bền bỉ.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1173, N'Seiko 5 Automatic', N'seiko-5-automatic', 1003, N'Chiếc', 3200000, N'33.jpg', CAST(N'2025-02-01T00:00:00.000' AS DateTime), 0, 0, N'Seiko 5 Automatic là mẫu đồng hồ tự động với thiết kế cổ điển và dây kim loại, thích hợp cho những người yêu thích đồng hồ cơ.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1174, N'Seiko Presage', N'seiko-presage', 1003, N'Chiếc', 9500000, N'34.jpg', CAST(N'2025-02-10T00:00:00.000' AS DateTime), 0, 0, N'Seiko Presage có thiết kế tinh tế, mặt số dễ đọc, và đặc biệt là bộ máy cơ tự động, là lựa chọn lý tưởng cho những ai yêu thích đồng hồ cơ.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1175, N'Rolex Submariner', N'rolex-submariner', 1003, N'Chiếc', 12000000, N'35.jpg', CAST(N'2025-03-01T00:00:00.000' AS DateTime), 5, 0, N'Rolex Submariner là mẫu đồng hồ lặn cao cấp với khả năng chống nước cực tốt và thiết kế sang trọng, rất phù hợp cho những người yêu thích sự đẳng cấp.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1176, N'Rolex Datejust', N'rolex-datejust', 1003, N'Chiếc', 15000000, N'36.jpg', CAST(N'2025-03-10T00:00:00.000' AS DateTime), 0, 0, N'Rolex Datejust với thiết kế thanh lịch, mặt kính sapphire bền bỉ, là sự lựa chọn hàng đầu cho những ai yêu thích sự hoàn hảo.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1177, N'Michael Kors MK8281', N'michael-kors-mk8281', 1003, N'Chiếc', 6500000, N'37.jpg', CAST(N'2025-04-01T00:00:00.000' AS DateTime), 0, 0, N'Michael Kors MK8281 là chiếc đồng hồ nữ sang trọng với mặt số lớn và dây kim loại chắc chắn, mang đến vẻ ngoài đẳng cấp cho người sở hữu.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1178, N'Fossil Hybrid HR', N'fossil-hybrid-hr', 1003, N'Chiếc', 4500000, N'38.jpg', CAST(N'2025-05-01T00:00:00.000' AS DateTime), 0, 0, N'Fossil Hybrid HR kết hợp giữa đồng hồ cổ điển và tính năng thông minh, giúp bạn theo dõi sức khỏe và kết nối với điện thoại dễ dàng.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1179, N'Fossil Grant', N'fossil-grant', 1003, N'Chiếc', 5500000, N'39.jpg', CAST(N'2025-06-01T00:00:00.000' AS DateTime), 0, 0, N'Fossil Grant là mẫu đồng hồ cơ với mặt kính sapphire bền bỉ và thiết kế sang trọng, phù hợp cho các sự kiện quan trọng.', N'NCC03')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1180, N'Apple Watch SE 2', N'apple-watch-se-2', 1004, N'Chiếc', 6990000, N'52.jpg', CAST(N'2025-01-15T00:00:00.000' AS DateTime), 0, 0, N'Apple Watch SE 2 với tính năng theo dõi sức khỏe thông minh, thiết kế trẻ trung và giá cả phải chăng.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1181, N'Apple Watch Series 9', N'apple-watch-series-9', 1004, N'Chiếc', 11290000, N'53.jpg', CAST(N'2025-01-20T00:00:00.000' AS DateTime), 0, 0, N'Apple Watch Series 9 với chip S9 mới, khả năng đo ECG và tính năng Always-on Display.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1182, N'Apple Watch Ultra 2', N'apple-watch-ultra-2', 1004, N'Chiếc', 19990000, N'54.jpg', CAST(N'2025-01-25T00:00:00.000' AS DateTime), 0, 0, N'Dòng đồng hồ cao cấp dành cho dân thể thao, pin trâu, thiết kế cực ngầu.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1183, N'Galaxy Watch 6', N'galaxy-watch-6', 1004, N'Chiếc', 7990000, N'55.jpg', CAST(N'2025-02-01T00:00:00.000' AS DateTime), 0, 0, N'Mẫu đồng hồ thông minh mới nhất từ Samsung với màn hình Super AMOLED sắc nét.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1184, N'Galaxy Watch 5 Pro', N'galaxy-watch-5-pro', 1004, N'Chiếc', 9990000, N'56.jpg', CAST(N'2025-02-05T00:00:00.000' AS DateTime), 5, 0, N'Dành cho người yêu thể thao, pin lâu và thiết kế hầm hố.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1185, N'Xiaomi Watch S1 Active', N'xiaomi-watch-s1-active', 1004, N'Chiếc', 3490000, N'67.jpg', CAST(N'2025-02-10T00:00:00.000' AS DateTime), 0, 0, N'Thiết kế trẻ trung, pin trâu, theo dõi nhịp tim và thể thao hiệu quả.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1186, N'Xiaomi Smart Band 8 Pro', N'xiaomi-smart-band-8-pro', 1004, N'Chiếc', 1290000, N'58.jpg', CAST(N'2025-02-12T00:00:00.000' AS DateTime), 0, 0, N'Vòng đeo tay thông minh giá rẻ, đầy đủ tính năng cơ bản.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1187, N'Amazfit GTR 4', N'amazfit-gtr-4', 1004, N'Chiếc', 4590000, N'59.jpg', CAST(N'2025-02-15T00:00:00.000' AS DateTime), 0, 0, N'Mẫu đồng hồ với khả năng định vị GPS chính xác và pin dùng 2 tuần.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1188, N'Huawei Watch GT 4', N'huawei-watch-gt-4', 1004, N'Chiếc', 5490000, N'60.jpg', CAST(N'2025-03-01T00:00:00.000' AS DateTime), 0, 0, N'Đồng hồ thông minh pin trâu, giao diện đẹp và nhiều chế độ luyện tập.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1189, N'Oppo Watch X', N'oppo-watch-x', 1004, N'Chiếc', 4990000, N'61.jpg', CAST(N'2025-03-03T00:00:00.000' AS DateTime), 0, 0, N'Thiết kế vuông bo tròn, hỗ trợ eSIM và đo nhịp tim chính xác.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1190, N'Garmin Forerunner 255', N'garmin-forerunner-255', 1004, N'Chiếc', 8490000, N'62.jpg', CAST(N'2025-03-10T00:00:00.000' AS DateTime), 0, 0, N'Dành cho người chạy bộ chuyên nghiệp, GPS chính xác, cảm biến cao cấp.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1191, N'Garmin Venu 3', N'garmin-venu-3', 1004, N'Chiếc', 11500000, N'63.jpg', CAST(N'2025-03-12T00:00:00.000' AS DateTime), 0, 0, N'Màn hình AMOLED sống động, tính năng thể thao chuyên sâu và theo dõi giấc ngủ.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1192, N'Realme Watch 3 Pro', N'realme-watch-3-pro', 1004, N'Chiếc', 1990000, N'64.jpg', CAST(N'2025-03-15T00:00:00.000' AS DateTime), 0, 0, N'Màn hình lớn, pin 10 ngày, gọi Bluetooth tiện lợi.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1193, N'Ticwatch Pro 5', N'ticwatch-pro-5', 1004, N'Chiếc', 7990000, N'65.jpg', CAST(N'2025-03-20T00:00:00.000' AS DateTime), 0, 0, N'Chạy Wear OS, hai màn hình tiết kiệm pin độc đáo.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1194, N'Huawei Band 8', N'huawei-band-8', 1004, N'Chiếc', 990000, N'66.jpg', CAST(N'2025-03-25T00:00:00.000' AS DateTime), 0, 0, N'Vòng đeo theo dõi sức khỏe giá rẻ, thiết kế mỏng nhẹ.', N'NCC04')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1195, N'Sạc dự phòng Anker 10000mAh', N'sac-du-phong-anker-10000', 1005, N'Chiếc', 690000, N'80.jpg', CAST(N'2025-01-10T00:00:00.000' AS DateTime), 0, 0, N'Sạc dự phòng nhỏ gọn, dung lượng 10000mAh, sạc nhanh PowerIQ.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1196, N'Sạc dự phòng Xiaomi 20000mAh', N'sac-du-phong-xiaomi-20000', 1005, N'Chiếc', 850000, N'81.jpg', CAST(N'2025-01-12T00:00:00.000' AS DateTime), 0, 0, N'Dung lượng lớn, hỗ trợ sạc nhanh 18W, 2 cổng sạc tiện lợi.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1197, N'Tai nghe Bluetooth AirPods Pro', N'tai-nghe-airpods-pro', 1005, N'Chiếc', 4990000, N'70.jpg', CAST(N'2025-01-15T00:00:00.000' AS DateTime), 0, 0, N'Tai nghe không dây chống ồn chủ động, âm thanh sống động.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1198, N'Tai nghe Samsung Buds2 Pro', N'tai-nghe-samsung-buds2-pro', 1005, N'Chiếc', 3990000, N'71.jpg', CAST(N'2025-01-17T00:00:00.000' AS DateTime), 0, 0, N'Tai nghe chống ồn, kết nối ổn định, chất âm ấn tượng.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1199, N'Tai nghe Baseus Bowie M2', N'tai-nghe-baseus-bowie-m2', 1005, N'Chiếc', 790000, N'72.jpg', CAST(N'2025-01-19T00:00:00.000' AS DateTime), 0, 0, N'Tai nghe không dây giá rẻ, có ANC và kết nối Bluetooth 5.3.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1200, N'Ốp lưng iPhone 15 Pro Max', N'op-lung-iphone-15-pro-max', 1005, N'Chiếc', 290000, N'73.jpg', CAST(N'2025-01-22T00:00:00.000' AS DateTime), 0, 0, N'Ốp lưng silicon chống sốc, bảo vệ toàn diện.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1201, N'Dán cường lực iPhone 15 Pro Max', N'dan-cuong-luc-iphone-15', 1005, N'Chiếc', 150000, N'74.jpg', CAST(N'2025-01-23T00:00:00.000' AS DateTime), 0, 0, N'Kính cường lực 9H, phủ nano chống vân tay.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1202, N'Ốp lưng Samsung S24 Ultra', N'op-lung-samsung-s24', 1005, N'Chiếc', 270000, N'75.jpg', CAST(N'2025-01-24T00:00:00.000' AS DateTime), 0, 0, N'Ốp viền kim loại, mặt lưng nhám chống trượt.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1203, N'Cáp sạc Type-C Anker PowerLine III', N'cap-typec-anker', 1005, N'Chiếc', 290000, N'76.jpg', CAST(N'2025-01-27T00:00:00.000' AS DateTime), 0, 0, N'Cáp sạc nhanh 60W, siêu bền, bảo hành 18 tháng.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1204, N'Cáp sạc Lightning MFI Baseus', N'cap-lightning-baseus', 1005, N'Chiếc', 250000, N'70.jpg', CAST(N'2025-01-28T00:00:00.000' AS DateTime), 0, 0, N'Cáp đạt chuẩn Apple MFI, sạc nhanh, chống rối.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1205, N'Giá đỡ điện thoại để bàn', N'gia-do-dien-thoai-ban', 1005, N'Chiếc', 120000, N'78.jpg', CAST(N'2025-01-30T00:00:00.000' AS DateTime), 0, 0, N'Giá đỡ có thể gập gọn, điều chỉnh độ cao và góc nghiêng.', N'NCC05')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [TenAlias], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1206, N'Gậy chụp hình Bluetooth Yunteng', N'gay-chup-hinh-yunteng', 1005, N'Chiếc', 320000, N'79.jpg', CAST(N'2025-02-01T00:00:00.000' AS DateTime), 0, 0, N'Gậy chụp hình tích hợp remote Bluetooth, tương thích iOS & Android.', N'NCC05')
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DienThoai], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [MaNV], [GhiChu]) VALUES (2, N'KH001', CAST(N'2025-04-19T14:14:44.907' AS DateTime), CAST(N'2025-04-19T14:14:45.073' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyen Van A', N'0901234567              ', N'123 Le Loi, Ha Noi', N'COD', N'GRAB', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DienThoai], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [MaNV], [GhiChu]) VALUES (5, N'KH001', CAST(N'2025-04-19T14:20:40.170' AS DateTime), CAST(N'2025-04-19T14:20:40.173' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Anh Dũng', N'0334280546              ', N'Vũ Quang - Hà Tĩnh', N'COD', N'GRAB', 0, 0, NULL, N'dsfgdgd')
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DienThoai], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [MaNV], [GhiChu]) VALUES (7, N'KH001', CAST(N'2025-04-19T14:27:09.550' AS DateTime), CAST(N'2025-04-19T14:27:09.553' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Anh Dũng', N'0334280546              ', N'Vũ Quang - Hà Tĩnh', N'COD', N'GRAB', 0, 0, NULL, N'dfgdg')
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DienThoai], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [MaNV], [GhiChu]) VALUES (8, N'KH001', CAST(N'2025-04-19T14:28:25.210' AS DateTime), CAST(N'2025-04-19T14:28:25.353' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyen Van A', N'0901234567              ', N'123 Le Loi, Ha Noi', N'COD', N'GRAB', 0, 0, NULL, N'gderger')
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DienThoai], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [MaNV], [GhiChu]) VALUES (10, N'KH001', CAST(N'2025-04-19T21:49:58.163' AS DateTime), CAST(N'2025-04-19T21:49:58.183' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyen Van A', N'0901234567              ', N'123 Le Loi, Ha Noi', N'COD', N'GRAB', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DienThoai], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [MaNV], [GhiChu]) VALUES (11, N'KH001', CAST(N'2025-04-20T19:57:49.247' AS DateTime), CAST(N'2025-04-20T19:57:49.607' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Anh Dũng', N'0334280546              ', N'Vũ Quang - Hà Tĩnh', N'COD', N'GRAB', 0, 0, NULL, N'sdasds')
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DienThoai], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [MaNV], [GhiChu]) VALUES (12, N'KH001', CAST(N'2025-04-21T08:36:27.493' AS DateTime), CAST(N'2025-04-21T08:36:27.677' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyen Van A', N'0901234567              ', N'123 Le Loi, Ha Noi', N'COD', N'GRAB', 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [RandomKey]) VALUES (N'KH001', N'matkhau1', N'Nguyen Van A', 1, CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'123 Le Loi, Ha Noi', N'0901234567', N'vana@example.com', N'a.jpg', 1, 0, N'abc123')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [RandomKey]) VALUES (N'KH002', N'matkhau2', N'Tran Thi B', 0, CAST(N'1992-02-02T00:00:00.000' AS DateTime), N'456 Tran Hung Dao, HCM', N'0902345678', N'thib@example.com', N'b.jpg', 1, 1, N'xyz789')
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa], [Hinh]) VALUES (1000, N'Điện thoại', N'dong-ho', N'Soft drinks, coffees, teas, beers, and ales', N'Best.png')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa], [Hinh]) VALUES (1001, N'Laptop', N'lap-top', N'Sweet and savory sauces, relishes, spreads, and seasonings', N'Certificate.png')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa], [Hinh]) VALUES (1002, N'Tablet', N'may-anh', N'Desserts, candies, and sweet breads', N'')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa], [Hinh]) VALUES (1003, N'Đồng hồ', N'dien-thoai', N'Cheeses', N'Bell.png')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa], [Hinh]) VALUES (1004, N'Smatwatch', N'nuoc-hoa', N'Breads, crackers, pasta, and cereal', N'Favourites.png')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa], [Hinh]) VALUES (1005, N'Phụ kiện', N'trang-suc', N'Prepared meats', N'Dice.png')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'NCC01', N'Apple', N'apple.gif', N'Petter Pike', N'pike@yahoo.com', N'0987345876', N'765 Hello, Califonia, United States', N'Moble Device')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'NCC02', N'Motorola', N'motorola.gif', N'John David', N'john@gmail.com', N'0918456987', N'22 Rose, Messachuset, United States', N'Communication Company')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'NCC03', N'Nokia', N'Nokia.gif', N'Okawa', N'okawa@gmail.com', N'0913745789', N'123 Revenue, Tokyo, Japan', N'Famous company')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'NCC04', N'Seamen', N'semen.gif', N'David Brown', N'brown@gmail.com', N'0987456876', N'23 New World, Texas, United Kindom', N'Digital device company')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'NCC05', N'Samsung', N'samsung.gif', N'LeeSongChai', N'lee@yahoo.com', N'0913745789', N'456 Romario, Seaul, Korea', N'The best company')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau]) VALUES (N'lvc', N'Lê Văn C', N'lvc@gmail.com', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau]) VALUES (N'nva', N'Trần Văn A', N'tva@gmail.com', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau]) VALUES (N'nvb', N'Nguyễn Văn B', N'nvb@gmail.com', N'123')
GO
SET IDENTITY_INSERT [dbo].[PhanCong] ON 

INSERT [dbo].[PhanCong] ([MaPC], [MaNV], [MaPB], [NgayPC], [HieuLuc]) VALUES (1, N'lvc', N'BGD', CAST(N'2017-12-17T10:10:06.877' AS DateTime), 0)
INSERT [dbo].[PhanCong] ([MaPC], [MaNV], [MaPB], [NgayPC], [HieuLuc]) VALUES (2, N'nva', N'BGD', CAST(N'2017-11-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhanCong] ([MaPC], [MaNV], [MaPB], [NgayPC], [HieuLuc]) VALUES (3, N'lvc', N'BGD', CAST(N'2017-12-17T10:15:51.303' AS DateTime), 1)
INSERT [dbo].[PhanCong] ([MaPC], [MaNV], [MaPB], [NgayPC], [HieuLuc]) VALUES (4, N'nva', N'BGD', CAST(N'2017-12-17T10:15:51.333' AS DateTime), 1)
INSERT [dbo].[PhanCong] ([MaPC], [MaNV], [MaPB], [NgayPC], [HieuLuc]) VALUES (5, N'nva', N'PKT', CAST(N'2017-12-17T10:16:19.203' AS DateTime), 0)
INSERT [dbo].[PhanCong] ([MaPC], [MaNV], [MaPB], [NgayPC], [HieuLuc]) VALUES (6, N'nvb', N'PKT', CAST(N'2017-12-17T10:16:19.213' AS DateTime), 0)
INSERT [dbo].[PhanCong] ([MaPC], [MaNV], [MaPB], [NgayPC], [HieuLuc]) VALUES (7, N'nvb', N'PKT', CAST(N'2017-12-17T10:16:39.180' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[PhanCong] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([MaPQ], [MaPB], [MaTrang], [Them], [Sua], [Xoa], [Xem]) VALUES (16, N'BGD', 1, 0, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaPB], [MaTrang], [Them], [Sua], [Xoa], [Xem]) VALUES (17, N'BGD', 2, 0, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaPB], [MaTrang], [Them], [Sua], [Xoa], [Xem]) VALUES (18, N'BGD', 3, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [ThongTin]) VALUES (N'BGD', N'Ban Giám Đốc', NULL)
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [ThongTin]) VALUES (N'PKD', N'Phòng kinh doanh', NULL)
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [ThongTin]) VALUES (N'PKT', N'Phòng Kỹ thuật', NULL)
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [ThongTin]) VALUES (N'PKTo', N'Phòng Kế toán', NULL)
GO
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (-1, N'Khách hàng hủy đơn hàng', NULL)
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (0, N'Mới đặt hàng', NULL)
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (1, N'Đã thanh toán', NULL)
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (2, N'Chờ giao hàng', NULL)
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (3, N'Đã giao hàng', NULL)
GO
SET IDENTITY_INSERT [dbo].[TrangWeb] ON 

INSERT [dbo].[TrangWeb] ([MaTrang], [TenTrang], [URL]) VALUES (1, N'Trang chủ Admin', N'Default.aspx')
INSERT [dbo].[TrangWeb] ([MaTrang], [TenTrang], [URL]) VALUES (2, N'Quản lý Đơn hàng', N'QLDonHang.aspx')
INSERT [dbo].[TrangWeb] ([MaTrang], [TenTrang], [URL]) VALUES (3, N'Quản lý Hàng hóa', N'QLHangHoa.aspx')
SET IDENTITY_INSERT [dbo].[TrangWeb] OFF
GO
ALTER TABLE [dbo].[BanBe] ADD  CONSTRAINT [DF_Promotions_Sent]  DEFAULT (getdate()) FOR [NgayGui]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[GopY] ADD  CONSTRAINT [DF_GopY_NgayGY]  DEFAULT (getdate()) FOR [NgayGY]
GO
ALTER TABLE [dbo].[GopY] ADD  CONSTRAINT [DF_GopY_CanTraLoi]  DEFAULT ((0)) FOR [CanTraLoi]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [NgaySX]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_Discount]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_Votes]  DEFAULT ((0)) FOR [SoLanXem]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [NgayDat]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_RequireDate]  DEFAULT (getdate()) FOR [NgayCan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_ShippedDate]  DEFAULT (((1)/(1))/(1900)) FOR [NgayGiao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_PaymentMethod]  DEFAULT (N'Cash') FOR [CachThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_ShippingMethod]  DEFAULT (N'Airline') FOR [CachVanChuyen]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [PhiVanChuyen]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_Status]  DEFAULT ((0)) FOR [MaTrangThai]
GO
ALTER TABLE [dbo].[HoiDap] ADD  CONSTRAINT [DF_HoiDap_NgayDua]  DEFAULT (getdate()) FOR [NgayDua]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Gender]  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Birthday]  DEFAULT (getdate()) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Hinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Active]  DEFAULT ((0)) FOR [HieuLuc]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_UserLevel]  DEFAULT ((0)) FOR [VaiTro]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF_PhanQuyen_Them]  DEFAULT ((0)) FOR [Them]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF_PhanQuyen_Sua]  DEFAULT ((0)) FOR [Sua]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF_PhanQuyen_Xoa]  DEFAULT ((0)) FOR [Xoa]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF_PhanQuyen_Xem]  DEFAULT ((0)) FOR [Xem]
GO
ALTER TABLE [dbo].[BanBe]  WITH CHECK ADD  CONSTRAINT [FK_BanBe_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BanBe] CHECK CONSTRAINT [FK_BanBe_KhachHang]
GO
ALTER TABLE [dbo].[BanBe]  WITH CHECK ADD  CONSTRAINT [FK_QuangBa_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BanBe] CHECK CONSTRAINT [FK_QuangBa_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[ChuDe]  WITH CHECK ADD  CONSTRAINT [FK_ChuDe_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChuDe] CHECK CONSTRAINT [FK_ChuDe_NhanVien]
GO
ALTER TABLE [dbo].[GopY]  WITH CHECK ADD  CONSTRAINT [FK_GopY_ChuDe] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChuDe] ([MaCD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GopY] CHECK CONSTRAINT [FK_GopY_ChuDe]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TrangThai] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[TrangThai] ([MaTrangThai])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_TrangThai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[HoiDap]  WITH CHECK ADD  CONSTRAINT [FK_HoiDap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoiDap] CHECK CONSTRAINT [FK_HoiDap_NhanVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhanVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_PhongBan] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_PhongBan]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_PhongBan] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_PhongBan]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_TrangWeb] FOREIGN KEY([MaTrang])
REFERENCES [dbo].[TrangWeb] ([MaTrang])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_TrangWeb]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Customers] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_Favorites_Customers]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_YeuThich_HangHoa]
GO
USE [master]
GO
ALTER DATABASE [Hshop2023] SET  READ_WRITE 
GO

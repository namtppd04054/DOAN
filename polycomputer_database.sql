USE [master]
GO
/****** Object:  Database [PolyComputer]    Script Date: 2/6/2022 10:52:11 AM ******/
CREATE DATABASE [PolyComputer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PolyComputer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PolyComputer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PolyComputer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PolyComputer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PolyComputer] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PolyComputer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PolyComputer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PolyComputer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PolyComputer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PolyComputer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PolyComputer] SET ARITHABORT OFF 
GO
ALTER DATABASE [PolyComputer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PolyComputer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PolyComputer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PolyComputer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PolyComputer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PolyComputer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PolyComputer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PolyComputer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PolyComputer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PolyComputer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PolyComputer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PolyComputer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PolyComputer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PolyComputer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PolyComputer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PolyComputer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PolyComputer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PolyComputer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PolyComputer] SET  MULTI_USER 
GO
ALTER DATABASE [PolyComputer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PolyComputer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PolyComputer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PolyComputer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PolyComputer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PolyComputer] SET QUERY_STORE = OFF
GO
USE [PolyComputer]
GO
/****** Object:  Table [dbo].[ban_phim]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ban_phim](
	[ban_phim_id] [int] IDENTITY(1,1) NOT NULL,
	[ban_phim_name] [varchar](255) NULL,
	[ban_phim_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ban_phim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand] [varchar](255) NULL,
	[brand_slug] [varchar](255) NULL,
	[category_name] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_image] [varchar](255) NULL,
	[category_name] [varchar](255) NULL,
	[category_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colors]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colors](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [varchar](255) NULL,
	[color_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cong_ket_noi]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cong_ket_noi](
	[cong_ket_noi_id] [int] IDENTITY(1,1) NOT NULL,
	[cong_ket_noi_name] [varchar](255) NULL,
	[cong_ket_noi_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[cong_ket_noi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cong_xuat_hinh]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cong_xuat_hinh](
	[cong_xuat_hinh_id] [int] IDENTITY(1,1) NOT NULL,
	[cong_xuat_hinh_name] [varchar](255) NULL,
	[cong_xuat_hinh_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[cong_xuat_hinh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cpu]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cpu](
	[cpu_id] [int] IDENTITY(1,1) NOT NULL,
	[cpu_name] [varchar](255) NULL,
	[cpu_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[cpu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cpuserie]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cpuserie](
	[cpu_serie_id] [int] IDENTITY(1,1) NOT NULL,
	[cpu_serie_name] [varchar](255) NULL,
	[cpu_serie_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[cpu_serie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[active] [bit] NULL,
	[address] [varchar](255) NULL,
	[avatar] [varchar](255) NULL,
	[created_at] [date] NULL,
	[email] [varchar](255) NULL,
	[full_name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[updated_at] [date] NULL,
	[username] [varchar](255) NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chip_do_hoa]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chip_do_hoa](
	[chip_do_hoa_id] [int] IDENTITY(1,1) NOT NULL,
	[chip_do_hoa_name] [varchar](255) NULL,
	[chip_do_hoa_slug] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[chip_do_hoa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[he_dieu_hanh]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[he_dieu_hanh](
	[he_dieu_hanh_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[he_dieu_hanh_name] [varchar](255) NULL,
	[he_dieu_hanh_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[he_dieu_hanh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[images]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[images](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[product_image] [varchar](255) NULL,
	[updated_at] [date] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leader_ship]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leader_ship](
	[leader_ship_id] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [varchar](255) NULL,
	[chuc_vu] [varchar](255) NULL,
	[created_at] [date] NULL,
	[facebook] [varchar](255) NULL,
	[gmail] [varchar](255) NULL,
	[member_name] [varchar](255) NULL,
	[twitter] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[leader_ship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[luu_tru]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[luu_tru](
	[luu_tru_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[luu_tru_name] [varchar](255) NULL,
	[luu_tru_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[luu_tru_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[man_hinh]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[man_hinh](
	[man_hinh_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[man_hinh_name] [varchar](255) NULL,
	[man_hinh_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[man_hinh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[order_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[gia] [float] NULL,
	[so_luong] [int] NULL,
	[tong_tien_san_pham] [float] NULL,
	[order_id] [bigint] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[full_name] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[tong_tien_thanh_toan] [float] NULL,
	[updated_at] [date] NULL,
	[customer_id] [int] NULL,
	[status_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pin]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pin](
	[pin_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[pin_name] [varchar](255) NULL,
	[pin_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[pin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[anh_chinh] [varchar](255) NULL,
	[available] [bit] NULL,
	[bao_hanh] [int] NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[discount] [int] NULL,
	[gia] [float] NULL,
	[giam_gia] [int] NULL,
	[khoi_luong] [float] NULL,
	[kich_thuoc] [float] NULL,
	[product_name] [varchar](255) NULL,
	[product_slug] [varchar](255) NULL,
	[so_luong] [int] NULL,
	[updated_at] [date] NULL,
	[ban_phim_id] [int] NULL,
	[brand_id] [int] NULL,
	[category_id] [int] NULL,
	[chip_do_hoa_id] [int] NULL,
	[color_id] [int] NULL,
	[cong_ket_noi_id] [int] NULL,
	[cong_xuat_hinh_id] [int] NULL,
	[cpu_id] [int] NULL,
	[cpu_serie_id] [int] NULL,
	[he_dieu_hanh_id] [int] NULL,
	[luu_tru_id] [int] NULL,
	[man_hinh_id] [int] NULL,
	[phu_kien_di_kem_id] [int] NULL,
	[pin_id] [int] NULL,
	[qua_tang_id] [int] NULL,
	[ram_id] [int] NULL,
	[so_cong_luu_tru_toi_da_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phu_kien_di_kem]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phu_kien_di_kem](
	[phu_kien_di_kem_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[phu_kien_di_kem_name] [varchar](255) NULL,
	[phu_kien_di_kem_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[phu_kien_di_kem_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qua_tang]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qua_tang](
	[qua_tang_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[qua_tang_name] [varchar](255) NULL,
	[qua_tang_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[qua_tang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rams]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rams](
	[ram_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[ram_name] [varchar](255) NULL,
	[ram_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[rating_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[noi_dung] [varchar](255) NULL,
	[star] [int] NULL,
	[updated_at] [date] NULL,
	[customer_id] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[role_name] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[so_cong_luu_tru_toi_da]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[so_cong_luu_tru_toi_da](
	[so_cong_luu_tru_toi_da_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [date] NULL,
	[description] [varchar](255) NULL,
	[so_cong_luu_tru_toi_da_name] [varchar](255) NULL,
	[so_cong_luu_tru_toi_da_slug] [varchar](255) NULL,
	[updated_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[so_cong_luu_tru_toi_da_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 2/6/2022 10:52:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FKo3085rmxv0yy6f3u8k7hbtk1d] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([role_id])
GO
ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FKo3085rmxv0yy6f3u8k7hbtk1d]
GO
ALTER TABLE [dbo].[images]  WITH CHECK ADD  CONSTRAINT [FKghwsjbjo7mg3iufxruvq6iu3q] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[images] CHECK CONSTRAINT [FKghwsjbjo7mg3iufxruvq6iu3q]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKnoettwqr56yaai4i8nwxg4huo] FOREIGN KEY([status_id])
REFERENCES [dbo].[status] ([status_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKnoettwqr56yaai4i8nwxg4huo]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK3fv44qx1qugtu7q3lobm2uuc1] FOREIGN KEY([cpu_id])
REFERENCES [dbo].[cpu] ([cpu_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK3fv44qx1qugtu7q3lobm2uuc1]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK4e2u0rtxgwu7dr99j272d1n1w] FOREIGN KEY([ban_phim_id])
REFERENCES [dbo].[ban_phim] ([ban_phim_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK4e2u0rtxgwu7dr99j272d1n1w]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK6ml52tub5fen3pu3m2ptnuojd] FOREIGN KEY([ram_id])
REFERENCES [dbo].[rams] ([ram_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK6ml52tub5fen3pu3m2ptnuojd]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK6pe83hvj7nncay28uhaajcn3r] FOREIGN KEY([luu_tru_id])
REFERENCES [dbo].[luu_tru] ([luu_tru_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK6pe83hvj7nncay28uhaajcn3r]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK9th8blin6k9xd4409gkbrsbw8] FOREIGN KEY([he_dieu_hanh_id])
REFERENCES [dbo].[he_dieu_hanh] ([he_dieu_hanh_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK9th8blin6k9xd4409gkbrsbw8]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKa3a4mpsfdf4d2y6r8ra3sc8mv] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([brand_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKa3a4mpsfdf4d2y6r8ra3sc8mv]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKb8ypwufrcernghugl31owdkxc] FOREIGN KEY([cong_xuat_hinh_id])
REFERENCES [dbo].[cong_xuat_hinh] ([cong_xuat_hinh_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKb8ypwufrcernghugl31owdkxc]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKbpx0c30hqo51bj5o107hhfn87] FOREIGN KEY([phu_kien_di_kem_id])
REFERENCES [dbo].[phu_kien_di_kem] ([phu_kien_di_kem_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKbpx0c30hqo51bj5o107hhfn87]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKbq0q2r1gr800m3hs9asekoae4] FOREIGN KEY([pin_id])
REFERENCES [dbo].[pin] ([pin_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKbq0q2r1gr800m3hs9asekoae4]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKc3n1lo7r65sbvy6h5orrwj5xm] FOREIGN KEY([qua_tang_id])
REFERENCES [dbo].[qua_tang] ([qua_tang_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKc3n1lo7r65sbvy6h5orrwj5xm]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKebociq5k3b2tkcxh3q5dg4eed] FOREIGN KEY([color_id])
REFERENCES [dbo].[colors] ([color_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKebociq5k3b2tkcxh3q5dg4eed]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKka20rxln5smmp8quv4tii1v5] FOREIGN KEY([so_cong_luu_tru_toi_da_id])
REFERENCES [dbo].[so_cong_luu_tru_toi_da] ([so_cong_luu_tru_toi_da_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKka20rxln5smmp8quv4tii1v5]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKkcjv410qoek11dvcunwuryyns] FOREIGN KEY([man_hinh_id])
REFERENCES [dbo].[man_hinh] ([man_hinh_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKkcjv410qoek11dvcunwuryyns]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKpvgkklaepjrm833s9km2vguep] FOREIGN KEY([cpu_serie_id])
REFERENCES [dbo].[cpuserie] ([cpu_serie_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKpvgkklaepjrm833s9km2vguep]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKr4gotkp0q7bo75s6snobxvico] FOREIGN KEY([chip_do_hoa_id])
REFERENCES [dbo].[chip_do_hoa] ([chip_do_hoa_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKr4gotkp0q7bo75s6snobxvico]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKhujodw8bw5cr14t33y8v8r0e5] FOREIGN KEY([cong_ket_noi_id])
REFERENCES [dbo].[cong_ket_noi] ([cong_ket_noi_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKhujodw8bw5cr14t33y8v8r0e5]
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK4odf7rh1jmwmew4dnowoc73cf] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK4odf7rh1jmwmew4dnowoc73cf]
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK8tb7ssso49fofphwwgiebod0o] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK8tb7ssso49fofphwwgiebod0o]
GO
USE [master]
GO
ALTER DATABASE [PolyComputer] SET  READ_WRITE 
GO

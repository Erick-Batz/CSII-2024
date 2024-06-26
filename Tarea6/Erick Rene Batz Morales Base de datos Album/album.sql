USE [master]
GO
/****** Object:  Database [albums]    Script Date: 12/06/2024 14:55:08 ******/
CREATE DATABASE [albums]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'albums', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\albums.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'albums_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\albums_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [albums] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [albums].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [albums] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [albums] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [albums] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [albums] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [albums] SET ARITHABORT OFF 
GO
ALTER DATABASE [albums] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [albums] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [albums] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [albums] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [albums] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [albums] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [albums] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [albums] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [albums] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [albums] SET  DISABLE_BROKER 
GO
ALTER DATABASE [albums] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [albums] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [albums] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [albums] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [albums] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [albums] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [albums] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [albums] SET RECOVERY FULL 
GO
ALTER DATABASE [albums] SET  MULTI_USER 
GO
ALTER DATABASE [albums] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [albums] SET DB_CHAINING OFF 
GO
ALTER DATABASE [albums] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [albums] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [albums] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [albums] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'albums', N'ON'
GO
ALTER DATABASE [albums] SET QUERY_STORE = ON
GO
ALTER DATABASE [albums] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [albums]
GO
/****** Object:  Table [dbo].[album_campos]    Script Date: 12/06/2024 14:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[album_campos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title_album] [text] NULL,
	[artist] [text] NULL,
	[release_year] [int] NULL,
	[imag] [nvarchar](300) NULL,
	[descrip] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[album_campos] ON 

INSERT [dbo].[album_campos] ([ID], [title_album], [artist], [release_year], [imag], [descrip]) VALUES (1, N'Caravana', N'Wos', 2019, N'https://i.scdn.co/image/ab67616d0000b2730464a4a2b1558725d9d97277', N'Caravana es una obra que en menos de 20 minutos puede decir muchas cosas distintas. Representa para el artista una serie de fotografías de la manera de ver su vida en Buenos Aires, que finalmente se puede trasladar la experiencia a cualquier ciudad latina. “Fresco” es una prueba emocionante.')
INSERT [dbo].[album_campos] ([ID], [title_album], [artist], [release_year], [imag], [descrip]) VALUES (2, N'tres puntos supensivos', N'wos', 2020, N'https://indiehoy.com/wp-content/uploads/2020/05/wos-tres-puntos-suspensivos.jpg', N'res puntos suspensivos está compuesto por cuatro canciones craneadas y producidas a distancia, en medio del aislamiento social, preventivo y obligatorio en este contexto de cuarentena.')
INSERT [dbo].[album_campos] ([ID], [title_album], [artist], [release_year], [imag], [descrip]) VALUES (3, N'Oscuro Extasis', N'wos', 2021, N'https://i.scdn.co/image/ab67616d0000b273cdb97c1de867f1b7ae0dc443', N'Wos lanzó su segundo disco “Oscuro Éxtasis”. El álbum está integrado por 13 tracks y una nueva búsqueda de sonidos para Wos, mezclando varios géneros como rock y funk, entre otros, aunque siempre pregonando al rap como principal herramienta. Las letras son mucho más profundas que las que podemos encontrar en Caravana.')
INSERT [dbo].[album_campos] ([ID], [title_album], [artist], [release_year], [imag], [descrip]) VALUES (4, N'Donde jugaran los niños', N'mana', 1992, N'https://i.scdn.co/image/ab67616d0000b27363f3b7f5abf86ad483b57b77', N'Esta canción quiere transmitir un mensaje de reflexion acerca del gran problema que tenemos al consumir sin moderación y llegar a crear un gran problema para el planeta y para todos los recursos que nos da la naturaleza y que poco a poco vamos destruyendo sin darnos cuenta.')
INSERT [dbo].[album_campos] ([ID], [title_album], [artist], [release_year], [imag], [descrip]) VALUES (5, N'Envolve', N'Imagine Dragons', 2017, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1G44P446Oo_11BAkxJknPnjFGLSAY1zEhyQ&s', N'El nuevo disco de Imagine Dragons, ''Evolve'', es, como sugiere su título, una "evolución" para los cuatro de Las Vegas, que firman canciones con una estética muy diferente a la de álbumes anteriores y en la que confían para "continuar viviendo día a día y ser felices haciendo música"')
INSERT [dbo].[album_campos] ([ID], [title_album], [artist], [release_year], [imag], [descrip]) VALUES (6, N'a quien corresponda', N'malacates ', 2015, N'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/ec/30/96/ec30960c-e63e-9aed-1f36-f56b98b763ac/859714790352.png/600x600bf-60.jpg', N'banda musical guatemalteca llamada malacates trebol shop')
SET IDENTITY_INSERT [dbo].[album_campos] OFF
GO
USE [master]
GO
ALTER DATABASE [albums] SET  READ_WRITE 
GO

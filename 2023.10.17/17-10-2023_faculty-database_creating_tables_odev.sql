create database FacultyOdevDB
go
use FacultyOdevDB
go

--Öðrenciler Table
create Table Ogrenciler(
ID int not null primary key identity(1,1),
TcNo char(11) not null,
Ýsim nvarchar(50) not null,
Soyisim nvarchar(50) not null,
ÖðrenciNo char(10) not null,
DoðumTarihi date,
DoðumYeri nvarchar(50),
TelNo char(11),
ÝkametgahAdresi nvarchar(255)
)
go
--Bölümler Table
create table Bolumler(
ID int not null primary key identity(1,1),
BölümÝsmi nvarchar(255) not null,
ÖðrenciSayýsý int not null,
AkademikPersonelSayýsý int not null,
Süre smallint not null
)
go
--ÖðrencilerBölümler Table
create table OgrencilerBolumler(
ÖðrenciID int foreign key references Ogrenciler(ID),
BölümID int foreign key references Bolumler(ID)
)
go
--Dersler Table
create table Dersler(
ID int not null primary key identity(1,1),
DersÝsmi nvarchar(100) not null,
Kredi smallint not null,
AKTS smallint not null,
DersiAlanÖðrenciSayýsý smallint not null,
DersiVerenAkademikPersonelSayýsý smallint not null
)
go
--ÖðrencilerDersler Table
create table OgrencilerDersler(
ÖðrenciID int not null foreign key references Ogrenciler(ID),
DersID int not null foreign key references Dersler(ID)
)
go
--SosyalKulüpler Table
create table SosyalKulupler(
ID int not null primary key identity(1,1),
Ýsmi nvarchar(100) not null,
KuruluþTarihi date,
ÜyeSayýsý smallint not null,
Açýklama nvarchar(500)
)
go
--ÖðrencilerSosyalKulüpler Table
create table OgrencilerSosyalKulupler(
ÖðrenciID int not null foreign key references Ogrenciler(ID),
SosyalKulüpID int not null foreign key references SosyalKulupler(ID)
)
go
--AkademikPersoneller table
create table AkademikPersoneller(
ID int not null primary key identity(1,1),
TcNo char(11) not null,
Ýsim nvarchar(50) not null,
Soyisim nvarchar(50) not null,
Ünvan nvarchar(50) not null,
Alan nvarchar(100) not null,
PersonelNo char(10) not null,
DoðumTarihi date,
DoðumYeri nvarchar(50),
TelNo char(11),
ÝkametgahAdresi nvarchar(255)
)
go
--BölümlerAkademikPersoneller table
create table BolumlerAkademikPersoneller(
BölümID int not null foreign key references Bolumler(ID),
AkademikPersonelID int not null foreign key references AkademikPersoneller(ID)
)
go
--DerslerAkademikPersoneller table
create table DerslerAkademikPersoneller(
DersID int not null foreign key references Dersler(ID),
AkademikPersonelID int not null foreign key references AkademikPersoneller(ID)
)
go
--ÝdariPersoneller Table
create table IdariPersoneller(
ID int not null primary key identity(1,1),
BölümID int not null foreign key references Bolumler(ID),
TcNo char(11) not null,
Ýsim nvarchar(50) not null,
Soyisim nvarchar(50) not null,
Pozisyon nvarchar(50) not null,
DoðumTarihi date,
DoðumYeri nvarchar(50),
TelNo char(11),
ÝkametgahAdresi nvarchar(255)
)
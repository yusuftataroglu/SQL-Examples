create database FacultyOdevDB
go
use FacultyOdevDB
go

--��renciler Table
create Table Ogrenciler(
ID int not null primary key identity(1,1),
TcNo char(11) not null,
�sim nvarchar(50) not null,
Soyisim nvarchar(50) not null,
��renciNo char(10) not null,
Do�umTarihi date,
Do�umYeri nvarchar(50),
TelNo char(11),
�kametgahAdresi nvarchar(255)
)
go
--B�l�mler Table
create table Bolumler(
ID int not null primary key identity(1,1),
B�l�m�smi nvarchar(255) not null,
��renciSay�s� int not null,
AkademikPersonelSay�s� int not null,
S�re smallint not null
)
go
--��rencilerB�l�mler Table
create table OgrencilerBolumler(
��renciID int foreign key references Ogrenciler(ID),
B�l�mID int foreign key references Bolumler(ID)
)
go
--Dersler Table
create table Dersler(
ID int not null primary key identity(1,1),
Ders�smi nvarchar(100) not null,
Kredi smallint not null,
AKTS smallint not null,
DersiAlan��renciSay�s� smallint not null,
DersiVerenAkademikPersonelSay�s� smallint not null
)
go
--��rencilerDersler Table
create table OgrencilerDersler(
��renciID int not null foreign key references Ogrenciler(ID),
DersID int not null foreign key references Dersler(ID)
)
go
--SosyalKul�pler Table
create table SosyalKulupler(
ID int not null primary key identity(1,1),
�smi nvarchar(100) not null,
Kurulu�Tarihi date,
�yeSay�s� smallint not null,
A��klama nvarchar(500)
)
go
--��rencilerSosyalKul�pler Table
create table OgrencilerSosyalKulupler(
��renciID int not null foreign key references Ogrenciler(ID),
SosyalKul�pID int not null foreign key references SosyalKulupler(ID)
)
go
--AkademikPersoneller table
create table AkademikPersoneller(
ID int not null primary key identity(1,1),
TcNo char(11) not null,
�sim nvarchar(50) not null,
Soyisim nvarchar(50) not null,
�nvan nvarchar(50) not null,
Alan nvarchar(100) not null,
PersonelNo char(10) not null,
Do�umTarihi date,
Do�umYeri nvarchar(50),
TelNo char(11),
�kametgahAdresi nvarchar(255)
)
go
--B�l�mlerAkademikPersoneller table
create table BolumlerAkademikPersoneller(
B�l�mID int not null foreign key references Bolumler(ID),
AkademikPersonelID int not null foreign key references AkademikPersoneller(ID)
)
go
--DerslerAkademikPersoneller table
create table DerslerAkademikPersoneller(
DersID int not null foreign key references Dersler(ID),
AkademikPersonelID int not null foreign key references AkademikPersoneller(ID)
)
go
--�dariPersoneller Table
create table IdariPersoneller(
ID int not null primary key identity(1,1),
B�l�mID int not null foreign key references Bolumler(ID),
TcNo char(11) not null,
�sim nvarchar(50) not null,
Soyisim nvarchar(50) not null,
Pozisyon nvarchar(50) not null,
Do�umTarihi date,
Do�umYeri nvarchar(50),
TelNo char(11),
�kametgahAdresi nvarchar(255)
)
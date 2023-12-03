use FacultyOdevDB
--Ogrenciler Samples
insert Ogrenciler(TcNo,�sim,Soyisim,��renciNo) values
('18324514642','Yusuf','Tataro�lu','1170501059'),
('16523152344','Bedirhan','G�ne�','1170501042'),
('71353452138','Aykut','Durmu�','1170501038'),
('12346832344','Ya�mur','Yaman','1170501072'),
('72345890826','Ahmet','T�rker','1170105060'),
('18253490814','Kutlu','G�m��','1170105022'),
('23458973242','Zeynep','Y�lmaz','1170105048'),
('73245372440','Elif','Akta�','1170101025'),
('11256341126','Aylin','Aslanta�','1170501001'),
('11484123488','Hasan','Tatar','1170501011')

--Bolumler Samples
insert Bolumler (B�l�m�smi, ��renciSay�s�, AkademikPersonelSay�s�, S�re) values
('Bilgisayar M�hendisli�i', 300, 20, 4),
('Elektrik M�hendisli�i', 250, 15, 4),
('Makine M�hendisli�i', 200, 12, 4),
('Kimya M�hendisli�i', 150, 10, 4)
select * from Bolumler

--Dersler Samples
insert Dersler (Ders�smi, Kredi, AKTS, DersiAlan��renciSay�s�, DersiVerenAkademikPersonelSay�s�) values
('Veritaban� Y�netimi', 3, 5, 50, 3),
('Bilgisayar A�lar�', 3, 5, 60, 4),
('Veri Yap�lar� ve Algoritmalar', 4, 7, 55, 5),
('Nesne Y�nelimli Programlama', 4, 7, 60, 6),
('Elektrik Devreleri', 3, 5, 45, 3),
('Elektrik Elemanlar�', 4, 7, 50, 4),
('Makine Tasar�m�', 3, 5, 40, 3),
('�retim Y�netimi', 4, 7, 35, 4),
('Kimya Temelleri', 3, 5, 60, 3),
('Organik Kimya', 4, 7, 50, 4)

--AkademikPersoneller samples
insert AkademikPersoneller (TcNo, �sim, Soyisim, �nvan, Alan, PersonelNo, Do�umTarihi, Do�umYeri) values
('84263749588', 'El�in', 'Y�lmaz', 'Profes�r', 'Bilgisayar M�hendisli�i', 'AP101', '1965-02-15', 'Ankara'),
('37291857626', 'Rahmi', 'Demir', 'Do�ent', 'Bilgisayar M�hendisli�i', 'AP102', '1970-06-20', '�stanbul'),
('57318947232', 'Mehmet', 'Y�ld�r�m', 'Profes�r', 'Elektrik M�hendisli�i', 'AP201', '1968-04-10', '�zmir'),
('73405972124', 'Fatma', 'Akta�', 'Do�ent', 'Elektrik M�hendisli�i', 'AP202', '1975-09-25', '�stanbul'),
('12763120756', 'Ali', 'G�ne�', 'Profes�r', 'Makine M�hendisli�i', 'AP301', '1972-01-12', 'Bursa'),
('13741203718', 'Neslihan', 'Demir', 'Do�ent', 'Makine M�hendisli�i', 'AP302', '1980-05-30', 'Sakarya'),
('31278931232', 'G�l�in', 'Aksoy', 'Profes�r', 'Kimya M�hendisli�i', 'AP401', '1966-03-20', 'Eski�ehir'),
('52757234180', 'H�seyin', 'Ta�', 'Do�ent', 'Kimya M�hendisli�i', 'AP402', '1977-11-15', '�stanbul')

--�dari Personeller samples
insert IdariPersoneller (B�l�mID, TcNo, �sim, Soyisim, Pozisyon, Do�umTarihi, Do�umYeri) values
(1, '94856293866', 'Nurg�l', 'Ay', 'Sekreter', '1975-04-10', 'Mu�la'),
(2, '31293678128', 'Gamze', 'Yeti�', 'Muhasebeci', '1980-09-25', '�stanbul'),
(3, '17390127312', 'Fehmi', 'Yeter', 'Sekreter', '1972-01-12', 'Ankara'),
(4, '12389125234', 'Nagihan', 'Ate�', 'Muhasebeci', '1985-05-30', 'Edirne')

--SosyalKulupler samples
insert SosyalKulupler (�smi, Kurulu�Tarihi, �yeSay�s�) values
('M�zik Kul�b�', '2015-05-10', 50),
('Spor Kul�b�', '2013-03-15', 75),
('Tiyatro Kul�b�', '2018-08-20', 40),
('Do�a Sporlar� Kul�b�', '2016-06-25', 30),
('Bilim ve Teknoloji Kul�b�', '2017-12-05', 60)

--BolumlerAkademikPersoneller samples
insert BolumlerAkademikPersoneller (B�l�mID,AkademikPersonelID) values
(1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8)

--DerslerAkademikPersoneller samples
insert DerslerAkademikPersoneller(DersID,AkademikPersonelID) values
(1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,3),(5,4),(6,3),(6,4),(7,5),(7,6),(8,5),(8,6),(9,7),(9,8),(10,7),(10,8)

--OgrencilerBolumler samples
insert OgrencilerBolumler(��renciID,B�l�mID) values
(1,2),(2,2),(3,2),(4,1),(5,1),(6,1),(7,4),(8,4),(9,3),(10,3)

--OgrencilerDersler samples
insert OgrencilerDersler(��renciID,DersID) values
(1,5),(1,6),(2,5),(2,6),(3,5),(3,6),(4,1),(4,2),(4,3),(4,4),(5,1),(5,2),(5,3),(5,4),(6,1),(6,2),(6,3),(6,4),(7,9),(7,10),(8,9),(9,10),(9,7),(9,8),(10,7),(10,8)

--OgrencilerSosyalKul�pler samples
insert OgrencilerSosyalKulupler(��renciID,SosyalKul�pID) values
(1,5),(2,5),(3,1),(3,2),(4,3),(5,4),(6,2),(7,1),(8,3),(9,5),(10,3)
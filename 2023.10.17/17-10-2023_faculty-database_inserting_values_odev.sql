use FacultyOdevDB
--Ogrenciler Samples
insert Ogrenciler(TcNo,Ýsim,Soyisim,ÖðrenciNo) values
('18324514642','Yusuf','Tataroðlu','1170501059'),
('16523152344','Bedirhan','Güneþ','1170501042'),
('71353452138','Aykut','Durmuþ','1170501038'),
('12346832344','Yaðmur','Yaman','1170501072'),
('72345890826','Ahmet','Türker','1170105060'),
('18253490814','Kutlu','Gümüþ','1170105022'),
('23458973242','Zeynep','Yýlmaz','1170105048'),
('73245372440','Elif','Aktaþ','1170101025'),
('11256341126','Aylin','Aslantaþ','1170501001'),
('11484123488','Hasan','Tatar','1170501011')

--Bolumler Samples
insert Bolumler (BölümÝsmi, ÖðrenciSayýsý, AkademikPersonelSayýsý, Süre) values
('Bilgisayar Mühendisliði', 300, 20, 4),
('Elektrik Mühendisliði', 250, 15, 4),
('Makine Mühendisliði', 200, 12, 4),
('Kimya Mühendisliði', 150, 10, 4)
select * from Bolumler

--Dersler Samples
insert Dersler (DersÝsmi, Kredi, AKTS, DersiAlanÖðrenciSayýsý, DersiVerenAkademikPersonelSayýsý) values
('Veritabaný Yönetimi', 3, 5, 50, 3),
('Bilgisayar Aðlarý', 3, 5, 60, 4),
('Veri Yapýlarý ve Algoritmalar', 4, 7, 55, 5),
('Nesne Yönelimli Programlama', 4, 7, 60, 6),
('Elektrik Devreleri', 3, 5, 45, 3),
('Elektrik Elemanlarý', 4, 7, 50, 4),
('Makine Tasarýmý', 3, 5, 40, 3),
('Üretim Yönetimi', 4, 7, 35, 4),
('Kimya Temelleri', 3, 5, 60, 3),
('Organik Kimya', 4, 7, 50, 4)

--AkademikPersoneller samples
insert AkademikPersoneller (TcNo, Ýsim, Soyisim, Ünvan, Alan, PersonelNo, DoðumTarihi, DoðumYeri) values
('84263749588', 'Elçin', 'Yýlmaz', 'Profesör', 'Bilgisayar Mühendisliði', 'AP101', '1965-02-15', 'Ankara'),
('37291857626', 'Rahmi', 'Demir', 'Doçent', 'Bilgisayar Mühendisliði', 'AP102', '1970-06-20', 'Ýstanbul'),
('57318947232', 'Mehmet', 'Yýldýrým', 'Profesör', 'Elektrik Mühendisliði', 'AP201', '1968-04-10', 'Ýzmir'),
('73405972124', 'Fatma', 'Aktaþ', 'Doçent', 'Elektrik Mühendisliði', 'AP202', '1975-09-25', 'Ýstanbul'),
('12763120756', 'Ali', 'Güneþ', 'Profesör', 'Makine Mühendisliði', 'AP301', '1972-01-12', 'Bursa'),
('13741203718', 'Neslihan', 'Demir', 'Doçent', 'Makine Mühendisliði', 'AP302', '1980-05-30', 'Sakarya'),
('31278931232', 'Gülçin', 'Aksoy', 'Profesör', 'Kimya Mühendisliði', 'AP401', '1966-03-20', 'Eskiþehir'),
('52757234180', 'Hüseyin', 'Taþ', 'Doçent', 'Kimya Mühendisliði', 'AP402', '1977-11-15', 'Ýstanbul')

--Ýdari Personeller samples
insert IdariPersoneller (BölümID, TcNo, Ýsim, Soyisim, Pozisyon, DoðumTarihi, DoðumYeri) values
(1, '94856293866', 'Nurgül', 'Ay', 'Sekreter', '1975-04-10', 'Muðla'),
(2, '31293678128', 'Gamze', 'Yetiþ', 'Muhasebeci', '1980-09-25', 'Ýstanbul'),
(3, '17390127312', 'Fehmi', 'Yeter', 'Sekreter', '1972-01-12', 'Ankara'),
(4, '12389125234', 'Nagihan', 'Ateþ', 'Muhasebeci', '1985-05-30', 'Edirne')

--SosyalKulupler samples
insert SosyalKulupler (Ýsmi, KuruluþTarihi, ÜyeSayýsý) values
('Müzik Kulübü', '2015-05-10', 50),
('Spor Kulübü', '2013-03-15', 75),
('Tiyatro Kulübü', '2018-08-20', 40),
('Doða Sporlarý Kulübü', '2016-06-25', 30),
('Bilim ve Teknoloji Kulübü', '2017-12-05', 60)

--BolumlerAkademikPersoneller samples
insert BolumlerAkademikPersoneller (BölümID,AkademikPersonelID) values
(1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8)

--DerslerAkademikPersoneller samples
insert DerslerAkademikPersoneller(DersID,AkademikPersonelID) values
(1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,3),(5,4),(6,3),(6,4),(7,5),(7,6),(8,5),(8,6),(9,7),(9,8),(10,7),(10,8)

--OgrencilerBolumler samples
insert OgrencilerBolumler(ÖðrenciID,BölümID) values
(1,2),(2,2),(3,2),(4,1),(5,1),(6,1),(7,4),(8,4),(9,3),(10,3)

--OgrencilerDersler samples
insert OgrencilerDersler(ÖðrenciID,DersID) values
(1,5),(1,6),(2,5),(2,6),(3,5),(3,6),(4,1),(4,2),(4,3),(4,4),(5,1),(5,2),(5,3),(5,4),(6,1),(6,2),(6,3),(6,4),(7,9),(7,10),(8,9),(9,10),(9,7),(9,8),(10,7),(10,8)

--OgrencilerSosyalKulüpler samples
insert OgrencilerSosyalKulupler(ÖðrenciID,SosyalKulüpID) values
(1,5),(2,5),(3,1),(3,2),(4,3),(5,4),(6,2),(7,1),(8,3),(9,5),(10,3)
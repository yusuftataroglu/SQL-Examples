use FacultyOdevDB

--10 adet where
--�sim soyismi "Aylin Aslanta�" olan ��rencinin bilgilerini getir.
select * from Ogrenciler where �sim = 'Aylin' and Soyisim = 'Aslanta�'
--Kimya M�hendisli�inde okuyan ��renci say�s�n� getir.
select ��renciSay�s� from Bolumler where B�l�m�smi = 'Kimya M�hendisli�i'
--Veritaban� Y�netimi dersinin AKTS'sini getir.
select AKTS from Dersler where Ders�smi = 'Veritaban� Y�netimi'
--�nvan� Profes�r olan akademik personellerin bilgilerini getir.
select * from AkademikPersoneller where �nvan = 'Profes�r'
--�ye say�s� 45'ten fazla olan sosyal kul�plerin bilgilerini getir.
select * from SosyalKulupler where �yeSay�s� > 45
--Pozisyonu muhasebeci olan idari personellerin isim ve soyismini getir.
select �sim, Soyisim from IdariPersoneller where Pozisyon = 'Muhasebeci'
--2015'ten sonra kurulan sosyal kul�plerin ismini ve �ye say�s�n� getir.
select �smi, �yeSay�s� from SosyalKulupler where Year(Kurulu�Tarihi) > 2015
--Dersi veren akademik personel say�s� 4'ten az olan dersleri getir.
select * from Dersler where DersiVerenAkademikPersonelSay�s� < 4
--AKTS'si 5'ten b�y�k olan derslerin ismini getir.
select Ders�smi from Dersler where AKTS > 5


--2 adet SubQuery
--Bilgisayar M�hendisli�iyle ilgilenen idari personelin bilgilerini getir.
select * from IdariPersoneller where IdariPersoneller.B�l�mID = (select Bolumler.ID from Bolumler where B�l�m�smi = 'Bilgisayar M�hendisli�i')
--Veritaban� Y�netimi dersini veren akademik personellerin isim, soyisim ve �nvanlar�n� getir.
select
(select �sim from AkademikPersoneller where AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID),
(select Soyisim from AkademikPersoneller where AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID),
(select �nvan from AkademikPersoneller where AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID)
from
DerslerAkademikPersoneller
where DerslerAkademikPersoneller.DersID = (select Dersler.ID from Dersler where Ders�smi = 'Veritaban� Y�netimi')


--5 adet join
--Hangi ��renci hangi sosyal kul�be �ye?
select Ogrenciler.�sim,Ogrenciler.Soyisim,SosyalKulupler.�smi from OgrencilerSosyalKulupler
inner join Ogrenciler on Ogrenciler.ID = OgrencilerSosyalKulupler.��renciID
inner join SosyalKulupler on SosyalKulupler.ID = OgrencilerSosyalKulupler.SosyalKul�pID

--Hangi akademik personel hangi dersi veriyor?
select AkademikPersoneller.�sim,AkademikPersoneller.Soyisim,AkademikPersoneller.Alan,Dersler.Ders�smi from DerslerAkademikPersoneller
inner join Dersler on Dersler.ID = DerslerAkademikPersoneller.DersID
inner join AkademikPersoneller on AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID

--Hangi idari personel hangi b�l�mle ilgileniyor?
select IdariPersoneller.�sim,IdariPersoneller.Soyisim,Bolumler.B�l�m�smi from IdariPersoneller
inner join Bolumler on Bolumler.ID = IdariPersoneller.B�l�mID

--Hangi ��renci hangi b�l�me kay�tl�?
select Ogrenciler.�sim,Ogrenciler.Soyisim,Bolumler.B�l�m�smi from OgrencilerBolumler
inner join Ogrenciler on Ogrenciler.ID = OgrencilerBolumler.��renciID
inner join Bolumler on Bolumler.ID = OgrencilerBolumler.B�l�mID

--Hangi akademik personel hangi b�l�me derse giriyor?
select AkademikPersoneller.�sim,AkademikPersoneller.Soyisim,Bolumler.B�l�m�smi from BolumlerAkademikPersoneller
inner join Bolumler on Bolumler.ID = BolumlerAkademikPersoneller.B�l�mID
inner join AkademikPersoneller on AkademikPersoneller.ID = BolumlerAkademikPersoneller.AkademikPersonelID


--3 adet Aggregate
--Fak�ltede toplam ka� ��renci var?
select SUM(Bolumler.��renciSay�s�) from Bolumler
--Akademik personellerden en ya�l� olan�n do�um tarihini getir.
select MIN(YEAR(AkademikPersoneller.Do�umTarihi)) from AkademikPersoneller 
--Bilgisayar m�hendisli�indeki derslerin toplam AKTS'si nedir?
select SUM(Dersler.AKTS) from Bolumler
inner join BolumlerAkademikPersoneller on BolumlerAkademikPersoneller.B�l�mID = Bolumler.ID
inner join AkademikPersoneller on AkademikPersoneller.ID = BolumlerAkademikPersoneller.AkademikPersonelID
inner join DerslerAkademikPersoneller on DerslerAkademikPersoneller.AkademikPersonelID = AkademikPersoneller.ID
inner join Dersler on Dersler.ID = DerslerAkademikPersoneller.DersID
where Bolumler.B�l�m�smi = 'Bilgisayar M�hendisli�i' --Hatal� ��kt�.
use FacultyOdevDB

--10 adet where
--Ýsim soyismi "Aylin Aslantaþ" olan öðrencinin bilgilerini getir.
select * from Ogrenciler where Ýsim = 'Aylin' and Soyisim = 'Aslantaþ'
--Kimya Mühendisliðinde okuyan öðrenci sayýsýný getir.
select ÖðrenciSayýsý from Bolumler where BölümÝsmi = 'Kimya Mühendisliði'
--Veritabaný Yönetimi dersinin AKTS'sini getir.
select AKTS from Dersler where DersÝsmi = 'Veritabaný Yönetimi'
--Ünvaný Profesör olan akademik personellerin bilgilerini getir.
select * from AkademikPersoneller where Ünvan = 'Profesör'
--Üye sayýsý 45'ten fazla olan sosyal kulüplerin bilgilerini getir.
select * from SosyalKulupler where ÜyeSayýsý > 45
--Pozisyonu muhasebeci olan idari personellerin isim ve soyismini getir.
select Ýsim, Soyisim from IdariPersoneller where Pozisyon = 'Muhasebeci'
--2015'ten sonra kurulan sosyal kulüplerin ismini ve üye sayýsýný getir.
select Ýsmi, ÜyeSayýsý from SosyalKulupler where Year(KuruluþTarihi) > 2015
--Dersi veren akademik personel sayýsý 4'ten az olan dersleri getir.
select * from Dersler where DersiVerenAkademikPersonelSayýsý < 4
--AKTS'si 5'ten büyük olan derslerin ismini getir.
select DersÝsmi from Dersler where AKTS > 5


--2 adet SubQuery
--Bilgisayar Mühendisliðiyle ilgilenen idari personelin bilgilerini getir.
select * from IdariPersoneller where IdariPersoneller.BölümID = (select Bolumler.ID from Bolumler where BölümÝsmi = 'Bilgisayar Mühendisliði')
--Veritabaný Yönetimi dersini veren akademik personellerin isim, soyisim ve ünvanlarýný getir.
select
(select Ýsim from AkademikPersoneller where AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID),
(select Soyisim from AkademikPersoneller where AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID),
(select Ünvan from AkademikPersoneller where AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID)
from
DerslerAkademikPersoneller
where DerslerAkademikPersoneller.DersID = (select Dersler.ID from Dersler where DersÝsmi = 'Veritabaný Yönetimi')


--5 adet join
--Hangi öðrenci hangi sosyal kulübe üye?
select Ogrenciler.Ýsim,Ogrenciler.Soyisim,SosyalKulupler.Ýsmi from OgrencilerSosyalKulupler
inner join Ogrenciler on Ogrenciler.ID = OgrencilerSosyalKulupler.ÖðrenciID
inner join SosyalKulupler on SosyalKulupler.ID = OgrencilerSosyalKulupler.SosyalKulüpID

--Hangi akademik personel hangi dersi veriyor?
select AkademikPersoneller.Ýsim,AkademikPersoneller.Soyisim,AkademikPersoneller.Alan,Dersler.DersÝsmi from DerslerAkademikPersoneller
inner join Dersler on Dersler.ID = DerslerAkademikPersoneller.DersID
inner join AkademikPersoneller on AkademikPersoneller.ID = DerslerAkademikPersoneller.AkademikPersonelID

--Hangi idari personel hangi bölümle ilgileniyor?
select IdariPersoneller.Ýsim,IdariPersoneller.Soyisim,Bolumler.BölümÝsmi from IdariPersoneller
inner join Bolumler on Bolumler.ID = IdariPersoneller.BölümID

--Hangi öðrenci hangi bölüme kayýtlý?
select Ogrenciler.Ýsim,Ogrenciler.Soyisim,Bolumler.BölümÝsmi from OgrencilerBolumler
inner join Ogrenciler on Ogrenciler.ID = OgrencilerBolumler.ÖðrenciID
inner join Bolumler on Bolumler.ID = OgrencilerBolumler.BölümID

--Hangi akademik personel hangi bölüme derse giriyor?
select AkademikPersoneller.Ýsim,AkademikPersoneller.Soyisim,Bolumler.BölümÝsmi from BolumlerAkademikPersoneller
inner join Bolumler on Bolumler.ID = BolumlerAkademikPersoneller.BölümID
inner join AkademikPersoneller on AkademikPersoneller.ID = BolumlerAkademikPersoneller.AkademikPersonelID


--3 adet Aggregate
--Fakültede toplam kaç öðrenci var?
select SUM(Bolumler.ÖðrenciSayýsý) from Bolumler
--Akademik personellerden en yaþlý olanýn doðum tarihini getir.
select MIN(YEAR(AkademikPersoneller.DoðumTarihi)) from AkademikPersoneller 
--Bilgisayar mühendisliðindeki derslerin toplam AKTS'si nedir?
select SUM(Dersler.AKTS) from Bolumler
inner join BolumlerAkademikPersoneller on BolumlerAkademikPersoneller.BölümID = Bolumler.ID
inner join AkademikPersoneller on AkademikPersoneller.ID = BolumlerAkademikPersoneller.AkademikPersonelID
inner join DerslerAkademikPersoneller on DerslerAkademikPersoneller.AkademikPersonelID = AkademikPersoneller.ID
inner join Dersler on Dersler.ID = DerslerAkademikPersoneller.DersID
where Bolumler.BölümÝsmi = 'Bilgisayar Mühendisliði' --Hatalý çýktý.
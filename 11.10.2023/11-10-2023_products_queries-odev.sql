use [ECommerceOdevDB_11-10-23]

-- 10 adet select sorusu ve cevabý:

-- Kullanýcýlar tablosundan tüm kullanýcýlarý ekrana getir.
select * from Users
-- Kategoriler tablosundan kategori adý kolonunu ekrana getir.
select CategoryName from Categories
-- Tedarikçiler tablosundan þirket adý kolonunu ekrana getir. Kolon adý Türkçe olsun.
select CompanyName as 'Þirket Adý' from Suppliers
-- Ürünler tablosundan ürün adý ve stok miktarýný ekrana getir.
select ProductName, UnitsInStock from Products
-- Kullanýcý detaylarý tablosundan kullanýcýlarýn isimlerini ve epostalarýný ekrana getir. Kolon adlarý Türkçe olsun.
select FirstName as 'Ýsim', Email as 'Eposta' from UserDetails
-- Sipariþler tablosundan sipariþ kodu ve ürün id'sini ekrana getir.
select OrderCode, ProductId from Orders
-- Müþteriler tablosundan adres kolonunu ekrana getir.
select Address from Customers
-- Kullanýcý detaylarý tablosundan isim ve eposta kolonlarýný tek bir kolonda ekrana getir. Kolon adý Türkçe olsun.
select FirstName + ' ' + Email as 'Ýsim Eposta' from UserDetails
-- Kullanýcýlar tablosundan parola kolonunu getir.
select Password from Users
-- Ürünler tablosunun tüm kolonlarýný ekrana getir.
select * from Products

--**********************************************************************************************************************

-- 10 adet where sorusu ve cevabý

-- Fiyatý 60 ve üstü olan ürünlerin tüm özelliklerini listele.
select * from Products where UnitPrice >= 60
-- Fiyatý 60 ve üstü olan ürünlerin sadece fiyat bilgisini listele.
select UnitPrice from Products where UnitPrice >=60
-- Fiyatý 40 ile 80 arasýnda olan ürünlerin stok miktarýný listele. (40 ve 80 dahil)
select UnitsInStock from Products where UnitPrice between 40 and 80
-- Fiyatý 50'den fazla olan ürünlerin ürün adýný kolon adý Türkçe olacak þekilde listele.
select ProductName as 'Ürün Adý' from Products where Unitprice > 50
-- Fiyatý 50 ile 150 arasýnda olan ürünlerin, fiyatý ve stok miktarlarýný tek bir kolon olacak þekilde listele. (50 ve 150 hariç)
select UnitPrice + ' ' + UnitsInStock as 'Fiyat Stok Miktarý' from Products where UnitPrice > 50 and UnitPrice < 150
-- Stokta olmayan ürünleri listele.
select * from Products where UnitsInStock = 0
-- Kullanýcýlardan ismi Yusuf olanlarýn soyisimlerini listele.
select LastName from UserDetails where FirstName = 'Yusuf'
-- Kullanýcýlardan ismi Yaðmur olanlarýn soyismini ve eposta adresini ekrana getir. Kolon adlarý Türkçe olsun.
select LastName as 'Soyisim', Email as 'Eposta' from UserDetails where FirstName = 'Yaðmur'
-- Türkiye Ýþ Bankasý Kültür Yayýnlarý isimli tedarikçinin tüm bilgilerini listele.
select * from Suppliers where CompanyName = 'Türkiye Ýþ Bankasý Kültür Yayýnlarý'
-- Total fiyatý 50'den fazla olan ürün sipariþ eden müþterilerin id'lerini listele.
select CustomerId from Orders where TotalPrice > 50
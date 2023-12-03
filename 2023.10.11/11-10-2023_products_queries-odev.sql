use [ECommerceOdevDB_11-10-23]

-- 10 adet select sorusu ve cevab�:

-- Kullan�c�lar tablosundan t�m kullan�c�lar� ekrana getir.
select * from Users
-- Kategoriler tablosundan kategori ad� kolonunu ekrana getir.
select CategoryName from Categories
-- Tedarik�iler tablosundan �irket ad� kolonunu ekrana getir. Kolon ad� T�rk�e olsun.
select CompanyName as '�irket Ad�' from Suppliers
-- �r�nler tablosundan �r�n ad� ve stok miktar�n� ekrana getir.
select ProductName, UnitsInStock from Products
-- Kullan�c� detaylar� tablosundan kullan�c�lar�n isimlerini ve epostalar�n� ekrana getir. Kolon adlar� T�rk�e olsun.
select FirstName as '�sim', Email as 'Eposta' from UserDetails
-- Sipari�ler tablosundan sipari� kodu ve �r�n id'sini ekrana getir.
select OrderCode, ProductId from Orders
-- M��teriler tablosundan adres kolonunu ekrana getir.
select Address from Customers
-- Kullan�c� detaylar� tablosundan isim ve eposta kolonlar�n� tek bir kolonda ekrana getir. Kolon ad� T�rk�e olsun.
select FirstName + ' ' + Email as '�sim Eposta' from UserDetails
-- Kullan�c�lar tablosundan parola kolonunu getir.
select Password from Users
-- �r�nler tablosunun t�m kolonlar�n� ekrana getir.
select * from Products

--**********************************************************************************************************************

-- 10 adet where sorusu ve cevab�

-- Fiyat� 60 ve �st� olan �r�nlerin t�m �zelliklerini listele.
select * from Products where UnitPrice >= 60
-- Fiyat� 60 ve �st� olan �r�nlerin sadece fiyat bilgisini listele.
select UnitPrice from Products where UnitPrice >=60
-- Fiyat� 40 ile 80 aras�nda olan �r�nlerin stok miktar�n� listele. (40 ve 80 dahil)
select UnitsInStock from Products where UnitPrice between 40 and 80
-- Fiyat� 50'den fazla olan �r�nlerin �r�n ad�n� kolon ad� T�rk�e olacak �ekilde listele.
select ProductName as '�r�n Ad�' from Products where Unitprice > 50
-- Fiyat� 50 ile 150 aras�nda olan �r�nlerin, fiyat� ve stok miktarlar�n� tek bir kolon olacak �ekilde listele. (50 ve 150 hari�)
select UnitPrice + ' ' + UnitsInStock as 'Fiyat Stok Miktar�' from Products where UnitPrice > 50 and UnitPrice < 150
-- Stokta olmayan �r�nleri listele.
select * from Products where UnitsInStock = 0
-- Kullan�c�lardan ismi Yusuf olanlar�n soyisimlerini listele.
select LastName from UserDetails where FirstName = 'Yusuf'
-- Kullan�c�lardan ismi Ya�mur olanlar�n soyismini ve eposta adresini ekrana getir. Kolon adlar� T�rk�e olsun.
select LastName as 'Soyisim', Email as 'Eposta' from UserDetails where FirstName = 'Ya�mur'
-- T�rkiye �� Bankas� K�lt�r Yay�nlar� isimli tedarik�inin t�m bilgilerini listele.
select * from Suppliers where CompanyName = 'T�rkiye �� Bankas� K�lt�r Yay�nlar�'
-- Total fiyat� 50'den fazla olan �r�n sipari� eden m��terilerin id'lerini listele.
select CustomerId from Orders where TotalPrice > 50
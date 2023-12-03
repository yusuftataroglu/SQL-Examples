use ImdbData

--2010'dan sonra ��kan filmleri listeleyin.
select * from Movies where Year > 2010 order by Year asc

--2015 den sonra ��kan ve puan� 75 ile 100 aras�nda olan filmleri listeleyin.
select * from Movies where Rating between 75 and 100 and Year > 2015 order by Rating desc

--Has�lat� 100 milyon �zerinde olan filmleri film ad� ve has�lat� ile listeleyin. Has�lat'a g�re �oktan az'a do�ru
select Title, RevenueMillions from Movies where RevenueMillions > 100 order by RevenueMillions desc

--2010 ile 2015 y�llar� aras�ndaki toplam film has�lat� ka�t�r?
select SUM(RevenueMillions) from Movies where Year between 2010 and 2015 

--En y�ksek has�lat yapan y�netmenleri (ID) listeleyin.
select Director_Id, SUM(RevenueMillions) as 'Total Revenue' from Movies group by Director_Id order by 2 desc









use ImdbData

--2010'dan sonra çýkan filmleri listeleyin.
select * from Movies where Year > 2010 order by Year asc

--2015 den sonra çýkan ve puaný 75 ile 100 arasýnda olan filmleri listeleyin.
select * from Movies where Rating between 75 and 100 and Year > 2015 order by Rating desc

--Hasýlatý 100 milyon üzerinde olan filmleri film adý ve hasýlatý ile listeleyin. Hasýlat'a göre çoktan az'a doðru
select Title, RevenueMillions from Movies where RevenueMillions > 100 order by RevenueMillions desc

--2010 ile 2015 yýllarý arasýndaki toplam film hasýlatý kaçtýr?
select SUM(RevenueMillions) from Movies where Year between 2010 and 2015 

--En yüksek hasýlat yapan yönetmenleri (ID) listeleyin.
select Director_Id, SUM(RevenueMillions) as 'Total Revenue' from Movies group by Director_Id order by 2 desc









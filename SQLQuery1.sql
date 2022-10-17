--Select
--ANSII
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers -- İstediğimiz şekilde gelmesi için isimler ekledik

Select * from Customers where City='London'

--case insensitive
Select * from Products where CategoryID=1 or CategoryID=3

Select * from Products where CategoryID=1 and UnitPrice>=10

Select * from Products where CategoryID=1 order by UnitPrice desc --ascending --descending

Select count(*) Adet from Products   --Kaç tane satır sayısı var

Select CategoryID, count(*) from Products where UnitPrice>20 --where unitprice 20 den büyük olan
group by CategoryID having count(*)<10 --Hangi kategoride kaç ürün var --having hangi kategoride 10 dan az ürün var

Select Products.ProductID,Products.ProductName, Products.UnitPrice, Categories.CategoryName
from  Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>10


--DTO Data Transformation Object 

Select * from Products p left join [Order Details] od
on  p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID

Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID -- left join için 832 rows sonucu geldi
where o.CustomerID is null -- Ürün almayan müşteriler için 








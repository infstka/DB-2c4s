SELECT count(*) From Товары; 
SELECT Наименование [Дешевые товары] FROM Товары
Where Цена < 200
SELECT Distinct Top(5) Наименование_товара, Цена_продажи
FROM Заказы Order by Цена_продажи Desc;
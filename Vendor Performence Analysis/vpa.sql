--Create database vpa;

use vpa;

select * from begin_inventory;
select * from vendor_invoice;
select * from end_inventory;
select * from purchaseing_prices;
select * from purchases;


select distinct store from begin_inventory;
select distinct city from begin_inventory;
select distinct size from begin_inventory;

SELECT size, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY size ORDER BY inventory_count DESC;
SELECT onHand, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY onHand ORDER BY inventory_count DESC;
SELECT brand, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY brand ORDER BY inventory_count DESC;
SELECT city, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY city ORDER BY inventory_count DESC;


select sum(price) from begin_inventory;

select count(onhand), sum(price), store, Brand from begin_inventory where City= 'FURNESS' group by store, brand;

SELECT i.startdate, j.enddate, i.InventoryId, i.brand, i.price FROM begin_inventory AS i 
JOIN end_inventory AS j ON i.InventoryId = j.InventoryId where i.Store= '34'and i.Price>=20 
GROUP BY i.price, i.InventoryId, i.startdate, j.enddate, i.Brand ;

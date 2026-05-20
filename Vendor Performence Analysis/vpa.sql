--Create database vpa;

use vpa;

select * from begin_inventory;
select * from end_inventory;
select * from purchaseing_prices;
select * from purchases;
select * from vendor_invoice;

select distinct store from begin_inventory;
select distinct city from begin_inventory;
select distinct size from begin_inventory;

SELECT size, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY size ORDER BY inventory_count DESC;
SELECT onHand, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY onHand ORDER BY inventory_count DESC;
SELECT brand, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY brand ORDER BY inventory_count DESC;
SELECT city, COUNT(*) AS inventory_count FROM begin_inventory GROUP BY city ORDER BY inventory_count DESC;


select sum(price) from begin_inventory;
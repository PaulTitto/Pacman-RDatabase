--  Ranking popularitas model mobil berdasarkan jumlah bid 
select cp.model, count(cp.model) as count_product,count(car_product_id) as count_bid 
from bid b
right join car_product cp on (cp.product_id = b.car_product_id)

group by 1


-- Membandingkan harga mobil berdasarkan harga rata-rata per kota.

with avg_car_city as (
	SELECT c.nama_kota, avg(cp.price) as avg_car_city FROM car_product cp
	JOIN seller s on (s.seller_id = cp.seller_id)
	INNER JOIN city c on (s.city_id = c.city_id)
	GROUP BY 1
)

SELECT c.nama_kota, cp.brand, cp.model, cp.year , cp.price, avg.avg_car_city FROM car_product cp
JOIN seller s on (s.seller_id = cp.seller_id)
INNER JOIN city c on (s.city_id = c.city_id) 
JOIN avg_car_city avg on (c.nama_kota = avg.nama_kota)





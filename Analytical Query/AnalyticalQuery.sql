--  Ranking popularitas model mobil berdasarkan jumlah bid 
select cp.model, count(cp.model) as count_product,count(car_product_id) as count_bid 
from bid b
right join car_product cp on (cp.product_id = b.car_product_id)

group by 1






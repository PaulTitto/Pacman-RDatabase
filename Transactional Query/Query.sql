--  Mencari mobil keluaran 2015 ke atas

SELECT product_id, brand, model, year, price 
FROM car_product
where year > 2015;


-- Menambah satu data bid product baru

SELECT * FROM bid;

INSERT INTO bid(bid_id, car_product_id, buyer_id, date_bid, bid_price, bid_status) VALUES
(1003, 48, 217, '2022-03-04', 185500000, 'Sent');

SELECT * FROM bid;

-- Mobil yang diJual akun Reynard Sutomo

SELECT cp.product_id, cp.brand, cp.model, cp.year, cp.price, i.date_post FROM car_product cp 
	JOIN iklan i on (i.car_product_id = cp.product_id)
	JOIN seller s on (s.seller_id = i.seller_id);
	
	
-- Mobil Bekas yang berKeyword "Yaris"

SELECT product_id, brand, model,year, price 
FROM car_product
WHERE model like '%Yaris%';


-- Menghitung Jarak

SELECT * FROM CITY;

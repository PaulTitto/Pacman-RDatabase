

DROP TABLE IF EXISTS city;

CREATE TABLE city (
city_id INT PRIMARY KEY,
nama_kota VARCHAR(100) NOT NULL,
location POINT
);



DROP TABLE IF EXISTS seller;

CREATE TABLE seller (
seller_id INT PRIMARY KEY,
nama_seller VARCHAR(100) NOT NULL,
kontak INT,
city_id INT,
CONSTRAINT seller_ibfk_1 FOREIGN KEY (city_id) REFERENCES city(city_id)
);

DROP TABLE IF EXISTS buyer;

CREATE TABLE buyer (
buyer_id INT PRIMARY KEY,
nama_buyer VARCHAR(100) NOT NULL,
kontak INT ,
city_id INT,
CONSTRAINT buyer_ibfk_1 FOREIGN KEY (city_id) REFERENCES city(city_id)
);

DROP TABLE IF EXISTS car_product;

CREATE TABLE car_product (
product_id INT PRIMARY KEY,
brand VARCHAR(100) NOT NULL,
model VARCHAR(100) NOT NULL,
body_type VARCHAR(100),
year INT,
price INT, 
seller_id INT,
CONSTRAINT car_product_ibfk_1 FOREIGN KEY (seller_id) REFERENCES seller(seller_id)
);


DROP TABLE IF EXISTS bid;

CREATE TABLE bid(
bid_id INT PRIMARY KEY,
car_product_id INT,
buyer_id INT,
date_bid date,
bid_price INT,
bid_status VARCHAR(100),
CONSTRAINT bid_ibfk_1 FOREIGN KEY (car_product_id) REFERENCES car_product(product_id),
CONSTRAINT bid_ibfk_2 FOREIGN KEY (buyer_id) REFERENCES buyer(buyer_id)
);

DROP TABLE IF EXISTS ilkan;

CREATE TABLE iklan(
iklan_id INT PRIMARY KEY,
car_product_id INT,
seller_id INT,
date_post date,
CONSTRAINT iklan_ibfk_1 FOREIGN KEY (car_product_id) REFERENCES car_product(product_id),
CONSTRAINT iklan_ibfk_2 FOREIGN KEY (seller_id) REFERENCES seller(seller_id)
);


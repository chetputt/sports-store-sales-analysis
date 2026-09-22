#CREATE DATABASE sales_data;
#USE sales_data;
DROP TABLE IF EXISTS `store_data`;

# create the main table
CREATE TABLE store_data (
	purchase_id INT PRIMARY KEY,
    `date` VARCHAR(20),
    `day` TINYINT UNSIGNED,
    `month` VARCHAR(15),
    `year` SMALLINT UNSIGNED,
    customer_age TINYINT UNSIGNED,
    age_group VARCHAR(50),
    customer_gender CHAR,
    country VARCHAR(30),
    product_category VARCHAR(20),
    order_quantity TINYINT UNSIGNED,
    unit_cost SMALLINT UNSIGNED,
    unt_price SMALLINT UNSIGNED,
    profit SMALLINT UNSIGNED,
    cost SMALLINT UNSIGNED,
    revenue SMALLINT UNSIGNED
);

# load data into table based on the CSV
SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE "C:/Users/olari/OneDrive/Desktop/projects/sales project/store_data.csv"
INTO TABLE `store_data`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# drop the first row (purchase_id = 0)
DELETE FROM store_data
WHERE purchase_id = 0;

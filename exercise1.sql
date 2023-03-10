CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR not null(255),
  email VARCHAR not null(255),
  phone VARCHAR not null:(20)
);
CREATE TABLE `order` (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE not null,
  product_id INT,
  quantity INT not null,
  delivery_status VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);
CREATE TABLE product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR not null(255),
  description TEXT,
  product_category VARCHAR not null(50),
  unit_price DECIMAL not null(10,2)
);
CREATE TABLE payment (
  payment_id INT PRIMARY KEY,
  order_id INT,
  payment_date DATE not null,
  FOREIGN KEY (order_id) REFERENCES `order`(order_id)
);

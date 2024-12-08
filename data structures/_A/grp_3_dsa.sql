-- Authors: Kriston, Jun Lin, Royce, and Markus
-- Last Modified: 8-12-2024

/* Description: 
For IT1393 Data Storage Administration Assignment.

This script creates tables, sequences, indexes, views, and synonyms for the Oracle database.

It also inserts records into the tables and sequences.

The script is divided into tasks and parts for easy reference.
*/

------------------------------------------- START OF SCRIPT

-- Task 1 and Task 2
-- Table: ora_customers
CREATE TABLE ora_customers (
    customer_id NUMBER,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    phone VARCHAR2(15) UNIQUE,
    email VARCHAR2(100) NOT NULL UNIQUE,
    street VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(50),
    zip_code VARCHAR2(10),
    CONSTRAINT pk_customers PRIMARY KEY (customer_id)
);

-- Table: ora_stores
CREATE TABLE ora_stores (
    store_id NUMBER,
    store_name VARCHAR2(100) NOT NULL UNIQUE,
    phone VARCHAR2(15) UNIQUE,
    email VARCHAR2(100) UNIQUE,
    street VARCHAR2(100) NOT NULL,
    city VARCHAR2(50) NOT NULL,
    state VARCHAR2(50) NOT NULL,
    zip_code VARCHAR2(10) NOT NULL UNIQUE,
    CONSTRAINT pk_stores PRIMARY KEY (store_id)
);

-- Table: ora_staffs
CREATE TABLE ora_staffs (
    staff_id NUMBER,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(15) UNIQUE,
    store_id NUMBER NOT NULL,
    manager_id NUMBER,
    CONSTRAINT pk_staffs PRIMARY KEY (staff_id),
    CONSTRAINT fk_staffs_store FOREIGN KEY (store_id) REFERENCES ora_stores(store_id),
    CONSTRAINT fk_staffs_manager FOREIGN KEY (manager_id) REFERENCES ora_staffs(staff_id)
);

-- Table: ora_orders
CREATE TABLE ora_orders (
    order_id NUMBER,
    customer_id NUMBER,
    order_status NUMBER(1) DEFAULT 1 NOT NULL,
    order_date DATE DEFAULT SYSDATE NOT NULL,
    required_date DATE,
    shipped_date DATE,
    store_id NUMBER,
    staff_id NUMBER,
    CONSTRAINT pk_orders PRIMARY KEY (order_id),
    CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES ora_customers(customer_id),
    CONSTRAINT fk_orders_store FOREIGN KEY (store_id) REFERENCES ora_stores(store_id),
    CONSTRAINT fk_orders_staff FOREIGN KEY (staff_id) REFERENCES ora_staffs(staff_id),
    CONSTRAINT chk_order_status CHECK (order_status IN (1, 2, 3, 4))
);

-- Table: ora_brands
CREATE TABLE ora_brands (
    brand_id NUMBER NOT NULL,
    brand_name VARCHAR2(50) NOT NULL UNIQUE,
    CONSTRAINT pk_brands PRIMARY KEY (brand_id)
);

-- Table: ora_categories
CREATE TABLE ora_categories (
    category_id NUMBER NOT NULL,
    category_name VARCHAR2(50) NOT NULL UNIQUE,
    CONSTRAINT pk_categories PRIMARY KEY (category_id)
);

-- Table: ora_products
CREATE TABLE ora_products (
    product_id NUMBER NOT NULL,
    product_name VARCHAR2(100) NOT NULL,
    brand_id NUMBER NOT NULL,
    category_id NUMBER NOT NULL,
    model_year NUMBER(4) CHECK (model_year >= 1900) NOT NULL,
    list_price NUMBER(10,2) NOT NULL CHECK (list_price > 0),
    CONSTRAINT pk_products PRIMARY KEY (product_id),
    CONSTRAINT fk_products_brand FOREIGN KEY (brand_id) REFERENCES ora_brands(brand_id),
    CONSTRAINT fk_products_category FOREIGN KEY (category_id) REFERENCES ora_categories(category_id)
);

-- Table: ora_stocks
CREATE TABLE ora_stocks (
    store_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL CHECK (quantity >= 0),
    CONSTRAINT pk_stocks PRIMARY KEY (store_id, product_id),
    CONSTRAINT fk_stocks_store FOREIGN KEY (store_id) REFERENCES ora_stores(store_id),
    CONSTRAINT fk_stocks_product FOREIGN KEY (product_id) REFERENCES ora_products(product_id)
);

-- Table: ora_order_items
CREATE TABLE ora_order_items (
    order_id NUMBER NOT NULL,
    item_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL CHECK (quantity > 0),
    list_price NUMBER(10,2) NOT NULL CHECK (list_price > 0),
    discount NUMBER(3,2) DEFAULT 0 NOT NULL,
    CONSTRAINT pk_order_items PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk_order_items_order FOREIGN KEY (order_id) REFERENCES ora_orders(order_id),
    CONSTRAINT fk_order_items_product FOREIGN KEY (product_id) REFERENCES ora_products(product_id)
);

-- Task 3, part a
CREATE SEQUENCE customerid_seq INCREMENT BY 1 START WITH 1001;

-- Task 3, part b
CREATE SEQUENCE staffid_seq INCREMENT BY 1 START WITH 2001;

-- Task 3, part c
-- Insert records into ora_brands
INSERT INTO ora_brands (brand_id, brand_name) VALUES (1, 'Electra');
INSERT INTO ora_brands (brand_id, brand_name) VALUES (2, 'Haro');
INSERT INTO ora_brands (brand_id, brand_name) VALUES (3, 'Heller');
INSERT INTO ora_brands (brand_id, brand_name) VALUES (4, 'Pure Cycles');

-- Insert records into ora_stores
INSERT INTO ora_stores (store_id, store_name, phone, email, street, city, state, zip_code)
VALUES (111, 'Santa Bikes', '831-476-4321', 'santa@Keithsbikes.com', '3700 Portola Drive', 'Santa Cruz', 'CA', '95060');
INSERT INTO ora_stores (store_id, store_name, phone, email, street, city, state, zip_code)
VALUES(112, 'Cruz Bikes', '516-379-8888', 'Cruz@Keithsbikes.com', '4200 Chestnut Lane', 'Baldwin', 'NY', '11432');
INSERT INTO ora_stores (store_id, store_name, phone, email, street, city, state, zip_code)
VALUES(113, 'Scarlett Bikes', '972-530-5555', 'Scarlett@KeithsBikes.com', '8000 Fairway Avenue', 'Rowlett', 'TX', '75088');
INSERT INTO ora_stores (store_id, store_name, phone, email, street, city, state, zip_code)
VALUES(114, 'Ramirez Bikes', '491-421-4213', 'Ramirez@KeithsBikes.com' '1000 Camelback Road', 'Phoenix', 'AZ', '124910');

-- Insert records into ora_categories
INSERT INTO ora_categories (category_id, category_name) VALUES (11, 'Children Bicycles');
INSERT INTO ora_categories (category_id, category_name) VALUES(12, 'Electric Bikes');
INSERT INTO ora_categories (category_id, category_name) VALUES (13, 'Mountain Bikes');
INSERT INTO ora_categories (category_id, category_name) VALUES(14, 'Road Bikes');

-- Insert records into ora_products
INSERT INTO ora_products (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES (1, 'Trek 820 - 2016', 2, 13, 2016, 379);
INSERT INTO ora_products (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES(2, 'Ritchey Timberwolf Frameset - 2016', 2, 13, 2016, 749.99);
INSERT INTO ora_products (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES(3, 'Surly Wednesday Frameset - 2016', 3, 13, 2016, 899);
INSERT INTO ora_products (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES(6, 'Sun Bicycles Streamway - 2017', 2, 12, 2017, 480);

-- Insert records into ora_customers
INSERT INTO ora_customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
VALUES (customer_id_seq.CURRVAL, 'John', 'Doe', '123-456-7890', 'john.doe@example.com', '123 Main St', 'Springfield', 'IL', '62701');
INSERT INTO ora_customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
VALUES (customer_id_seq.NEXTVAL, 'Jane', 'Smith', '987-654-3210', 'jane.smith@example.com', '456 Elm St', 'Chicago', 'IL', '60616');
INSERT INTO ora_customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
VALUES (customer_id_seq.NEXTVAL, 'Mike', 'Brown', '555-123-4567', 'mike.brown@example.com', '789 Oak St', 'Houston', 'TX', '77001');
INSERT INTO ora_customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
VALUES (customer_id_seq.NEXTVAL, 'Sara', 'Johnson', '555-987-6543', 'sara.johnson@example.com', '321 Pine St', 'Seattle', 'WA', '98101');

-- Insert records into ora_staffs
INSERT INTO ora_staffs (staff_id, first_name, last_name, email, phone, store_id)
VALUES (staffid_seq.CURRVAL, 'Alice', 'Johnson', 'alice.johnson@santabikes.com', '123-456-7890', 111);
INSERT INTO ora_staffs (staff_id, first_name, last_name, email, phone, store_id)
VALUES (staffid_seq.NEXTVAL, 'Bob', 'Williams', 'bob.williams@cruzbikes.com', '987-654-3210', 112);
INSERT INTO ora_staffs (staff_id, first_name, last_name, email, phone, store_id)
VALUES (staffid_seq.NEXTVAL, 'Claire', 'Smith', 'claire.smith@scarlettbikes.com', '456-789-0123', 113);
INSERT INTO ora_staffs (staff_id, first_name, last_name, email, phone, store_id)
VALUES (staffid_seq.NEXTVAL, 'Tom', 'Davis', 'tom.davis@ramirezbikes.com', '512-241-234')

-- Insert records into ora_orders
INSERT INTO ora_orders (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES (3001, 1001, 1, TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2024-12-10', 'YYYY-MM-DD'), NULL, 111, 2001); -- Pending
INSERT INTO ora_orders (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES (3002, 1002, 2, TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2024-12-06', 'YYYY-MM-DD'), TO_DATE('2024-12-05', 'YYYY-MM-DD'), 112, 2002); -- Processing
INSERT INTO ora_orders (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES (3003, 1003, 3, TO_DATE('2024-12-02', 'YYYY-MM-DD'), TO_DATE('2024-12-08', 'YYYY-MM-DD'), NULL, 113, 2003); -- Rejected
INSERT INTO ora_orders (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES (3004, 1004, 4, TO_DATE('2024-12-03', 'YYYY-MM-DD'), TO_DATE('2024-12-09', 'YYYY-MM-DD'), TO_DATE('2024-12-08', 'YYYY-MM-DD'), 113, 2003); -- Completed

-- Insert records into ora_stocks
INSERT INTO ora_stocks (store_id, product_id, quantity) VALUES (1, 101, 1, 50);
INSERT INTO ora_stocks (store_id, product_id, quantity) VALUES (2, 101, 2, 30);
INSERT INTO ora_stocks (store_id, product_id, quantity) VALUES (3, 102, 1, 20);
INSERT INTO ora_stocks (store_id, product_id, quantity) VALUES (4, 102, 3, 10);

-- Insert records into ora_order_items
INSERT INTO ora_order_items (order_item_id, order_id, product_id, quantity, list_price, discount) 
VALUES (1, 1001, 1, 2, 999.99, 0.10);
INSERT INTO ora_order_items (order_item_id, order_id, product_id, quantity, list_price, discount) 
VALUES (2, 1001, 3, 1, 199.99, 0.05);
INSERT INTO ora_order_items (order_item_id, order_id, product_id, quantity, list_price, discount) 
VALUES (3, 1002, 2, 1, 299.99, 0.00);
INSERT INTO ora_order_items (order_item_id, order_id, product_id, quantity, list_price, discount) 
VALUES (4, 1003, 4, 3, 399.99, 0.15);

-- Task 3, part d
CREATE INDEX idx_cust_email ON ora_customers (email);

-- Task 3, part e
CREATE VIEW vw_staff_store_orders AS
SELECT 
    s.first_name || ' ' || s.last_name AS staff_name,
    st.store_name,
    o.order_id
FROM ora_staffs s
JOIN ora_orders o ON s.staff_id = o.staff_id
JOIN ora_stores st ON s.store_id = st.store_id
WHERE o.order_status != 4 -- Exclude completed orders
WITH READ ONLY;

-- Task 3, part f
CREATE SYNONYM syn_staff_store_orders FOR vw_staff_store_orders;

------------------------------------------- END OF SCRIPT
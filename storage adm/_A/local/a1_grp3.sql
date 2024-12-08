-- Table: ora_customers
CREATE TABLE ora_customers (
    customer_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1001 PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    phone VARCHAR2(15),
    email VARCHAR2(100) NOT NULL,
    street VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(50),
    zip_code VARCHAR2(10)
);

-- Table: ora_orders
CREATE TABLE ora_orders (
    order_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 2001 PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    order_status NUMBER(1) DEFAULT 1,
    order_date DATE DEFAULT SYSDATE,
    required_date DATE NOT NULL,
    shipped_date DATE,
    store_id NUMBER NOT NULL,
    staff_id NUMBER,
    CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES ora_customers(customer_id),
    CONSTRAINT fk_orders_store FOREIGN KEY (store_id) REFERENCES ora_stores(store_id),
    CONSTRAINT fk_orders_staff FOREIGN KEY (staff_id) REFERENCES ora_staffs(staff_id)
);

-- Table: ora_staffs
CREATE TABLE ora_staffs (
    staff_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 3001 PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100),
    phone VARCHAR2(15),
    store_id NUMBER NOT NULL,
    manager_id NUMBER,
    CONSTRAINT fk_staffs_store FOREIGN KEY (store_id) REFERENCES ora_stores(store_id),
    CONSTRAINT fk_staffs_manager FOREIGN KEY (manager_id) REFERENCES ora_staffs(staff_id)
);

-- Table: ora_stores
CREATE TABLE ora_stores (
    store_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 4001 PRIMARY KEY,
    store_name VARCHAR2(100) NOT NULL,
    phone VARCHAR2(15),
    email VARCHAR2(100),
    street VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(50),
    zip_code VARCHAR2(10)
);

-- Table: ora_order_items
CREATE TABLE ora_order_items (
    order_id NUMBER NOT NULL,
    item_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 5001,
    product_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL CHECK (quantity > 0),
    list_price NUMBER(10,2) NOT NULL CHECK (list_price > 0),
    discount NUMBER(3,2) DEFAULT 0,
    PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk_order_items_order FOREIGN KEY (order_id) REFERENCES ora_orders(order_id),
    CONSTRAINT fk_order_items_product FOREIGN KEY (product_id) REFERENCES ora_products(product_id)
);

-- Table: ora_categories
CREATE TABLE ora_categories (
    category_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 6001 PRIMARY KEY,
    category_name VARCHAR2(50) NOT NULL UNIQUE
);

-- Table: ora_products
CREATE TABLE ora_products (
    product_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 7001 PRIMARY KEY,
    product_name VARCHAR2(100) NOT NULL,
    brand_id NUMBER NOT NULL,
    category_id NUMBER NOT NULL,
    model_year NUMBER(4) CHECK (model_year >= 1900),
    list_price NUMBER(10,2) NOT NULL CHECK (list_price > 0),
    CONSTRAINT fk_products_brand FOREIGN KEY (brand_id) REFERENCES ora_brands(brand_id),
    CONSTRAINT fk_products_category FOREIGN KEY (category_id) REFERENCES ora_categories(category_id)
);

-- Table: ora_stocks
CREATE TABLE ora_stocks (
    store_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL CHECK (quantity >= 0),
    PRIMARY KEY (store_id, product_id),
    CONSTRAINT fk_stocks_store FOREIGN KEY (store_id) REFERENCES ora_stores(store_id),
    CONSTRAINT fk_stocks_product FOREIGN KEY (product_id) REFERENCES ora_products(product_id)
);

-- Table: ora_brands
CREATE TABLE ora_brands (
    brand_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 8001 PRIMARY KEY,
    brand_name VARCHAR2(50) NOT NULL UNIQUE
);

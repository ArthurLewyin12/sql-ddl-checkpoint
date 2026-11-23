-- 1. Create the tables

CREATE TABLE Customer (
    Customer_id   VARCHAR2(20),
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel  NUMBER,
    CONSTRAINT Pk_Customer PRIMARY KEY (Customer_id)
);

CREATE TABLE Product (
    Product_id   VARCHAR2(20),
    Product_Name VARCHAR2(20) NOT NULL,
    Price        NUMBER,
    CONSTRAINT Pk_Product PRIMARY KEY (Product_id),
    CONSTRAINT Ck_Product_Price CHECK (Price > 0)
);

CREATE TABLE Orders (
    Customer_id  VARCHAR2(20),
    Product_id   VARCHAR2(20),
    Quantity     NUMBER,
    Total_amount NUMBER,
    CONSTRAINT Pk_Orders PRIMARY KEY (Customer_id, Product_id),
    CONSTRAINT Fk_Orders_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT Fk_Orders_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- 2. Add a column Category (VARCHAR2(20)) to the PRODUCT table
ALTER TABLE Product ADD Category VARCHAR2(20);

-- 3. Add a column OrderDate (DATE) to the ORDERS table with SYSDATE as default value
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;

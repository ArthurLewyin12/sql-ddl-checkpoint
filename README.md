# SQL DDL - Customer, Product and Orders

This repo contains my SQL checkpoint. The goal is to create the given relational model in SQL (Oracle syntax) with its constraints, then change the tables with `ALTER TABLE`.

## Relational model

- Customer (**Customer_id**, Customer_Name, Customer_Tel)
- Product (**Product_id**, Product_Name, Price)
- Orders (**#Customer_id, #Product_id**, Quantity, Total_amount)

## Constraints

- **Customer**: `Customer_id` is the primary key, `Customer_Name` is NOT NULL.
- **Product**: `Product_id` is the primary key, `Product_Name` is NOT NULL, `Price` must be positive (CHECK `Price > 0`).
- **Orders**: `Customer_id` and `Product_id` are foreign keys to Customer and Product. Together they also form the primary key of Orders, because they are both underlined in the model.

Customer and Product are created first, because Orders references them.

## Changes after creating the tables

- Add a column `Category` (VARCHAR2(20)) to the PRODUCT table.
- Add a column `OrderDate` (DATE) to the ORDERS table, with `SYSDATE` as the default value.

All the code is in `checkpoint.sql`.

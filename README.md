# 🛍️ E-commerce Database Design

## 📘 Overview
This project is part of a peer group assignment where we designed an e-commerce database using Entity-Relationship (ER) modeling and SQL. The goal was to practice database architecture, team collaboration, and real-world data modeling.



## 🛠️ Tools Used
- MySQL / SQLite
- dbdiagram.io (for ERD)
- draw.io (alternative for diagram)
- Git & GitHub (for version control)

## 📄 Files Included
- `ecommerce.sql`: Full SQL script to create all tables and constraints
- `erd.png`: Exported ERD image
- `ecommerce.dbml`: DBML file used in dbdiagram.io (database schema)


## 🗂️ Tables Designed
- `product`
- `product_item`
- `product_category`
- `brand`
- `product_image`
- `color`
- `product_variation`
- `size_category`
- `size_option`
- `product_attribute`
- `attribute_category`
- `attribute_type`

## 🔁 Data Flow
We designed the relationships to reflect a typical e-commerce platform:
- Products belong to categories and brands.
- Each product has multiple variations (e.g., size & color).
- Images and attributes are stored per item or variation.

## 🖼️ ER Diagram
![ER Diagram](./erd.png)

## 🚀 How to Run the SQL
1. Install MySQL or use [sqlite3](https://sqlite.org/download.html) or [rusqlite](https://crates.io/crates/rusqlite).
2. Import the SQL script:
   ```bash
   sqlite3 ecommerce.db < ecommerce.sql

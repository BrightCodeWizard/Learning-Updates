-- Inventory Management System
-- includes
-- Create a databaseand tables
-- Insert and query product data
-- Perform calculations
-- Update and delete records

      CREATE DATABASE inventory_id;
      
      CREATE TABLE inventories(
      	name VARCHAR(255),
      	brand VARCHAR(50), 
      	quantity INT, 
      	price DECIMAL(19,2)
      );
      
      
      
      INSERT INTO inventories (name, brand, quantity, price)
      VALUES
      	('iPhone 14 Pro', 'Apple', 10, 999.99), 
      	('GaLaxy S23 Ultra', 'Samsung', 15, 1199.99),
      	('Pixel 7 Pro', 'Google', 8, 899.99),
      	('Xperia 1 IV', 'Sony', 7, 1299.99);
      
      
      SELECT * FROM inventories;
      
      SELECT name,price FROM inventories;
      
      
      SELECT 
      	name,
      	quantity * price AS total_values
      FROM 
      	inventories;
      
      
      SELECT 
      	CONCAT(brand, '', name) AS product
      FROM 
      	inventories; 
      
      UPDATE inventories
      SET quantity = 12
      WHERE name = 'iPhone 14 Pro';
      
      
      DELETE FROM inventories
      WHERE name = 'Xperia 1 IV'; 
      
      
      
      
      DROP TABLE IF EXISTS inventories;




















































































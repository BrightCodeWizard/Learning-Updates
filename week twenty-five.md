        PostgreSQL
        
        
          -- Creating a new table
        
            CREATE TABLE inventories (  -- Create table new table
              name VARCHAR(255),
              brand VARCHAR(50),
              quantity INT, 
              price DECIMAL(19,2)
            );    0
        
        
            INSERT INTO -- Insert Data into a table. Use the INSERT statement to insert one or more into a table. Use the RETURNING clause to return inseted rows.
            	inventories(name, brand, quantity, price)
            VALUES
            	('Xperia 1 IV', 'Song', 7, 1299.99),
            	('Galaxy S23 ULtra', 'Samsung', 15, 1199.99),
            	('Pixel 7 Pro', 'Google', 8, 899.99),
            	('iPhone 14 pro', 'Apple', 10, 999.99),
            	('Obt A1', 'Dadsons', 15, 100.00),
            	('Obt A1+', 'Dadson', 27, 3322.390),
            	('Obt A1 Pro','Dadson', 30, 404   
            RETURNING
            	*;
            
            	
        -- SELECT: Querying Data from a table
                  
                SELECT * FROM inventories -- Selection data from all table columns, SELECT statement to retrieve data from all the columns. 
        
        
            SELECT -- SELECT statement to retrieve data 
            	name, 
            	price 
            From 
            	inventories;
            
        
        
        -- Using PostgreSQL SELECT statement to transform data
        
            SELECT ----The SELECT statement can also retrieve and transform the data from a table.
            	name, 
            	quantity * price
            FROM 
            	inventories;
            
        
        -- Column aliases: is a temporary column name that you assign to the column in the SELECT statement.  ?column?: This is a temporary column name that PostgreSQL assign to 
        
            SELECT 
            	name, 
            	quantity AS amount
            FROM 
            	inventories;
            
        
            SELECT 
            	name, 
            	quantity * price amount
            FROM 
            	inventories;
            
            SELECT
              name,
              quantity * price amount
            FROM
              inventories;
              
             
            SELECT 
            	name AS product, 
            	quantity * price AS amount
            FROM 
            	inventories;
            
        -- summary 
        -- Use the PostgreSQL SELECT statement to retrieve data from one or more column of a table.
        -- Use the SELECT * to retrieve data from all columns of a table.
        -- PostgreSQL evaluates the FROM clause before the SELECT clause.
        -- Use a column alias to assign a temporary column to a column in the SELECT statement
        	
        
        -- CONCAT: Concatenating Strings
        -- to concatenate a string, you nedd add two or more string, by using the concstenation operator ||
        -- a1 || a2
        
            SELECT 
            brand ||  name AS Bright
            FROM 
            inventories;
            
            
            
        -- to seperate the string and  make it readeale, we use single quotation like this s1|| ' ' ||
          
            SELECT 
            	brand||  ' ' || name AS Bright
            FROM 
            	inventories;
        
        
        
        
        
        
        -- CONCAT function: is use to concatenate the multiple strings into a string 
        -- from example  CONCACT(a1, a2, .......)
        
        
            SELECT
              CONCAT(brand, ' ', name) AS Bright 
            FROM
              inventories;
        
        
        
        
        -- CONCAT_WS: is used on string with a separator
        -- CONCAT_WS() is being used. 
        -- for example CONCAT_WS())
        
        
            SELECT
              CONCAT_WS( ' ', brand, name) AS Bright
            FROM
              inventories;
            
            
        
        
        
        -- Use the concatenation operator || to concatenate two strings into a string string.
        -- Use the CONCAT() function to concatenate two or more strings into a single string.
        -- Use the CONCAT_WS() function to concatenate two or more strings into a single string separated by a separator.
        
        
        
        -- DROP TABLE Statement
        -- Using DROP TABLE means permanently deleting the table and all its data from the database. 
        -- so basically it is used for delecgting a table from a database. Droping unused table free up database storage.
        -- example 
        DROP TABLE [IF EXISTS] table_name;
        
        -- To drop a table, specify name of the table after the DROP TABLE keyword.
        -- the DROP TABLE statements can drop multiple table once.
        -- example 
        CREATE TABLE categories(
        	categories_id INT,
        	name VARCHAR(255)
        )
        
        
        DROP TABLE IF EXISTS categories;
        
        -- Use the DROP TABLE to delete a table from a PostgreSQL database.
        -- Use the IF EXISTS option to avoid the error of deleting a non-existing table.
        
        
        
        
        -- Filtering Rows
        -- The "WHERE", clause is used in fillter rows from a table
        
        -- for example 
        
            CREATE TABLE inventories (
            	name VARCHAR(255),
            	brand VARCHAR(50),
            	quantity INT,
            	price DECIMAL(19, 2)
            );
            
            
            INSERT INTO inventories (name, brand, quality, price)
            VALUE('Xperia 1 IV', 'Song', 7, 1299.99),
            	('Galaxy S23 ULtra', 'Samsung', 15, 1199.99),
            	('Pixel 7 Pro', 'Google', 8, 899.99),
            	('iPhone 14 pro', 'Apple', 10, 999.99),
            	('Obt A1', 'Dadsons', 15, 100.00),
            	('Obt A1+', 'Dadson', 27, 3322.390),
            	('Obt A1 Pro','Dadson', 30, 404)
            
        
            SELECT name, quantity
            FROM inventories
            WHERE quantity >9;-- The 'WHERE' clause to retrieve the products with a quantity greater than 0
            WHERE quantity = 10;
            WHERE quantity != 9;
        
          -- operators such as '=', !=(<>), >, >=, <,<=
        
        
        -- The Where clause and column alias 
        
            SELECT 
            	name, 
            	quantity * price AS amount
            FROM 
            	inventories
            WHERE
            	quantity * price > 10000;
            
            
        
        -- BETWEEN
        -- it is a comparison operator that returns true if a value is between two values.
        -- Syntax of the 'BETWEEN' operator
        
        
            value BETWEEN low AND high
        
        -- but in SQL, the between operator is a shorthand 0d writing the following expresssion
              
              value >= low AND values <= high
        
        
        
        
        
        
        -- example 
        
            SELECT
            	name,
            	price
            FROM
            	inventories
            WHERE 
            	price BETWEEN 899.99 AND 999.99;
            
            
            
        
        
        -- NOT BETWEEN operator
          
            value NOT BETWEEN low AND high
        
        
        -- the NOT BETWEEN returns true if the value is less than lo or greater than high:
        
            value < low OR value > high
        
        
        -- Example
        
            SELECT
            	name, 
            	price 
            FROM 
            	inventories
            WHERE  
            	price NOT BETWEEN 899.99 AND 999.99  
            
            
            
        -- IN 
        
        -- The IN operator returns true if a value is in a list pf values 
        -- syntax 
        
            value IN (value1, value2, .......)
        
        
        
        -- example 
        
              SELECT 
              	name,
              	quantity 
              FROM 
              	inventories 
              WHERE 
              	quantity IN (7, 8);
              
        
        
        
        -- example 2 
        
            SELECT 
            	name,
            	price 
            FROM 
            	inventories
            WHERE 
            	name IN ('iphone 14 Pro', 'Pixel 7 Pro');
            
        
        
        
        --updating
        --syntax
        UPDATE table_name
        SET column1 = value1, column2 = value2, ...
        WHERE condition;
        
        
        
        
        
        --example 1
        UPDATE inventories
        SET 
        	quantity = 30
        WHERE
        	name = 'iPhone 14 Pro';
        
        
        -- example 2
        SELECT
        	name, 
        	quantity
        FROM 
        	inventories
        WHERE 
        	name = 'iPhone 14 Pro';
        
        
        
        
        
        -- UPDATING all rows in a table
        
        -- example 1
        UPDATE inventories
        SET 
        	price = price * 0.9;
        
        
        -- example 2
        SELECT 
        	name, 
        	price
        FROM
        	inventories;
        
        
        	
        -- Returning the updated rows 
        UPDATE inventories
        SET 
        	price = 750
        WHERE
        	name = 'iPhone 14 Pro'
        RETURNING 
        
        
        
        
        -- Delete 
        
        -- it is for permanenttly removes one or more row from a table 
        -- syntax 
        DELECT FROM table_name 
        WHERE codition;
        
        -- to delect a row 
        -- 1. specify the name of the of table "DELETE FROM"
        -- 2. provide a conditions to filter the row you want to delete.  "WHERE clause"
        
        -- DELETE count;  is a command tag indicating the number of rows delect. 
        
        
        -- try 
        DELETE FROM inventories
        WHERE name = 'iPhone 14 Pro';
        
        -- Deleting all rows a table 
        -- when you use the DELETE statement with a condition, it will delete all the rows in the table
        -- try
        DELETE FROM inventories; 
        
        
        --Returning deleted rows 
        -- Returning clause returns the deleted rows
        
        -- if you specify a list of comma-separated columns from the deleted row you want to return. but if want return all the column of the delete row, use the asterisk(*)
        -- try
        
        -- with comma-separated column
        DELETE FROM table_name
        WHERE condition
        RETURNING column1, column2
        
        -- with asterisk(*)
        DELETE FROM table_name
        WHERE condition
        RETURNING *;
        
        
        
        -- example
        INSERT INTO inventories (name, brand, quantity, price)
        VALUES ('iPhone 15 Pro', 'Apple', 5, 1299.99);
        
        
        DELETE FROM inventories
        WHERE name = 'iPhone 15 Pro'
        RETURNING *;
        
        -- so in summary, 
        -- The DELETE statement is to delete one or more rows from a table.
        -- Also the RETURNING clause return the deleted rows to the client. 
        
        
        -- DATABASE DESIGN 
        --  under topic i will be able design a PostgreSQL database for my application.
        -- In this section, you’ll learn how to design a database for an inventory management system from scratch. You’ll start by analyzing the business requirements, identifying tables and relationships, and creating tables with primary and foreign keys.
        
        
        -- primary key
        -- A primary key is a column or a group of colums that Uniquely identifies each row in a table, cannot be NULL, automatically create a unique index.
        -- A primary key is a column or a set of columns uniquely identifying each row in a table
        -- Also, there are no duplicate numbers in the  column.
        -- If a primary key is a single column, you define the PRIMARY KEY constraint as a column constraint by adding PRIMARY KEY keywords after the primary key column
        
        -- try 
        CREATE TABLE table_name(
           column1 data_type PRIMARY KEY,
           column2 data_type,
           column3 data_type,
           ...
        );
        
        
        
        -- also (composite primary key)
        CREATE TABLE table_name(
           column1 data_type PRIMARY KEY,
           column2 data_type,
           column3 data_type,
           ...
        
           PRIMARY KEY (colum1, cilumn2)
        );
        
        
        -- adding a primary key to a key
        -- if a table does not have a primary key,  ALTER TABLE statement is used to add a primary key. 
        -- try
        ALTER TABLE table_name
        ADD PRIMARY KEY (colum1, column2,........);
        
        -- Auto-increment primary keys
        -- it automatically  generates a unique number for each new row inserted into the table, 
        -- eliminating the need for manual input and ensuring data uniqueness. 
        
        -- To define an auto-increment column in PostgreSQL, you use the GENERATED ALWAYS AS IDENTITY attribute
        -- try
        id INT GENERATED ALWAYS AS IDENTITY
        
        
        
        -- Creating PostgreSQL primary key examples 
        CREATE TABLE brands (
        	brand_id INT GENERATED ALWAYS AS IDENTITY,
         	name VARCHAR(50)
        );
        
        INSERT INTO 
        	brands (name)
        VALUES ('Apple')
        RETURNING *;
        
        INSERT INTO 
        	brands (name)
        VALUES ('Samsung')
        RETURNING *;
        
        
        --Creating composite primary key example
        CREATE TABLE product_tag (
        	product_id INT,
        	tag_id INT,
        	PRIMARY KEY (product_id, tag_id)
        );
        
        -- NOT NULL Constraint
        -- Introduction to NULL
        -- NULL represents the absence of value, indicating that the data is unknown.
        -- it can be used on a situation where the data being entered is incomplete, so that it can be updated where ready. 
        
        -- NB, NULL mean an unknown value,. it different from an empty string('') or Zero (0), which any value,  the comparison returns NULL.
        
        -- example 
        SELECT 
        	NULL = 1 AS result;
        
        -- try
        SELECT 
        	NULL = NUll AS result;
        
        
        -- Inserting NULL into a column
        -- When you define a column for a table, that column is nullable. It means that you can insert NULL into the column.
        
        
        -- try
        CREATE TABLE warehouses (
          warehouse_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name VARCHAR(255),
          address VARCHAR(255)
        );
        
        
        
        INSERT INTO 
        	 warehouses (name, address)
        VALUES
        	('San Jose', NULL)
        RETURNING 
        	name, 
        	address;
        
        
        
        -- try
        
        INSERT INTO 
        	 warehouses (name)
        VALUES
        	('San Francisco')
        RETURNING 
        	name, 
        	address;
        
        
        -- Using PostgreSQL NOT NULL constraint
        -- To ensure that a column cannot have NULL, you use the NOT NULL constraint
        -- syntax 
        column_name data_type NOT NULL
        
        -- After defining a NOT NULL constraint, the column will not accept NULL. If you attempt to do so, PostgreSQL will issue an error.
        
        -- PostgreSQL NOT NULL constraint example
        
        DROP TABLE IF EXISTS warehouses;
         
        
        -- try 
        CREATE TABLE warehouses (
        	warehouses_id INT  GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        	name VARCHAR (255) NOT NULL,
        	address VARCHAR(255) NOT NULL
        );
        
        
        INSERT INTO 	
        	warehouses (name, address)
        VALUES
        	('San Meto', NULL)
        RETURING 
        	name, 
        	address;
        
        
        -- try
        INSERT INTO
        	warehouses (name, address)
        VALUES
        	(
        		'San Meto', 
        		'1st Ave Suite K03 , San Mateo, CA 94403'
        	)
        RETURNING 
        	name,  
        	address;
        
        
        
        -- DEFAULT Constraint
        -- DEFAULT Constraint is set a default values for table columns.
        
        -- PostgreSQL, a table’s column has a default value of NULL
        -- try
        CREATE TABLE table_name(
           column1 data_type DEFAULT default_value,
           column2 data_type,
        );
        
        
        -- example 
        CREATE TABLE items (
          item_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name VARCHAR(255) NOT NULL,
          quantity INT NOT NULL,
          price DEC(11, 2) NOT NULL,
          tax DEC(11, 2) DEFAULT 0.05
        );
        
        
        
        INSERT INTO
          items (name, quantity, price)
        VALUES
          ('iPhone 15 Pro', 1, 1299.99) RETURNING *;
        
        
        
        
        
        INSERT INTO
          items (name, quantity, price, tax)
        VALUES
          ('iPhone 16 Pro', 1, 1399.99, DEFAULT) 
        RETURNING *;
        
        
        
        INSERT INTO
          items (name, quantity, price, tax)
        VALUES
          ('iPhone 17 Pro', 1, 1499.99, 0.08) 
        RETURNING *;
        
        
        -- CHECK constraint 
        -- CHECK constraint: Add validation rules to one or more columns to ensure values meet a condition.
        -- it must statisfy a Boolean expression. Because there is s rule on CHECK constraint when you want insert or update
        -- a value to change, PostgreSQL issues a constraint violation and rejects the changes. 
        -- its helpfull at the database level enforce  data integrity rules. it also prevent invalid data from 
        -- being inserted or update in table columns.
        -- try 
        
        CREATE TABLE table_name (
            column1 data_type CONSTRAINT constraint_name CHECK(boolean_expression),
            ...
        
        );
        
        g
        
        
        -- Basic PostgreSQL CHECK constraint example
        CREATE TABLE products (
        	product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        	name VARCHAR(255) NOT NULL,
        	price DEC(11, 2) NOT NULL,
        	discounted_price DEC(11, 2) NOT NULL DEFAULT 0
        );
        
        
        INSERT INTO 
        	products(name, price)
        VALUES 
        	('iPhone Pro 15', -1299.99);
        
        
        INSERT INTO
        	products (name, price)
        VALUES 
        	('iPhone Pro 15', 1299.99) RETURNING *;
        
        
        
        UPDATE products 
        SET 
        	price = - 899.99
        WHERE
        	product_id = 2;
        
        -- Adding CHECK constraints to tables
        -- You use ALTER TABLE ... ADD CONSTRAINT statement to add a CHECK constraint to an existing table
        -- syntax
        ALTER TABLE table_name 
        ADD CONSTRAINT constraint_name 
        CHECK (boolean_expression)
        
        
        -- example 
        ALTER TABLE products
        ADD CONSTRAINT discounted_price_check
        CHECK (discounted_price < price AND discounted_price > 0);
        
        
        UPDATE products
        SET discounted_price = price * 0.9
        RETURNING *;
        
        
        -- UNIQUE Constraint
        -- it ensure values in a column or a set of columns are unique across rows within the same table.
        
        -- syntax 
         CREATE TABLE table_name (
          column1 data_type CONSTRAINT constraint_name UNIQUE,
          ...
        );
        
        
        -- Defining a UNIQUE constraint that includes one column
        CREATE TABLE brands (
          brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name VARCHAR(255) NOT NULL UNIQUE
        );
        
        
        
        INSERT INTO
          brands (name)
        VALUES
          ('Apple') 
        RETURNING *;
        
        
        -- Defining a UNIQUE constraint that includes multiple columns
        CREATE TABLE product_loans (
          loan_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          product_id INT NOT NULL,
          user_id INT NOT NULL,
          loan_date DATE NOT NULL,
          return_date DATE,
          UNIQUE (product_id, user_id)
        );
        
        
        INSERT INTO
          product_loans (product_id, user_id, loan_date)
        VALUES
          (1, 1, '2024-11-23'),
          (1, 2, '2024-11-23') 
        RETURNING *;
        
        -- Handling NULL with UNIQUE constraint
        
        CREATE TABLE profiles (
          user_id INT PRIMARY KEY,
          first_name VARCHAR(50) NOT NULL,
          last_name VARCHAR(50) NOT NULL,
          phone VARCHAR(25) UNIQUE
        );
        
         
        INSERT INTO
          profiles (user_id, first_name, last_name, phone)
        VALUES
          (1, 'John', 'Doe', NULL) 
        RETURNING *;
        
        
        
        INSERT INTO
          profiles (user_id, first_name, last_name, phone)
        VALUES
          (2, 'Jane', 'Doe', NULL) 
        RETURNING *;
        
        
        
        SELECT * FROM profiles;
        
        
         
        -- Foreign Key
        -- foreign key is a column or set of columns in one table that references the 
        -- primary key of another table
        
        -- Foreign keys in one-to-many relationship
        -- When you have two tables with a one-to-many relationship, the table on the “many” side will 
        -- have the foreign key column
        
        -- Foreign keys in a many-to-many relationship
        -- you use two one-to-many relationships to model a
        -- many-to-many relationship
        
        -- Foreign key constraints 
        -- foreign key constraint to set up a foreign key
        -- basic syntax for defining a foreign key constraint
        CONSTRAINT constraint_name
        FOREIGN KEY (fk_column)
        REFERENCES table(pk_column)
        ON DELETE delete_action
        ON UPDATE update_action;
        
        -- Foreign key constraint example
        
        CREATE TABLE brands (
            brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
            name VARCHAR(255) NOT NULL
        );
        
        
        CREATE TABLE products (
           product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
           name VARCHAR(100) NOT NULL,
           price DECIMAL(10, 2) NOT NULL,
           brand_id INT NOT NULL,
           FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
        );
        
        
        INSERT INTO brands(name)
        VALUES ('Apple'), ('Samsung'), ('Google')
        RETURNING *;
        
        
        -- Inserting data into a foreign key table
        
        INSERT INTO products(name, price, brand_id)
        VALUES('iPhone 14 Pro', 999.99, 1)
        RETURNING *;
        
        
        -- Dropping tables with foreign key constraints 
        -- You can do both steps using the DROP TABLE ... CASCADE statement
        DROP TABLE brands CASCADE;
        
        
        
        DROP TABLE products;
        
        -- Deletion actions 
        -- The deletion action allows you to specify an action to the rows in the child tables when 
        -- rows in the parent table are deleted
        ON DELETE delete_action;
        
        -- ON DELETE SET NULL
        CREATE TABLE brands (
            brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
            name VARCHAR(255) NOT NULL
        );
        
        
        CREATE TABLE products (
          product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name VARCHAR(100) NOT NULL,
          price DECIMAL(10, 2) NOT NULL,
          brand_id INT,
          FOREIGN KEY (brand_id) REFERENCES brands (brand_id) 
          ON DELETE SET NULL
        );
        
        INSERT INTO brands(name)
        VALUES ('Apple'), ('Samsung')
        RETURNING *;
        
        INSERT INTO products(name, price, brand_id)
        VALUES
        ('iPhone 14 Pro', 999.99, 1),
        ('iPhone 15 Pro', 1299.99, 1),
        ('Galaxy S23 Ultra', 1299.99, 2)
        RETURNING *;
        
        
        DELETE FROM brands WHERE brand_id = 1;
        
        
        SELECT * FROM products;
        
        
        -- ON DELETE CASCADE
        CREATE TABLE brand (
            brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
            name VARCHAR(255) NOT NULL
        );
        CREATE TABLE product (
          product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name VARCHAR(100) NOT NULL,
          price DECIMAL(10, 2) NOT NULL,
          brand_id INT,
          FOREIGN KEY (brand_id) REFERENCES brands (brand_id) 
          ON DELETE CASCADE
        );
        
        
        
        INSERT INTO brands(name)
        VALUES('Apple'), ('Samsung')
        RETURNING *;
        
        INSERT INTO products(name, price, brand_id)
        VALUES
        ('iPhone 14 Pro', 999.99, 1),
        ('iPhone 15 Pro', 1299.99, 1),
        ('Galaxy S23 Ultra', 1299.99, 2)
        RETURNING *;
        
        
        
        DELETE FROM brands 
        WHERE brand_id = 1;
        
        
        
        SELECT * FROM products;
        
        
        
        -- ON DELETE SET DEFAULT
        
        DROP TABLE brand, product;
        
        
        CREATE TABLE brand (
            brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
            name VARCHAR(255) NOT NULL
        );
        
        
        
        CREATE TABLE product (
          product_id INT GENERATED ALWAYS AS IDENTITY  PRIMARY KEY,
          name VARCHAR(100) NOT NULL,
          price DECIMAL(10, 2) NOT NULL,
          brand_id INT DEFAULT 1,
          FOREIGN KEY (brand_id) REFERENCES brands (brand_id) 
          ON DELETE SET DEFAULT
        );
        
        
        INSERT INTO products(name, price, brand_id)
        VALUES
        ('iPhone 14 Pro', 999.99, 2),
        ('iPhone 15 Pro', 1299.99, 2),
        ('Galaxy S23 Ultra', 1299.99, 3)
        RETURNING *;
        
        DELETE FROM brands 
        WHERE brand_id = 2;
        
        
        
        SELECT * FROM products;
        
        
         
        -- ORDER BY
        -- The SELECT statement returns a result set with rows in an unspecified order by default. To sort rows returned by the SELECT 
        -- statement, you use the ORDER BY clause
        -- syntax
        SELECT
          column1,
          column2,
          ...
        FROM
          table_name
        ORDER BY
          sort_expression [ASC | DESC]; 
        
        
        -- Sorting rows by one column
        SELECT
          name,
          price
        FROM
          inventories
        ORDER BY
          price;
        
        
        
        
        
        
          SELECT
          name,
          price
        FROM
          inventories
        ORDER BY
          price DESC;
        
        
        
        -- Sorting rows by multiple columns
        SELECT
          name,
          price
        FROM
          inventories
        ORDER BY
          price DESC,
          name DESC;
          
        
        -- Sorting rows by expressions
        SELECT
          name,
          price * quantity
        FROM
          inventories
        ORDER BY
          price * quantity DESC;
        
        
        
        
        SELECT
          name,
          price * quantity AS amount
        FROM
          inventories
        ORDER BY
          amount DESC;
        
        
        
        
        
        SELECT
          name,
          updated_date
        FROM
          inventories
        ORDER BY
          updated_date;
        
        
        
        
        
        
         -- Sorting rows by dates 
        SELECT
          name,
          updated_date
        FROM
          inventories
        ORDER BY
          updated_date;
        
        
        
        
          -- Dealing with NULLs in sorting
        ORDER BY sort_expression NULLS FIRST;
        ORDER BY sort_expression NULLS LAST;
        
        
        
        
        
        
        -- example 
        SELECT
          name,
          color
        FROM
          inventories
        ORDER BY
          color NULLS FIRST;
        
        
        SELECT
          name,
          color
        FROM
          inventories
        ORDER BY
          color NULLS LAST;
        
        
          
        -- LIMIT
        -- Return only a subset of rows from a query.
        -- syntax 
        SELECT
          column1,
          column2
        FROM
          table_name
        ORDER BY
          sort_expression
        LIMIT
          row_count;
        
        
        
        -- PostgreSQL evaluates the clauses in the following order:
        
        -- FROM
        -- SELECT
        -- ORDER BY
        -- LIMIT
        
        
        
        CREATE TABLE inventories ( 
          product_id INT GENERATED ALWAYS AS IDENTITY,
          name VARCHAR(255),
          price DECIMAL
        );    
         drop table inventories;
        
        INSERT INTO 
        	inventories(name, price)
        VALUES
        	('iPhone 16 Pro Max', 1649.00),
        	('iPhone 16', 829.00),	
        	('Galaxy S24 Ultra', 1299.99),
        	('Galaxy S24 FE', 949.99),
        	('Pixel 9 Pro',	799.00),
        	('Pixel 8a', 399.00),
        	('OnePlus 12', 745.00),  
        	('OnePlus Open', 1514.99),
        	('Galaxy Z Fold 6',2019.99)
        RETURNING
        	*;
        
          
        
        -- LIMIT clause example
        SELECT
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        LIMIT 5;
        
        
        
        
        -- LIMIT OFFSET clause
        -- To skip some rows before returning a subset of rows, 
        -- you can use the OFFSET clause
        
        SELECT
          column1,
          column2
        FROM
          table_name
        ORDER BY
          sort_expression
        LIMIT
          row_count
        OFFSET
          skip_count;
        
        
        -- example 
        SELECT
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        LIMIT 5 OFFSET 2;
        
        
        -- LIMIT OFFSET for paginatiion 
        -- The technique that break down a result set into smaller chunks is known as pagination
        
         -- example 
        SELECT
          product_id,
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        LIMIT 3;
        
        
        
        SELECT
          product_id,
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        LIMIT 3 OFFSET 3;
        
        -- , retrieve the products for the last page using 
        -- the LIMIT and OFFSET clauses:
        SELECT
          product_id,
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        LIMIT 3 OFFSET 3 * 2;
        
        
        -- FETCH
        -- Work like the LIMIT clause, which skips some rows and returns a 
        -- subset of rows from a query
        
        -- syntax
        SELECT column1, column2
        FROM table_name
        ORDER BY sort_expression
        OFFSET skip_count
        FETCH { FIRST | NEXT } ] [row_count] {ROW | ROWS } ONLY;
        
        
        
        
        CREATE TABLE products ( 
          product_id INT GENERATED ALWAYS AS IDENTITY,
          name VARCHAR(255),
          price DECIMAL
        );    
        
        
        INSERT INTO 
        	products(name, price)
        VALUES
        	('iPhone 16 Pro Max', 1649.00),
        	('iPhone 16', 829.00),	
        	('Galaxy S24 Ultra', 1299.99),
        	('Galaxy S24 FE', 949.99),
        	('Pixel 9 Pro',	799.00),
        	('Pixel 8a', 399.00),
        	('OnePlus 12', 745.00),  
        	('OnePlus Open', 1514.99),
        	('Galaxy Z Fold 6',2019.99)
        RETURNING
        	*;
        
        
        
        SELECT
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        FETCH FIRST ROW ONLY;
        
        
        
        
        
        -- Fetching some rows
        SELECT
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        FETCH FIRST 3 ROWS ONLY;
        
        
        
        -- Skipping some rows before fetching
        
        SELECT
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        OFFSET 1
        FETCH NEXT 1 ROW ONLY;
        
        
        
        -- Using PostgreSQL FETCH clause for pagination
        -- The FETCH clause can be helpful for pagination:
        
        SELECT
          name,
          price
        FROM
          products
        ORDER BY
          price DESC
        OFFSET 3 * (2 - 1)
        FETCH NEXT 3 ROW ONLY;
        
        
        
        -- IS NULL 
        -- Check if a value is NULL or not
        -- syntax
        SELECT
          10 = NULL AS result;
        
        -- To compare a value with NULL, you use the IS NULL operator
        
        value IS NULL
        
        
        -- example 
        SELECT
          NULL IS NULL null_vs_null,
          10 IS NULL null_vs_10;
        
        
        -- PostgreSQL IS NULL operator example
        
        CREATE TABLE profile( 
          user_id INT GENERATED ALWAYS AS IDENTITY,
          first_name VARCHAR(255),
          last_name VARCHAR(255),
          work_phone INT,
          home_phone INT
        );    
        
        
        INSERT INTO 
        	profiles(first_name, last_name)
        VALUES
        	('Alice', 'Jones'),
        	('Bob', 'Brown'),	
        	('Charlie', 'Davis')
        RETURNING
        	*;
        
        -- PostgreSQL IS NOT NULL example
        SELECT
          first_name,
          last_name,
          work_phone
        FROM
          profile
        WHERE
          work_phone IS NULL;
        
        
        -- Inner Join
        -- Join two tables and select rows from the first table with matching rows in the right table
        -- syntax
        SELECT
          table1.column1,
          table2.column2,
          ...
        FROM
          table1
          INNER JOIN table2 ON table1.column1 = table2.column1
        
         -- Inner Join Example 
         
        CREATE TABLE brandses (
          brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name VARCHAR(255) NOT NULL
        );
        
        CREATE TABLE productses (
          product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
          name VARCHAR(100) NOT NULL,
          price DECIMAL(10, 2) NOT NULL,
          brand_id INT,
          FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
        );
        
        INSERT INTO
          brands (name)
        VALUES
          ('Apple'),
          ('Samsung'),
          ('Google') 
        RETURNING *;
        
        INSERT INTO
          productses (name, price, brand_id)
        VALUES
          ('iPhone 14 Pro', 999.99, 1),
          ('iPhone 15 Pro', 1199.99, 1),
          ('Galaxy S23 Ultra', 1149.47, 2),
          ('Oppo Find Flip', 499.99, NULL) 
        RETURNING *;
        
        
        SELECT
          products.name,
          products.price,
          brands.name
        FROM
          products
          INNER JOIN brands ON brands.brand_id = products.brand_id;
        
        
        -- Qualifying column names 
        SELECT
          name,
          price,
          name
        FROM
          products
          INNER JOIN brands ON products.brand_id = products.brand_id;
        
        
          -- examples 
           
            SELECT
            products.name product_name,
            products.price,
            brands.name brand_name
            FROM
              productses
              INNER JOIN brands ON brands.brand_id = products.brand_id;
          
          
          
          -- joining tables with table aliases
          -- Typing the same table names for every column is tedious. PostgreSQL supports temporary names for 
          -- tables in a query using table aliases.
          
          table_name AS table_alias
          
          
          -- The USING syntax 
          -- If you join two tables by comparing values from the same column names using the equal operator (=), 
          -- you can use the USING clause syntax
          -- syntax
          ON table1.column1 = table2.column1
        
        
        -- Left Join
        -- he LEFT JOIN is an optional clause of the SELECT statement. The LEFT JOIN clause merges rows from two tables and returns all rows from the left table and matching rows from the right table.
        -- syntax 
            
            SELECT
              left_table.column1,
              right_table.column2,
              ...
            FROM
              left_table
              LEFT JOIN right_table ON right_table.column1 = left_table.column1;
        
        
        -- example
            
            CREATE TABLE brands (
              brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(255) NOT NULL
            );
            
            CREATE TABLE products (
              product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(100) NOT NULL,
              price DECIMAL(10, 2) NOT NULL,
              brand_id INT,
              FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
            );
            
            INSERT INTO
              brands (name)
            VALUES
              ('Apple'),
              ('Samsung'),
              ('Google') 
            RETURNING *;
            
            INSERT INTO
              products (name, price, brand_id)
            VALUES
              ('iPhone 14 Pro', 999.99, 1),
              ('iPhone 15 Pro', 1199.99, 1),
              ('Galaxy S23 Ultra', 1149.47, 2),
              ('Oppo Find Flip', 499.99, NULL) 
            RETURNING *;
            
            
            
            SELECT
              brands.name brand_name,
              products.name product_name,
              products.price
            FROM
              brands
              LEFT JOIN products ON products.brand_id = brands.brand_id;
            
            
            SELECT
              b.name AS brand_name,
              p.name AS product_name,
              p.price
            FROM
              brands b
              LEFT JOIN products p ON p.brand_id = b.brand_id;
        
        
        
        -- Right Join 
        -- Join the left table with the right table and select all rows from the right table with the matching rows in the left table
        -- syntax
          
            SELECT
              left_table.column1,
              right_table.column2,
              ...
            FROM
              left_table
              RIGHT JOIN right_table ON right_table .column1 = left_table.column1
              
              ;
        
        
        -- example
            
            CREATE TABLE brands (
              brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(255) NOT NULL
            );
            
            CREATE TABLE products (
              product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(100) NOT NULL,
              price DECIMAL(10, 2) NOT NULL,
              brand_id INT,
              FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
            );
            
            INSERT INTO
              brands (name)
            VALUES
              ('Apple'),
              ('Samsung'),
              ('Google') 
            RETURNING *;
            
            INSERT INTO
              products (name, price, brand_id)
            VALUES
              ('iPhone 14 Pro', 999.99, 1),
              ('iPhone 15 Pro', 1199.99, 1),
              ('Galaxy S23 Ultra', 1149.47, 2),
              ('Oppo Find Flip', 499.99, NULL) 
            RETURNING *;
            
            
            
            
            SELECT
              brands.name AS brand_name,
              products.name AS product_name,
              products.price
            FROM
              products
              RIGHT JOIN brands ON brands.brand_id = products.brand_id;
        
        
        
         -- Full Join
         -- The FULL JOIN merges rows from two tables and returns all rows from both tables. Additionally, the FULL JOIN uses NULLs for every column of the table that does not have a matching row
         -- syntax
               
               SELECT
                table1.column1,
                table2.column2,
                ...
              FROM
                table1
                FULL JOIN table2 ON table2.column1 = table1.column1;
        
        
         -- example 
        
             CREATE TABLE brands (
              brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(255) NOT NULL
            );
            
            INSERT INTO
              brands (name)
            VALUES
              ('Apple'),
              ('Samsung'),
              ('Google') RETURNING *;
            
            
            
            
            CREATE TABLE products (
              product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(100) NOT NULL,
              price DECIMAL(10, 2) NOT NULL,
              brand_id INT,
              FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
            );
            
            
            
            
            INSERT INTO
              products (name, price, brand_id)
            VALUES
              ('iPhone 14 Pro', 999.99, 1),
              ('iPhone 15 Pro', 1199.99, 1),
              ('Galaxy S23 Ultra', 1149.47, 2),
              ('Oppo Find Flip', 499.99, NULL) 
            RETURNING *;
              
            
            
            
              
            SELECT
              p.name as product_name,
              p.price,
              b.name brand_name
            FROM
              products p
              FULL JOIN brands b ON b.brand_id = p.brand_id;
        
        
        
        ---Self-join
        
        -- Join a table to itself to compare rows within the same table using an inner join, left join, or right join
        
        -- syntax 
          
            SELECT
              column1,
              column2,
              column3
            FROM
              table_name t1
              INNER JOIN table_name t2 ON t1.column1 = t2.column2;
        
        
        -- Self-Join examples
          
            CREATE TABLE categories (
              category_id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
              name VARCHAR(255) NOT NULL,
              parent_id INT,
              FOREIGN KEY (parent_id) REFERENCES categories (category_id) ON DELETE CASCADE
            );
            
              INSERT INTO
              categories (category_id, name, parent_id)
            VALUES
              (1, 'Electronics', NULL),
              (2, 'Mobile Devices', 1),
              (3, 'Smartphones', 2),
              (4, 'Tablets', 2),
              (5, 'Accessories', 2),
              (6, 'Wearables', 2),
              (7, 'Home Entertainment', 1),
              (8, 'Televisions', 7),
              (9, 'Audio Systems', 7),
              (10, 'Computers', 1),
              (11, 'Laptops', 10),
              (12, 'Desktops', 10)
            RETURNING *;
        
        
            SELECT
              c.name category,
              p.name parent
            FROM
              categories c
              INNER JOIN categories p ON c.parent_id = p.category_id;
        
        
        -- Cross Join
        -- The CROSS JOIN combines each row from the first table with every row from the second table and returns combinations of all rows. 
        
        -- syntax
        
            
            SELECT
              table1.column1,
              table2.column2,
              ...
            FROM
              table1
              CROSS JOIN table2;
        
        -- examples
        
            CREATE TABLE products (
              product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(100) NOT NULL,
             	price DECIMAL(10, 2) NOT NULL
            );
            
            
            
            
            INSERT INTO
              products (name, price)
            VALUES
              ('iPhone 14 Pro', 999.99),
              ('iPhone 15 Pro', 1199.99),
              ('Galaxy S23 Ultra', 1149.47) 
            RETURNING *;
            
            
            
            CREATE TABLE warehouses (
              warehouse_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(100) NOT NULL
            );
            
            
            INSERT INTO
              warehouses(name)
            VALUES
              ('San Jose'),
              ('San Francisco')
            RETURNING *;
            
            
            
            
            SELECT
              w.name warehouse_name,
              p.name product_name,
              '' quantity 
            FROM
              products p
              CROSS JOIN warehouses w;
            
            
            
            
            
            
            SELECT
              w.name warehouse_name,
              p.name product_name,
              '' quantity 
            FROM
              products p, warehouses w;
        
        
        -- Natural Join
        -- In PostgreSQL, a NATURAL JOIN allows you to join tables based on columns with the same names in both tables.
        
        -- syntax
            
            SELECT select_list
            FROM table1
            NATURAL [INNER, LEFT, RIGHT, FULL] JOIN table2;
        
        
        -- example
           
              CREATE TABLE brands (
                brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                brand_name VARCHAR(255) NOT NULL
              );
              
              
              INSERT INTO
                brands (brand_name)
              VALUES
                ('Apple'),
                ('Samsung'),
                ('Google') 
              RETURNING *;
              
              
              
              
              
              
              INSERT INTO
                products (product_name, price, brand_id)
              VALUES
                ('iPhone 14 Pro', 999.99, 1),
                ('iPhone 15 Pro', 1199.99, 1),
                ('Galaxy S23 Ultra', 1149.47, 2),
                ('Oppo Find Flip', 499.99, NULL) 
              RETURNING *;
              
              
              
              SELECT
                product_name,
                price,
                brand_name
              FROM
                products
                NATURAL INNER JOIN brands;
              
              
              
              
              
              SELECT
                product_name,
                price,
                brand_name
              FROM
                products
                NATURAL LEFT JOIN brands;
              
              
              
              
                SELECT
                product_name,
                price,
                brand_name
              FROM
                products
                NATURAL RIGHT JOIN brands;
              
              
              SELECT
                product_name,
                price,
                brand_name
              FROM
                products
                NATURAL FULL JOIN brands;
        
        
        
        -- NATURAL JOIN caveats
        -- PostgreSQL NATURAL JOIN relies on the same column names for matching row
        
            DROP TABLE products, brands;
            
            CREATE TABLE brands (
              brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(255) NOT NULL
            );
            
            CREATE TABLE products (
              product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              name VARCHAR(100) NOT NULL,
              price DECIMAL(10, 2) NOT NULL,
              brand_id INT,
              FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
            );
            
            INSERT INTO
              brands (name)
            VALUES
              ('Apple'),
              ('Samsung'),
              ('Google') 
            RETURNING *;
            
            INSERT INTO
              products (name, price, brand_id)
            VALUES
              ('iPhone 14 Pro', 999.99, 1),
              ('iPhone 15 Pro', 1199.99, 1),
              ('Galaxy S23 Ultra', 1149.47, 2),
              ('Oppo Find Flip', 499.99, NULL) 
            RETURNING *;
            
            
            
              
              
              
            
            
            
              CREATE TABLE brands (
              brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
              brand_name VARCHAR(255) NOT NULL
            );
        
        
          
        
        
        
        
        
        
        
        
        
          
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
          
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

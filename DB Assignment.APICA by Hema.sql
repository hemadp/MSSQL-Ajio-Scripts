create database [Ajio]
USE [Ajio]
/*------------------------------------------------------------*/

		Create table Customers (
			CustomerID Int Primary key,
			CustomerName NVarchar(100),
			Email NVarchar(100),
			Phone NVarchar(15),
			Address NVarchar(255)
		);

		Create table Categories (
			CategoryID Int Primary key,
			CategoryName NVarchar(100)
		);

		Create table Products (
			ProductID Int Primary key,
			ProductName NVarchar(100),
			CategoryID Int Foreign key references Categories(CategoryID),
			Price Decimal(10, 2),
			Stock Int
		);

		Create Table Orders (
			OrderID Int Primary key,
			CustomerID Int Foreign key references Customers(CustomerID),
			OrderDate Datetime,
			TotalAmount Decimal(10, 2)
		); 

		Create Table OrderDetails (
			OrderDetailID Int Primary key,
			OrderID Int Foreign key references Orders(OrderID),
			ProductID Int Foreign key references Products(ProductID),
			Quantity Int,
			UnitPrice Decimal(10, 2)
		);

		Create table Shipments (
			ShipmentID Int Primary key,
			OrderID Int Foreign key references Orders(OrderID),
			ShipmentDate Datetime,
			Carrier NVarchar(50),
			TrackingNumber NVarchar(50)
		);

/*--------------------------------------------------------------------------*/

-- Inserting the sample data into Customers table
	  INSERT INTO Customers (CustomerID, CustomerName, Email, Phone, Address) VALUES
			(1, 'Alice Smith', 'alice.smith@example.com', '123-456-7890', '123 Maple St, Springfield'),
			(2, 'Bob Johnson', 'bob.johnson@example.com', '234-567-8901', '234 Oak St, Rivertown'),
			(3, 'Charlie Davis', 'charlie.davis@example.com', '345-678-9012', '345 Pine St, Lakeview'),
			(4, 'Diana Wilson', 'diana.wilson@example.com', '456-789-0123', '456 Elm St, Greenfield'),
			(5, 'Evan Miller', 'evan.miller@example.com', '567-890-1234', '567 Birch St, Midtown'),
			(6, 'Fiona Brown', 'fiona.brown@example.com', '678-901-2345', '678 Cedar St, Eastside'),
			(7, 'George Smith', 'george.smith@example.com', '789-012-3456', '789 Walnut St, Westside'),
			(8, 'Hannah Taylor', 'hannah.taylor@example.com', '890-123-4567', '890 Pine St, Hilltop'),
			(9, 'Ian White', 'ian.white@example.com', '901-234-5678', '901 Maple St, Suburbia'),
			(10, 'Jane Harris', 'jane.harris@example.com', '012-345-6789', '012 Oak St, Downtown'),
			(11, 'Kylie Martinez', 'kylie.martinez@example.com', '123-456-7891', '123 Pine St, Riverside'),
			(12, 'Liam Clark', 'liam.clark@example.com', '234-567-8902', '234 Elm St, Lakeside'),
			(13, 'Mia Lewis', 'mia.lewis@example.com', '345-678-9013', '345 Cedar St, Grandview'),
			(14, 'Noah Walker', 'noah.walker@example.com', '456-789-0124', '456 Birch St, Foothills'),
			(15, 'Olivia Hall', 'olivia.hall@example.com', '567-890-1235', '567 Walnut St, Meadows'),
			(16, 'Paul Young', 'paul.young@example.com', '678-901-2346', '678 Oak St, Crestview'),
			(17, 'Quinn Adams', 'quinn.adams@example.com', '789-012-3457', '789 Maple St, Edgewood'),
			(18, 'Riley Scott', 'riley.scott@example.com', '890-123-4568', '890 Elm St, Brookside'),
			(19, 'Sophia King', 'sophia.king@example.com', '901-234-5679', '901 Cedar St, Hillside'),
			(20, 'Thomas Wright', 'thomas.wright@example.com', '012-345-6780', '012 Birch St, Forestview'),
			(21, 'Uma Martinez', 'uma.martinez@example.com', '123-456-7892', '123 Oak St, Harborview'),
			(22, 'Victor Evans', 'victor.evans@example.com', '234-567-8903', '234 Pine St, Greenwood'),
			(23, 'Wendy Murphy', 'wendy.murphy@example.com', '345-678-9014', '345 Maple St, Plainsview'),
			(24, 'Xander Cooper', 'xander.cooper@example.com', '456-789-0125', '456 Elm St, Westview'),
			(25, 'Yara Ramirez', 'yara.ramirez@example.com', '567-890-1236', '567 Cedar St, Valleyview'),
			(26, 'Zane Brooks', 'zane.brooks@example.com', '678-901-2347', '678 Birch St, Hillview'),
			(27, 'Ava Reed', 'ava.reed@example.com', '789-012-3458', '789 Walnut St, Clearview'),
			(28, 'Ben Ross', 'ben.ross@example.com', '890-123-4569', '890 Oak St, Riverbend'),
			(29, 'Clara Wood', 'clara.wood@example.com', '901-234-5680', '901 Pine St, Crestview'),
			(30, 'Daniel James', 'daniel.james@example.com', '012-345-6781', '012 Cedar St, Brookview'),
			(31, 'Eva Kelly', 'eva.kelly@example.com', '123-456-7893', '123 Birch St, Ridgeview'),
			(32, 'Franklin Hughes', 'franklin.hughes@example.com', '234-567-8904', '234 Walnut St, Northside'),
			(33, 'Gina Peterson', 'gina.peterson@example.com', '345-678-9015', '345 Oak St, Parkside'),
			(34, 'Henry Watson', 'henry.watson@example.com', '456-789-0126', '456 Pine St, Southside'),
			(35, 'Isla Collins', 'isla.collins@example.com', '567-890-1237', '567 Elm St, Springside'),
			(36, 'Jack Turner', 'jack.turner@example.com', '678-901-2348', '678 Cedar St, Summerview'),
			(37, 'Kara Murphy', 'kara.murphy@example.com', '789-012-3459', '789 Birch St, Broadview'),
			(38, 'Leo Hill', 'leo.hill@example.com', '890-123-4570', '890 Walnut St, Pleasantville'),
			(39, 'Maya Sullivan', 'maya.sullivan@example.com', '901-234-5681', '901 Oak St, Seaside'),
			(40, 'Nate Phillips', 'nate.phillips@example.com', '012-345-6782', '012 Pine St, Bayview'),
			(41, 'Olive Simmons', 'olive.simmons@example.com', '123-456-7894', '123 Cedar St, Hillcrest'),
			(42, 'Peter Stewart', 'peter.stewart@example.com', '234-567-8905', '234 Birch St, Seaview'),
			(43, 'Quincy Turner', 'quincy.turner@example.com', '345-678-9016', '345 Walnut St, Fernview'),
			(44, 'Rachel Ramirez', 'rachel.ramirez@example.com', '456-789-0127', '456 Oak St, Elmwood'),
			(45, 'Sam Green', 'sam.green@example.com', '567-890-1238', '567 Pine St, Riverview'),
			(46, 'Tina Brooks', 'tina.brooks@example.com', '678-901-2349', '678 Cedar St, Crestwood'),
			(47, 'Ulysses Cole', 'ulysses.cole@example.com', '789-012-3460', '789 Birch St, Larkspur'),
			(48, 'Vera Bell', 'vera.bell@example.com', '890-123-4571', '890 Walnut St, Valleycrest'),
			(49, 'Will Murphy', 'will.murphy@example.com', '901-234-5682', '901 Oak St, Glenview'),
			(50, 'Xena Hudson', 'xena.hudson@example.com', '012-345-6783', '012 Pine St, Oakdale');







-- Inserting the sample data into Categories table
		INSERT INTO Categories (CategoryID, CategoryName) VALUES
			(1, 'Electronics'),
			(2, 'Computers'),
			(3, 'Home Appliances'),
			(4, 'Fitness'),
			(5, 'Cameras'),
			(6, 'Furniture'),
			(7, 'Toys'),
			(8, 'Books'),
			(9, 'Clothing'),
			(10, 'Jewelry'),
			(11, 'Sports'),
			(12, 'Outdoor'),
			(13, 'Automotive'),
			(14, 'Health'),
			(15, 'Beauty'),
			(16, 'Office Supplies'),
			(17, 'Garden'),
			(18, 'Pet Supplies'),
			(19, 'Groceries'),
			(20, 'Baby Products'),
			(21, 'Musical Instruments'),
			(22, 'Art Supplies'),
			(23, 'Party Supplies'),
			(24, 'Crafts'),
			(25, 'Travel'),
			(26, 'Gifts'),
			(27, 'Tools'),
			(28, 'Safety'),
			(29, 'Home Improvement'),
			(30, 'Fitness Equipment'),
			(31, 'Photography'),
			(32, 'Camping'),
			(33, 'Bedding'),
			(34, 'Furniture Accessories'),
			(35, 'Kitchenware'),
			(36, 'Luggage'),
			(37, 'Electronics Accessories'),
			(38, 'Collectibles'),
			(39, 'Bags'),
			(40, 'Office Furniture'),
			(41, 'Travel Accessories'),
			(42, 'Hobbies'),
			(43, 'DIY'),
			(44, 'Camping Gear'),
			(45, 'Outdoor Furniture'),
			(46, 'Wellness'),
			(47, 'Nutritional Supplements'),
			(48, 'Personal Care'),
			(49, 'Cleaning Supplies'),
			(50, 'Seasonal');





-- Inserting the sample data into Products table
		INSERT INTO Products (ProductID, ProductName, CategoryID, Price, Stock) VALUES
			(1, 'Smartphone A', 1, 499.99, 100),
			(2, 'Smartphone B', 1, 599.99, 80),
			(3, 'Laptop A', 2, 899.99, 60),
			(4, 'Laptop B', 2, 1099.99, 40),
			(5, 'Fitness Tracker A', 4, 99.99, 150),
			(6, 'Fitness Tracker B', 4, 129.99, 120),
			(7, 'Camera A', 5, 299.99, 90),
			(8, 'Camera B', 5, 399.99, 70),
			(9, 'Microwave Oven', 3, 89.99, 200),
			(10, 'Washing Machine', 3, 499.99, 50),
			(11, 'Dining Table', 6, 299.99, 30),
			(12, 'Office Chair', 6, 149.99, 100),
			(13, 'Children Toy A', 7, 19.99, 250),
			(14, 'Board Game', 7, 29.99, 150),
			(15, 'Novel A', 8, 14.99, 300),
			(16, 'Cookbook', 8, 24.99, 200),
			(17, 'Running Shoes', 11, 79.99, 100),
			(18, 'Yoga Mat', 11, 29.99, 150),
			(19, 'Tent A', 12, 129.99, 45),
			(20, 'Sleeping Bag', 12, 49.99, 80),
			(21, 'Air Purifier', 14, 199.99, 70),
			(22, 'Vitamin C Supplement', 14, 29.99, 120),
			(23, 'Lip Balm', 15, 4.99, 300),
			(24, 'Shampoo', 15, 12.99, 200),
			(25, 'Office Desk', 16, 249.99, 40),
			(26, 'Printer Paper', 16, 8.99, 500),
			(27, 'Pet Food', 18, 39.99, 150),
			(28, 'Cat Toy', 18, 12.99, 200),
			(29, 'Sunscreen', 14, 19.99, 100),
			(30, 'First Aid Kit', 14, 29.99, 80),
			(31, 'Camping Lantern', 19, 29.99, 90),
			(32, 'Hiking Boots', 19, 89.99, 70),
			(33, 'Guitar', 21, 299.99, 50),
			(34, 'Piano', 21, 499.99, 15),
			(35, 'Drawing Set', 22, 49.99, 80),
			(36, 'Craft Supplies', 22, 19.99, 120),
			(37, 'Travel Bag', 25, 89.99, 60),
			(38, 'Travel Pillow', 25, 19.99, 100),
			(39, 'Office Supplies Kit', 16, 39.99, 90),
			(40, 'Desk Lamp', 16, 29.99, 120),
			(41, 'Camping Chair', 19, 29.99, 150),
			(42, 'Tent B', 12, 149.99, 60),
			(43, 'Fishing Rod', 19, 79.99, 40),
			(44, 'Outdoor Grill', 12, 249.99, 30),
			(45, 'Barbecue Tools', 12, 59.99, 70),
			(46, 'Yoga Block', 11, 14.99, 100),
			(47, 'Running Shorts', 11, 24.99, 150),
			(48, 'Hiking Backpack', 19, 99.99, 50),
			(49, 'Binoculars', 19, 129.99, 40),
			(50, 'Camping Stove', 12, 89.99, 60);




-- Inserting the sample data into Orders table
		INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
			(1, 1, '2024-09-01', 499.99),
			(2, 2, '2024-09-02', 899.99),
			(3, 3, '2024-09-03', 219.99),
			(4, 4, '2024-09-04', 349.99),
			(5, 5, '2024-09-05', 429.99),
			(6, 6, '2024-09-06', 299.99),
			(7, 7, '2024-09-07', 129.99),
			(8, 8, '2024-09-08', 149.99),
			(9, 9, '2024-09-09', 89.99),
			(10, 10, '2024-09-10', 24.99),
			(11, 11, '2024-09-11', 79.99),
			(12, 12, '2024-09-12', 29.99),
			(13, 13, '2024-09-13', 399.99),
			(14, 14, '2024-09-14', 129.99),
			(15, 15, '2024-09-15', 19.99),
			(16, 16, '2024-09-16', 24.99),
			(17, 17, '2024-09-17', 89.99),
			(18, 18, '2024-09-18', 99.99),
			(19, 19, '2024-09-19', 199.99),
			(20, 20, '2024-09-20', 59.99),
			(21, 21, '2024-09-21', 149.99),
			(22, 22, '2024-09-22', 79.99),
			(23, 23, '2024-09-23', 199.99),
			(24, 24, '2024-09-24', 89.99),
			(25, 25, '2024-09-25', 249.99),
			(26, 26, '2024-09-26', 299.99),
			(27, 27, '2024-09-27', 39.99),
			(28, 28, '2024-09-28', 79.99),
			(29, 29, '2024-09-29', 49.99),
			(30, 30, '2024-09-30', 89.99),
			(31, 31, '2024-10-01', 99.99),
			(32, 32, '2024-10-02', 109.99),
			(33, 33, '2024-10-03', 219.99),
			(34, 34, '2024-10-04', 149.99),
			(35, 35, '2024-10-05', 59.99),
			(36, 36, '2024-10-06', 79.99),
			(37, 37, '2024-10-07', 129.99),
			(38, 38, '2024-10-08', 249.99),
			(39, 39, '2024-10-09', 99.99),
			(40, 40, '2024-10-10', 129.99),
			(41, 41, '2024-10-11', 159.99),
			(42, 42, '2024-10-12', 299.99),
			(43, 43, '2024-10-13', 49.99),
			(44, 44, '2024-10-14', 199.99),
			(45, 45, '2024-10-15', 79.99),
			(46, 46, '2024-10-16', 129.99),
			(47, 47, '2024-10-17', 199.99),
			(48, 48, '2024-10-18', 159.99),
			(49, 49, '2024-10-19', 49.99),
			(50, 50, '2024-10-20', 89.99);




-- Inserting the sample data into OrderDetails table
		INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice) VALUES
			(1, 1, 1, 1, 499.99),
			(2, 1, 2, 1, 299.99),
			(3, 2, 3, 1, 899.99),
			(4, 2, 4, 1, 1099.99),
			(5, 3, 5, 2, 99.99),
			(6, 3, 6, 1, 129.99),
			(7, 4, 7, 1, 299.99),
			(8, 4, 8, 1, 399.99),
			(9, 5, 9, 1, 89.99),
			(10, 5, 10, 1, 499.99),
			(11, 6, 11, 1, 299.99),
			(12, 6, 12, 1, 149.99),
			(13, 7, 13, 5, 19.99),
			(14, 7, 14, 3, 29.99),
			(15, 8, 15, 2, 14.99),
			(16, 8, 16, 1, 24.99),
			(17, 9, 17, 1, 79.99),
			(18, 9, 18, 1, 29.99),
			(19, 10, 19, 1, 199.99),
			(20, 10, 20, 1, 59.99),
			(21, 11, 21, 1, 149.99),
			(22, 11, 22, 2, 79.99),
			(23, 12, 23, 3, 4.99),
			(24, 12, 24, 2, 12.99),
			(25, 13, 25, 1, 249.99),
			(26, 13, 26, 1, 299.99),
			(27, 14, 27, 3, 39.99),
			(28, 14, 28, 2, 79.99),
			(29, 15, 29, 1, 49.99),
			(30, 15, 30, 1, 89.99),
			(31, 16, 31, 1, 99.99),
			(32, 16, 32, 1, 129.99),
			(33, 17, 33, 1, 299.99),
			(34, 17, 34, 1, 499.99),
			(35, 18, 35, 3, 59.99),
			(36, 18, 36, 2, 79.99),
			(37, 19, 37, 2, 129.99),
			(38, 19, 38, 1, 249.99),
			(39, 20, 39, 1, 99.99),
			(40, 20, 40, 1, 129.99),
			(41, 21, 41, 1, 159.99),
			(42, 21, 42, 1, 299.99),
			(43, 22, 43, 3, 49.99),
			(44, 22, 44, 2, 199.99),
			(45, 23, 45, 2, 79.99),
			(46, 23, 46, 1, 129.99),
			(47, 24, 47, 1, 199.99),
			(48, 24, 48, 1, 159.99),
			(49, 25, 49, 2, 49.99),
			(50, 25, 50, 1, 89.99);




-- Inserting the sample data into Shipments table
		INSERT INTO Shipments (ShipmentID, OrderID, ShipmentDate, Carrier, TrackingNumber) VALUES
			(1, 1, '2024-09-02', 'FedEx', 'FDX123456'),
			(2, 2, '2024-09-03', 'UPS', 'UPS789012'),
			(3, 3, '2024-09-04', 'DHL', 'DHL345678'),
			(4, 4, '2024-09-05', 'USPS', 'USPS901234'),
			(5, 5, '2024-09-06', 'FedEx', 'FDX567890'),
			(6, 6, '2024-09-07', 'UPS', 'UPS234567'),
			(7, 7, '2024-09-08', 'DHL', 'DHL890123'),
			(8, 8, '2024-09-09', 'USPS', 'USPS345678'),
			(9, 9, '2024-09-10', 'FedEx', 'FDX123890'),
			(10, 10, '2024-09-11', 'UPS', 'UPS678901'),
			(11, 11, '2024-09-12', 'DHL', 'DHL234567'),
			(12, 12, '2024-09-13', 'USPS', 'USPS789012'),
			(13, 13, '2024-09-14', 'FedEx', 'FDX345678'),
			(14, 14, '2024-09-15', 'UPS', 'UPS123456'),
			(15, 15, '2024-09-16', 'DHL', 'DHL789901'),
			(16, 16, '2024-09-17', 'USPS', 'USPS456789'),
			(17, 17, '2024-09-18', 'FedEx', 'FDX234678'),
			(18, 18, '2024-09-19', 'UPS', 'UPS567890'),
			(19, 19, '2024-09-20', 'DHL', 'DHL123456'),
			(20, 20, '2024-09-21', 'USPS', 'USPS678901'),
			(21, 21, '2024-09-22', 'FedEx', 'FDX890123'),
			(22, 22, '2024-09-23', 'UPS', 'UPS345678'),
			(23, 23, '2024-09-24', 'DHL', 'DHL567890'),
			(24, 24, '2024-09-25', 'USPS', 'USPS901234'),
			(25, 25, '2024-09-26', 'FedEx', 'FDX456789'),
			(26, 26, '2024-09-27', 'UPS', 'UPS123890'),
			(27, 27, '2024-09-28', 'DHL', 'DHL678901'),
			(28, 28, '2024-09-29', 'USPS', 'USPS234567'),
			(29, 29, '2024-09-30', 'FedEx', 'FDX789012'),
			(30, 30, '2024-10-01', 'UPS', 'UPS456123'),
			(31, 31, '2024-10-02', 'DHL', 'DHL890234'),
			(32, 32, '2024-10-03', 'USPS', 'USPS567890'),
			(33, 33, '2024-10-04', 'FedEx', 'FDX123456'),
			(34, 34, '2024-10-05', 'UPS', 'UPS789123'),
			(35, 35, '2024-10-06', 'DHL', 'DHL456789'),
			(36, 36, '2024-10-07', 'USPS', 'USPS123456'),
			(37, 37, '2024-10-08', 'FedEx', 'FDX789234'),
			(38, 38, '2024-10-09', 'UPS', 'UPS456678'),
			(39, 39, '2024-10-10', 'DHL', 'DHL789345'),
			(40, 40, '2024-10-11', 'USPS', 'USPS234890'),
			(41, 41, '2024-10-12', 'FedEx', 'FDX456012'),
			(42, 42, '2024-10-13', 'UPS', 'UPS789678'),
			(43, 43, '2024-10-14', 'DHL', 'DHL123789'),
			(44, 44, '2024-10-15', 'USPS', 'USPS678234'),
			(45, 45, '2024-10-16', 'FedEx', 'FDX345901'),
			(46, 46, '2024-10-17', 'UPS', 'UPS123456'),
			(47, 47, '2024-10-18', 'DHL', 'DHL890678'),
			(48, 48, '2024-10-19', 'USPS', 'USPS456123'),
			(49, 49, '2024-10-20', 'FedEx', 'FDX789678'),
			(50, 50, '2024-10-21', 'UPS', 'UPS234678');



/-----------------------------------------------------------------------------------------*/

--Retrieving the top 5 customers who have made the most orders.

			Select top 5 C.CustomerName, Count(O.OrderID) As TotalOrders
			From Customers C
			JOIN Orders O On C.CustomerID = O.CustomerID
			Group by C.CustomerName
			Order by TotalOrders Desc;




-- To display the total revenue generated by each product category

			Select 
				c.CategoryName,
				SUM(od.Quantity * od.UnitPrice) As TotalRevenue
			From 
				OrderDetails od
			JOIN 
				Products p On od.ProductID = p.ProductID
			JOIN 
				Categories c On p.CategoryID = c.CategoryID
			Group by 
				c.CategoryName
			Order by 
				TotalRevenue Desc;







--To find out the number of orders placed in the last month, broken down by day.
			Select Cast(OrderDate AS DATE) AS OrderDay, CounT(OrderID) AS TotalOrders
			From Orders
			Where OrderDate >= Dateadd(Month, -1, getdate())
			Group by cast(orderdate as date);



-- To Calculate the average order value for each customer.

		Select c.customerid, c.customername, avg(o.totalamount) as averageordervalue
		 from customers c
		join orders o on c.customerid = o.customerid
		group by c.customerid, c.customername;

*-----------------------------------------------------------*/

/*Task 3: Database Administration*/

/*a) Write SQL commands to make a FULL backup of the "ShopDB" database and store 
a compressed backup file in a designated location on disk.*/

		Backup database ajio 
to disk = 'c:\users\reddy\documents\sql server management studio\sql server backups\ajio_full.bak'
with compression,
     init; -- Overwrites the file if it already exists



--b) Give example of what could be used to find the most long-running queries.

Select top 10 
    qs.total_elapsed_time / 1000 AS TotalElapsedTimeInMS,
    qs.execution_count,
    qs.total_logical_reads,
    qs.total_physical_reads,
    Substring(qt.text, (qs.statement_start_offset/2) + 1, 
              ((Case qs.statement_end_offset 
                   When -1 then datalength(qt.text)
                   Else qs.statement_end_offset 
               End - qs.statement_start_offset)/2) + 1) AS QueryText,
    qp.query_plan
From 
    sys.dm_exec_query_stats AS qs
Cross apply 
    sys.dm_exec_sql_text(qs.sql_handle) As qt
Cross apply 
    sys.dm_exec_query_plan(qs.plan_handle) As qp
Order by 
    qs.total_elapsed_time DESC;




/*
c) Common performance tuning techniques in SQL Server and how to identify and address performance bottlenecks.
*/

--Common Performance Tuning Techniques:

/*
1. Indexing:

*-Ensure that proper indexes are created on frequently queried columns, especially for large tables.
*-Use Clustered Indexes for columns that are often used in ORDER BY or GROUP BY clauses.
*-Non-clustered indexes can speed up SELECT queries on specific columns.


2. Query Optimization:

*-Rewrite queries to minimize the use of SELECT *. Only select necessary columns.
*-Avoid NESTED loops and prefer JOIN operations when appropriate.
*-Use EXISTS instead of IN where appropriate, especially in subqueries.


3. Database Configuration:

*.Adjust SQL Server memory settings, CPU affinities, and tempdb size.
*.Enable Optimize for Ad Hoc Workloads to avoid plan cache bloat.


4. Statistics:

*.Update table statistics to ensure the query optimizer has up-to-date information about data distribution.
*.Use sp_updatestats or manually update statistics on large tables.



5. Partitioning:

*.Partition large tables and indexes to improve manageability and query performance.



Identifying and Addressing Bottlenecks:

*. Monitoring Tools:

		- Use the SQL Server Profiler to trace query execution and find slow-running queries.
		- Use Dynamic Management Views (DMVs) to monitor performance, memory usage, I/O, and locks.
		- Use SQL Server Management Studio's Activity Monitor to identify real-time performance issues.

*. Common Bottlenecks:

- I/O bottlenecks:	
			-High disk activity or contention can cause slow performance. Consider using faster SSDs or balancing I/O load across disks.
- CPU bottlenecks: 
			-High CPU utilization can occur due to poorly optimized queries. Investigate queries with high CPU consumption using sys.dm_exec_query_stats.
- Memory bottlenecks: 
			-If the server is frequently running out of memory, you may need to adjust memory allocations or upgrade the server's memory capacity.


*. Addressing bottlenecks often involves:

- Rewriting queries to be more efficient.
- Adding or adjusting indexes.
- Reconfiguring hardware or server settings for better throughput

*/

/*---------------------------------------------------------------------------------------------------*/


--Task 4: Performance Tuning

--Identify what could be done to optimize the following stored procedure:
Create procedure GetOrderDetails
 @OrderID Int
As
Begin
 Declare @TotalAmount Money;
 
 Select 
 OD.ProductID,
 P.ProductName,
 OD.UnitPrice,
 OD.Quantity,
 OD.UnitPrice * OD.Quantity As LineTotal
 Into #TempOrderDetails
 From 
 OrderDetails OD
 JOIN 
 Products P ON OD.ProductID = P.ProductID
 Where 
 OD.OrderID = @OrderID;
 Select @TotalAmount = SUM(LineTotal) FROM #TempOrderDetails; 
 Select 
 ProductID,
 ProductName,
 UnitPrice,
 Quantity,
 LineTotal,
 @TotalAmount AS TotalAmount
 From 
 #TempOrderDetails; 
 Drop table #TempOrderDetails;
End


/*
Key Areas of Optimization:
1. Avoid Temporary Table (#TempOrderDetails): Using a temporary table can sometimes degrade performance, especially if it’s not necessary. You can avoid the temporary table by calculating the total amount directly from the query result.



2. Use INNER JOIN Instead of JOIN: Since you are not handling nulls from the join, it's clearer and slightly more efficient to use INNER JOIN.

3. Calculate LineTotal and TotalAmount in One Query: You can calculate both LineTotal and TotalAmount in one query without the need for an additional SELECT or temporary table.

4. Add Indexing: Ensure that the columns OrderID and ProductID in OrderDetails and Products have appropriate indexes, which will improve the join and filter operations.

Optimized Version of the Stored Procedure:
*/

Copy code
Create procedure GetOrderDetails
    @OrderID INT
As
begin
    select 
        OD.ProductID,
        P.ProductName,
        OD.UnitPrice,
        OD.Quantity,
        (OD.UnitPrice * OD.Quantity) As LineTotal,
        sum(OD.UnitPrice * OD.Quantity) Over () As TotalAmount
    From 
        OrderDetails OD
    INNER JOIN 
        Products P On OD.ProductID = P.ProductID
    Where 
        OD.OrderID = @OrderID;
End
/*
Explanation of Changes:

1.Single Query with SUM OVER ():
		The SUM(OD.UnitPrice * OD.Quantity) OVER () function calculates the total for all rows in the result set without the need for a temporary table. This avoids the additional step of calculating @TotalAmount separately and merging it later.
2.Removed Temporary Table (#TempOrderDetails):
			There’s no need to use a temporary table here since the results and calculations can be handled within a single query.
3.Join Improvements:
			The INNER JOIN clarifies that only matching records between OrderDetails and Products are being used, which improves readability and can slightly improve performance.
4.Indexes:
			*. Ensure the following indexes exist:
				- OrderDetails(OrderID) (if it’s not already indexed).
				- OrderDetails(ProductID) for join efficiency.
				- Products(ProductID) (likely already a primary key).
Additional Considerations:			
	-Index Optimization
		Use the SQL Server Profiler and Execution Plan to analyze the procedure and check for any missing indexes or inefficient scans.
	-Avoid Scalar Functions:
		If you are tempted to use a scalar function (e.g., for total calculation), avoid it in performance-sensitive queries, as scalar functions tend to degrade performance.
Parameter Sniffing:
		In case of parameter sniffing issues (where SQL Server creates inefficient execution plans based on parameter values), consider using OPTION (RECOMPILE) to force recompilation for each execution.
By applying these optimizations, we reduce the complexity of the stored procedure, avoid unnecessary temporary storage, and likely improve performance significantly, especially for large datasets.







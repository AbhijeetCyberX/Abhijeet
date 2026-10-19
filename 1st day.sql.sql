Drop database if exists Pharma;
create database Pharma;
use pharma;
create table stoke (
    medicine_id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    manufacturer VARCHAR(100),
    batch_number VARCHAR(50),
    quantity INT NOT NULL,
    price DECIMAL(10,2),
    expiry_date DATE,
    supplier VARCHAR(100)
);

insert into stoke
(medicine_name, category, manufacturer, batch_number, quantity, price, expiry_date, supplier)
values
('Paracetamol', 'Painkiller', 'ABC Pharma', 'PCM001', 100, 2.50, '2027-06-15', 'MedSupply Nepal'),
('Amoxicillin', 'Antibiotic', 'XYZ Pharma', 'AMX002', 50, 8.75, '2027-03-20', 'HealthCare Suppliers'),
('Cetirizine', 'Antihistamine', 'Nepal Pharma', 'CTZ003', 75, 3.25, '2028-01-10', 'MedSupply Nepal'),
('Omeprazole', 'Antacid', 'ABC Pharma', 'OMP004', 60, 5.50, '2027-11-05', 'Pharma Distributors');
select * from stoke;


-- read database in data with where
	select * from stoke
	where medicine_name= 'Paracetamol' and  quantity=100; 
    
select * from stoke;
select * from stoke
where quantity  <> 60;

-- update  the data in database
update stoke
set medicine_name = 'menoxdil'
where medicine_id = 1;

select * from stoke;

-- another example update
update stoke
set price =1250.00
where medicine_id=1;

select * from stoke;

-- delete 
delete from stoke
where medicine_id = 1;

insert into stoke
(medicine_name , category, manufacturer, batch_number, quantity, price, expiry_date, supplier)
VALUES
('Menoxdil', 'Painkiller', 'Nepal Pharma', 'ASP006', 90, 1250.00, '2028-05-10', 'MedSupply Nepal'),
('Azithromycin', 'Antibiotic', 'XYZ Pharma', 'AZI007', 40, 12.50, '2027-09-20', 'HealthCare Suppliers'),
('Loratadine', 'Antihistamine', 'ABC Pharma', 'LOR008', 65, 6.25, '2028-04-12', 'Pharma Distributors');

select * from stoke;

-- operators
-- filters are the sql querry which used to search the database with different condtions or parameters 
-- And  operators 

select * 
from stoke
where manufacturer = 'Nepal Pharma'
and supplier = 'MedSupply Nepal';
 -- or operators must be one conditon will true 
 select * from stoke
 where batch_number = "ASP006"
 or quantity = 90;
 -- combine
 SELECT *
FROM stoke
WHERE category = 'Painkiller'
AND (quantity > 50 OR price < 5);
 -- not operators  not that condtion then all products
 select * from stoke 
 where not category = 'Painkiller';
 
 select * from stoke;
 
 -- like is fileter base search to search data on patternbase
 select * from stoke 
 where medicine_name like '%ol';
 
 
 --  in filter is useful to when to search multiple possible value
select * from stoke
WHERE category = 'Painkiller'
OR category = 'Antibiotic'
OR category = 'Antacid';

-- between is filter with search with search in range 
select * from stoke
where price  Between 5 and 10;



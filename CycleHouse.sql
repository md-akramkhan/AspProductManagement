create database CycleHouse
Go

use CycleHouse
Go

create table tblProduct
(
	ProductId int primary key identity,
	ProductName varchar(50),
	ProductModel varchar(50),
	ProductType varchar(50),
	CompanyName varchar(50)
)
Go

insert into tblProduct values
('Ghost11', '11', 'Mountain Bike', 'Ghost'),
('Ghost12', '12', 'Mountain Bike', 'Ghost'),
('Giant21', '21', 'Road Bike', 'Giant'),
('Giant22', '22', 'Road Bike', 'Giant'),
('Merida31', '31', 'Mountain Bike', 'Merida'),
('Merida32', '32', 'Mountain Bike', 'Merida'),
('Saracen41', '41', 'Road Bike', 'Saracen'),
('Saracen42', '42', 'Road Bike', 'Saracen'),
('Trek51', '51', 'Mountain Bike', 'Trek'),
('Trek52', '52', 'Mountain Bike', 'Trek')
Go

select* from tblProduct
Go
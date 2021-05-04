create database Pharmacy_DB2

/*creating the tables*/
create table Customer
(
Cus_ID int identity (1,1) primary key,
Cus_Name  varchar(30) NOT NULL,
Cus_PN varchar(20) ,
Cus_Address varchar(100) NOT NULL
)
create table Employees
(
Emp_salary int,
Emp_Shift varchar(30) NOT NULL,
Emp_Job varchar(30) NOT NULL,
Emp_Name varchar(30) NOT NULL,
Emp_ID int identity (1,1) primary key,
Emp_PN varchar(20) 
)
create table Branches
(
Branch_Name varchar(50) NOT NULL,
Branch_Location varchar(50) NOT NULL UNIQUE,
Branch_ID int identity (1,1) primary key,
)
CREATE TABLE Supplier (
    Supp_ID int  IDENTITY(1,1) PRIMARY KEY,
     Supp_Name varchar(50) ,
     Supp_Adress varchar(120),
     Supp_PN varchar(30) ,
	
);

CREATE TABLE Inventory (
    item_ID int  IDENTITY(1,1) PRIMARY KEY,
     Active_Substance varchar(50),
	 item_name varchar(30) ,
     
     Price float ,
	 item_Quantity int

);

/*adding the relationships between tables*/
ALTER TABLE dbo.Branches
 ADD Emp_ID int  FOREIGN KEY REFERENCES Employees(Emp_ID);
 ALTER TABLE dbo.Supplier
 ADD Item_ID int  FOREIGN KEY REFERENCES Inventory(Item_ID);
 ALTER TABLE dbo.Inventory
 ADD Supp_ID int  FOREIGN KEY REFERENCES Supplier(Supp_ID);

 /*adding data to customers table*/
 insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('Mohamed Ahmed' , '01143831115 ' , '6 october');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('Tamer mohamed' , '01175548957 ' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('ahmed fawzy' , '0121564895 ' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('ahmed ibrahem' , '01154876514 ' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('mahmoud tawfik' , '01045781236 ' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('adel shakal' , '01524718953 ' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('hany ahmed' , '01245698712 ' , 'cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('mohamed ibrhaim' , '01457896541 ' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('ahmed masoud' , '01125469871 ' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('hesham abbas' , '01254167895 ' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('adel mahfoiz' , '01145698745' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('emad mohamed' , '012365478569 ' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('ahmed emad' , '01035478912 ' , '6 October');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('abnoub mina' , '01687421598 ' , 'Alex');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('samir amir' , '015741659872' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('andrew hany' , '01745618796 ' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('mina essam' , '01543789415' , 'Fayoum');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('adel hany' , '012547865912' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('hany mahfouz' , '01245569875' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('adel shakal' , '01524718953 ' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('Tawfil awkasha' , '01265471289 ' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('moahmed essam' , '01126547893 ' , 'Haram');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('ahmed mohamed' , '01724718953 ' , 'Cairo');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('ahmed hesham' , '01845718953 ' , 'Giza');

insert into dbo.Customer
([Cus_Name],[Cus_PN],[Cus_Address])
values ('Yousry ahmed' , '01524711234 ' , 'Cairo');

/*adding data to Employees table*/
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ('Mohamed Ahmed' ,20000, '01143831115 ' ,'Manger', '6PM-12AM');

 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Mostafa Mahmoud' ,7000, '01145554351' ,'Pharmacist', '6PM-12AM');
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'Mohamed Hamouda ',7000 , '01149941193 ' ,'Pharmacist ', '6PM-12AM'); 
 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Ahmed Essam' , 7000,' 01023369544' ,'Pharmacist', '12AM-6AM');
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'Mohamed Sherif' ,7000, ' 01123589468 ' ,'Pharmacist ', '12AM-6AM'); 
 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Sara Said' , 7000,'01000253900' ,'Pharmacist', '6AM-12PM');
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'Ahmed Nasser ' , 7000,'01029855600 ' ,'Pharmacist ', '6AM-12PM'); 
 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Rodaina waleed' , 7000,'01096546823' ,'Pharmacist', '12PM-6PM');
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'Yousef Amr' , 7000,'01143695682 ' ,'Pharmacist ', '12PM-6PM');  

 
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Mohamed Emad' ,3500, '01115404569 ' ,'delivery ', '12PM-6PM ');
 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'Ahmed Barakat' , 3500,' 01023475895 ' ,' delivery', '  12AM-6AM ');
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'Hossam Hassan' , 3500,' 01223121102 ' ,' delivery', ' 6PM-12AM');
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'David Romany' , 3500,' 01229987760 ' ,' delivery', '  6PM-12AM ');
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values (  'Marwan Ahmed' ,3500, ' 01143698500 ' ,' delivery', ' 6AM-12PM'); 

 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Mohamed Hesham' ,6000, '01224568256 ' ,' security ', '12AM-6AM'); 
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Ahmed Kamal' , 6000,'01009987523 ' ,' security ', '6AM-12PM');  
 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Moahmed Salem' , 6000,'01528687523 ' ,' security ', '12PM-6PM');  
 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Ahmed Essam' , 6000,'01225387523 ' ,' security ', '6PM-12AM');  
 
 insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Essam Hassan' ,3000, '01225586956 ' ,'cleaner', '6PM-12AM'); 
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( ' Hatem Gamal ' , 3000,' 01118040779 ' ,' cleaner', ' 6AM-12PM');    

/*deleting all the data from 2 tables*/
 /*DELETE FROM Inventory;
 DELETE FROM Supplier;*/
 /*adding data into Inventory table*/
 insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' ibuprofen ' , ' Brufen ' , NULL , ' 25.0 ',' 23 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values ('Dietary Supplemment' , ' Caldin C ' , NULL , '43.25','26'); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values ('Gliclazide' , 'Dimaicron MR ' , NULL , '15.75','27'); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values ('Dietary Supplemment ' , 'Vitamax Plus' ,NULL , '45.0','14'); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Diclofenac epolamine ' , ' Flector ' , NULL , ' 38.28 ',' 31 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Valsartan ' , ' Exforge ' , NULL , ' 106.50 ',' 14 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Alpha lipoic acid ' , ' Neuropatex ' , NULL , ' 69.0 ',' 17 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' D Glucosamine' , ' Dorofen ' , NULL , ' 56.25 ',' 25 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Metformin ' , ' Glucophage ' , NULL , ' 21.0 ',' 37 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Menthol Crystals ' , ' Frost ' , NULL, ' 40.0 ',' 24 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Pregablin ' , ' Prenervanex ' , NULL , ' 63.0 ',' 14 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Nystatin ' , ' Kenacomb ' , NULL , ' 12.75 ',' 41 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values ('Tooth Paste ' , ' Sensodyne ' , NULL , ' 28.0 ',' 41 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Alfacalicidol ' , ' Bone Care ' , NULL , ' 58.50 ',' 17 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Nerve Tonic ' , ' Milga ' , NULL , ' 31.50 ',' 23 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Antibiotic ' , ' Fucidin ' , NULL , ' 18.0 ',' 33 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Naftidrofuryl oxalate ' , ' Praxilene ' , NULL , ' 60.0 ',' 9 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Glucosamine sulphate ' , ' Genuphil ' , NULL , ' 99.50 ',' 12 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Paracetamol ' , ' Flurest N ' , NULL , ' 6.0 ',' 37 '); 
insert into dbo.Inventory ([Active_Substance],[item_name],[Supp_ID],[Price],[item_Quantity]) 
values (' Milnacipran Hydochloride ' , ' Averomilan ' , NULL , ' 85.75 ',' 7 '); 

/*adding data to suppliers table*/
insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Pharma' , 'Giza' , '01123536661','1');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Future' , 'Cairo' , '02 28849533','2');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Ramida' , 'Alexandria' , '01178896168','3');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Minapharm ' , 'Kafr alsheikh' , '01257746158','4');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Marcyrl ' , 'Giza' , '01024367428','5');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Novartis ' , 'Cairo' , '02 37751488','6');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Astellas ' , 'Alexandria' , '01178795123','7');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Memphis ' , 'Kafr alsheikh' , '02 37613046','8');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Safa ' , 'Luxor' , '01127837771','9');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Pharco ' , 'Cairo' , '01002783771','10');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Nile' , 'El-Swah square-America - Cairo' , '02 2575826','11');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Amoun' , 'Industrial Zone El Obour city , Cairo, Egypt' , '01248745987','12');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('GSK (Glaxo Smith kline)' , 'Cairo' , '02 22807000','13');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Novartis' , ' Ghernata Street Heliopolis - Roxy Egypt' , '02 232582751','14');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('EIPICO' , 'Golf area,Nasr City,Cairo' , '02 24143550','15');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Sigma' , ' Al Reyada st.from Batrawi st.,Nasr city,Cairo ' , '02 224029460','16');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Pharaonia' , ' Asma Fahmy division, Pharma Plaza Building,Cairo  ' , '02 4155893','17');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('EVA Pharm' , '  OPRA , Cairo, Egypt ' , '02 4155893','18');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('GNP (Global Napi Pharmaceutical )' , 'Ramses St, Cairo' , '02 25888002','19');

insert into dbo.Supplier
([Supp_Name],[Supp_Adress],[Supp_PN],[Item_ID])
values ('Sedico' , 'El- Khlifa St, from El-Haram St, Giza ' , '02 235861778','20');

/*update inventory table*/
UPDATE Inventory
SET Supp_ID=1
WHERE item_ID=1;
UPDATE Inventory
SET Supp_ID=2
WHERE item_ID=2;
UPDATE Inventory
SET Supp_ID=3
WHERE item_ID=3;
UPDATE Inventory
SET Supp_ID=4
WHERE item_ID=4;
UPDATE Inventory
SET Supp_ID=5
WHERE item_ID=5;
UPDATE Inventory
SET Supp_ID=6
WHERE item_ID=6;
UPDATE Inventory
SET Supp_ID=7
WHERE item_ID=7;
UPDATE Inventory
SET Supp_ID=8
WHERE item_ID=8;
UPDATE Inventory
SET Supp_ID=9
WHERE item_ID=9;
UPDATE Inventory
SET Supp_ID=10
WHERE item_ID=10;
UPDATE Inventory
SET Supp_ID=11
WHERE item_ID=11;
UPDATE Inventory
SET Supp_ID=12
WHERE item_ID=12;
UPDATE Inventory
SET Supp_ID=13
WHERE item_ID=13;
UPDATE Inventory
SET Supp_ID=14
WHERE item_ID=14;
UPDATE Inventory
SET Supp_ID=15
WHERE item_ID=15;
UPDATE Inventory
SET Supp_ID=16
WHERE item_ID=16;
UPDATE Inventory
SET Supp_ID=17
WHERE item_ID=17;
UPDATE Inventory
SET Supp_ID=18
WHERE item_ID=18;
UPDATE Inventory
SET Supp_ID=19
WHERE item_ID=19;
UPDATE Inventory
SET Supp_ID=20
WHERE item_ID=20;

/*inserting data into branches*/

insert into Branches
([Branch_Name],[Branch_Location],[Emp_ID])
values ('El Shefaa' , 'El hosary sq,6 October' , '1');

/*deleting a record*/
DELETE FROM Employees WHERE Emp_ID=2;

/******************************Queries*********************************/
/*1st*/
select item_name,Supp_name
from Inventory,Supplier 
where Inventory.Supp_ID=Supplier.Supp_ID
order by Supp_Name asc;
/*2nd*/
select Emp_Name as"Manger name", Emp_PN as"Manger's phone",Branch_Name,Branch_Location 
from Employees ,Branches 
where Employees.Emp_ID=Branches.Emp_ID;
/*3rd*/
select Emp_Name , Emp_Job , Emp_salary from Employees where Emp_salary>5000;
/*4th*/
select item_name , Price,item_Quantity from Inventory where item_Quantity <15 ;
/*****************************************/

/**********************Procedures*************************/
/*first one*/
create proc GetEmployeeByJob
@Job varchar(20)
AS
BEGIN
select Emp_name ,Emp_PN, Emp_Shift, Emp_salary from Employees where Emp_Job=@Job 
END
/*calling first one*/
GetEmployeeByJob 'Pharmacist';

/*second one*/
alter procedure GetEmployeeByJob
@Job varchar(20)
with encryption
AS
BEGIN
select Emp_name ,Emp_PN, Emp_Shift, Emp_salary from Employees where Emp_Job=@Job 
END
/*third one*/
create proc GetCustomerByGov
@zone varchar(20)
AS
BEGIN
select Cus_Name ,Cus_PN from Customer where Cus_Address=@zone 
END
/*calling third one*/
GetCustomerByGov 'Giza';

/************************************************************************************/

/****************Triggers******************/

CREATE TABLE tb_Events
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)
CREATE TABLE tb_Deleted
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)
/*Employee Insert trigger*/
CREATE TRIGGER tr_tblEMployee_ForInsert
ON Employees
FOR INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = Emp_ID from inserted
 
 insert into tb_Events
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END
/*Employee deleted*/
CREATE TRIGGER tr_tblEMployee_ForDelete
ON Employees
FOR DELETE
AS
BEGIN
 Declare @Id int
 Select @Id = Emp_ID from deleted
 
 insert into tb_Events 
 values('An existing employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is deleted at ' + Cast(Getdate() as nvarchar(20)))
END

alter TRIGGER tr_tblEMployee_ForDelete
ON Employees
FOR DELETE
AS
BEGIN
 Declare @Id int
 declare @deleted_Emp_salary int
  declare @deleted_Emp_Shift varchar(30)
   declare @deleted_Emp_Job varchar(30)
    declare @deleted_Emp_Name varchar(30)
	declare @deleted_Emp_PN varchar(20) 
 Select @Id = Emp_ID ,@deleted_Emp_Name=Emp_Name,@deleted_Emp_Job=Emp_Job,@deleted_Emp_PN=Emp_PN,@deleted_Emp_salary=Emp_salary,@deleted_Emp_Shift=Emp_Shift from deleted
 insert into tb_deleted
 values('An existing employee with Id  = ' + Cast(@Id as nvarchar(5))+' and the name is: '+@deleted_Emp_Name+' his/her phone number: '+@deleted_Emp_PN+' his/her job: '+@deleted_Emp_Job+' his/her salary: '+cast (@deleted_Emp_salary as nvarchar (20))+' his/her shift: '+@deleted_Emp_Shift+'is deleted at ' + Cast(Getdate() as nvarchar(20)))
 insert into tb_Events 
 values('An existing employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is deleted at ' + Cast(Getdate() as nvarchar(20)))
END
/*Employee updated*/
CREATE TRIGGER tr_tblEMployee_ForUpdateName
ON Employees
FOR UPDATE
AS
BEGIN
declare @myid int
declare @mynewname varchar(20)
declare @myoldname varchar(20)

select @myid= Emp_ID, @myoldname=Emp_Name from deleted
select @mynewname=Emp_Name   from inserted
insert into tb_Events values('An existing employee with Id  = '+Cast(@myid as nvarchar(5))+' is updated from ' +   @myoldname  +     ' to '   +   @mynewname+'at ' + Cast(Getdate() as nvarchar(20)))
END
/*testing triggers*/
 
insert into dbo.Employees ([Emp_Name],[Emp_salary],[Emp_PN],[Emp_Job],[Emp_Shift])
 values ( 'Mohamed test2' ,100, '01111111111' ,'delivery ', '12PM-6PM ');

 select * from tb_Events;

 Update Employees
 set Emp_Name='test'
 where Emp_ID=22;
 
 select * from tb_Events;

 delete from Employees where Emp_ID=21;
 
 select * from tb_Events;

  select * from tb_Deleted;

 select * from Employees

create database Hotel_Reservation
use Hotel_Reservation

create table User_Info(
ID int not null auto_increment,
Firstname varchar(20),
Lastname varchar(20),
Email varchar(50),
Phone varchar(20),
Password varchar(20),
Primary key(ID),
unique key (Email)
)
drop table User_Info
select * from User_Info

create table Room_Availability
(
ID int not null auto_increment,
Room_No varchar(20) not null,
Check_In Date not null,
Check_Out Date not null,
Room_Type varchar(20) not null,
No_Of_Guest int not null,
Room_Status varchar(20),
Firstname varchar(20),
Lastname varchar(20),
Email varchar(50),
Phone varchar(20),
primary key(ID)
)
drop table Room_Availability
select * from Room_Availability

create table Admin_Info(
ID int not null auto_increment,
Firstname varchar(20),
Lastname varchar(20),
Email varchar(50),
Phone varchar(20),
Password varchar(20),
Primary key(ID),
unique key (Email)
)
select * from Admin_Info




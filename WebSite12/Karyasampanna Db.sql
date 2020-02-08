create database karyasampanna
sp_help carts

create table roles
(
rid int identity(1,1) primary key,
rname varchar(20)
)

insert into roles values('Admin')
insert into roles values('User')

create table Users
(
uid int identity(1,1) primary key,
username varchar(50) unique,
upassword varchar(50),
uName varchar(80),
uAddress varchar(300),
uCountry varchar(80),
uState varchar(80),
uCity varchar(60),
uContact varchar(50),
rid int foreign key(rid) references Roles(rid)
)

insert into Users values('admin','admin','Admin',null,null,null,null,null,1)

select * from Users
select * from pandit
create table poojasamagri
(
pid int identity(1,1) primary key,
pname varchar(50),
price int,
description varchar(200) 
)

insert into poojasamagri values('Satyanarayan Pooja',2000,null)
insert into poojasamagri values('Shanti Havan',1500,null)
insert into poojasamagri values('Navgraha Shanti',1000,null)
insert into poojasamagri values('Marriage Ceremony',5000,null)
insert into poojasamagri values('Graha Pravesh',3000,null)
insert into poojasamagri values('Festival Pooja',2000,null)

create table pandit
(
paid int identity(1,1) primary key,
paname varchar(80),
paprice int,
description varchar(200)
)

insert into pandit values('Asaram Bapu',5000,null)
insert into pandit values('Ravishri Maharaj',4000,null)
insert into pandit values('Swami Ramdev',7000,null)
insert into pandit values('Nemi Suri Maharaj',4000,null)
insert into pandit values('Namra Maharaj',5000,null)
insert into pandit values('Aditya Maharaj',6000,null)

create table foodpackage
(
fid int identity(1,1) primary key,
fname varchar(50),
fprice int,
fdescription varchar(200)
)
insert into foodpackage values('Package 1',300,null)
insert into foodpackage values('Package 2',250,null)
insert into foodpackage values('Package 3',150,null)
insert into foodpackage values('Package 4',125,null)
insert into foodpackage values('Package 5',110,null)
insert into foodpackage values('Package 6',90,null)

create table PaymentList
(
plid int identity(1,1) primary key,
pluid int foreign key(pluid) references Users(uid),
plcreditcardno varchar(50),
pldate date, 
amount bigint
)

create table Cart
(
cid int identity(1,1) primary key,
plid int references PaymentList(plid),
package int,
price int,
noofpeople int,
totalprice bigint
)
select * from pandit
select * from foodpackage
select * from poojasamagri
drop table carts

create table Carts
(
cid int identity(1,1) primary key,
uid int foreign key(uid) references Users(uid),
pack1 bit,
pack2 bit,
pack3 bit,
pack4 bit,
pack5 bit,
pack6 bit,
pack7 bit,
pack8 bit,
pack9 bit,
pack10 bit,
pack11 bit,
pack12 bit,
pack13 bit,
pack14 bit,
pack15 bit,
pack16 bit,
pack17 bit,
pack18 bit,
creditcardno bigint,
cvvcode int,
amount int,
pdate datetime,
paid bit
)
select * from Carts
select * from poojasamagri
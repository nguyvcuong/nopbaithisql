create table Customer(
customerid int primary key,
name nvarchar(50)  not null,
city nvarchar (50) not null,
country nvarchar (50) not null,
phone nvarchar(15) not null,
email nvarchar(50) not null,
)

create table customeraccount(
accountNumber char(9) primary key,
customerid int foreign key references Customer (customerid) ,
balance money,
minaccount money not null check (minaccount > 0) default 0,
)

create table customertransaction(
transactionid int primary key,
accountNumber char(9) not null foreign key references customeraccount (accountNumber),
trasactiondate smalldatetime not null,
amount money not null,
depositorwithdraw bit not null,
)

--drop table Customer;
--drop table customeraccount;
--drop table customertransaction;

insert into Customer(customerid,name,city,country,phone,email)
values(N'1',N'nguyen viet cuong',N'ha noi',N'tien lu',N'12345678',N'cuongkb002@gmail.com')
 select * from Customer;

insert into customeraccount(accountNumber,customerid,balance,minaccount)
values (N'12345678',N'1',N'123456789',N'2')
select * from customeraccount;

insert into customertransaction(transactionid,accountNumber,trasactiondate,amount,depositorwithdraw)
values (N'1',N'12345678',N'2022-10-26',N'124567',N'12')
select * from customertransaction;




drop table customer;
create table customer (
consumerId integer primary key AUTOINCREMENT,
firstName varchar(20),
lastName varchar(20),
email varchar(20),
password varchar(20),
phone varchar(20),
address varchar(20)
);
select * from customer;

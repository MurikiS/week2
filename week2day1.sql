create database mlp333;

create user 'MLP333'@'localhost' identified by 'MLP333';

GRANT ALL ON MLP333.* TO 'MLP333'@'localhost';

use MLP333;

CREATE TABLE MENU(food_id int primary key, food_name varchar(20), price int, descri varchar(200));

CREATE TABLE CUST(cust_id int primary key, cust_name varchar(20), address varchar(200));

CREATE TABLE VENDOR(ven_id int primary key, ven_name varchar(20), address varchar(200));

CREATE TABLE ORDER_LIST(ord_id int primary key, cust_id int, vend_id int, food_id int, constraint custid foreign key(cust_id) references CUST(cust_id) ,constraint vendid foreign key(vend_id) references VENDOR(ven_id), constraint foodid foreign key(food_id) references MENU(food_id));



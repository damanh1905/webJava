create database java;
go
USE java
set dateformat DMY;
go
CREATE TABLE users (
   ID integer NOT NULL,
   username   NVARCHAR(45) NOT NULL,
   password NVARCHAR(45)   NOT NULL,
   quyen nvarchar(45) not null,
   PRIMARY KEY (ID)
)
-------------
select TOP(1) ID from users order by ID DESC;
select * from users;
-------------
select * from users where username='hienpro@gmail.com' and password ='123' and quyen = 'admin';
CREATE TABLE product(
   ID integer not null,
   name nvarchar(45) not null,
   price integer not null,
   typeproduct nvarchar(45) not null,
   thuocnhom nvarchar(45) not null,
   description nvarchar(250) not null,
   soluongtonkho integer not null,
   PRIMARY KEY (ID)
)
--------------
select soluongtonkho from product where ID = 1;
select soluongtonkho from product where ID = 2;
--------------
select TOP(1) ID from product order by ID desc;
select COUNT(*) from product;
select * from product where ID = 433;
delete from img where productID = 433;
delete from product where ID = 433;
select * from img where productID = 433;
--------------
CREATE TABLE img(
   ID integer not null,
   productID integer not null FOREIGN KEY REFERENCES product(ID),
   fileImg nvarchar(250) not null,
   primary key (ID,productID)   
)
create table cart(
   -- ID cart bang voi ID user
   ID Integer not null,
   PRIMARY KEY (ID)   
)
create table cartItem(
   ID integer not null,
   product_id integer not null FOREIGN KEY REFERENCES product(ID),
   soluong integer not null,
   cart_id integer not null FOREIGN KEY REFERENCES cart(ID),
   PRIMARY KEY (ID,cart_id)
)
--------------
select TOP(1) ID from cartItem where cart_id = 1 order by ID DESC;
select * from cartItem; 
--------------
create table wishlist(
   -- ID wishlist bang voi ID user
   ID Integer not null,
   PRIMARY KEY (ID)
)
create table wishlistItem(
   ID integer not null,
   product_id integer not null FOREIGN KEY REFERENCES product(ID),
   wishlist_id integer not null FOREIGN KEY REFERENCES wishlist(ID),
   PRIMARY KEY (ID,wishlist_id)
)
create table lienhe(
   ID integer not null,
   email nvarchar(45) not null,
   ngaygui date not null,
   chude nvarchar(45) not null,
   noidung nvarchar(45) not null,
   trangthai nvarchar(45) not null,
   PRIMARY KEY (ID)
)
---------------
select TOP(1) ID from lienhe order by ID DESC;
select * from lienhe;
---------------
create table binhluan(
   ID integer not null,
   tennguoigui nvarchar(45) not null,
   ngaygui date not null,
   binhluan nvarchar(250) not null,
   product_id integer not null FOREIGN KEY REFERENCES product(ID),
   PRIMARY KEY (ID,product_id) 
)
-----------
select TOP(1) ID from binhluan where product_id = 1 order by ID desc;
select * from binhluan where product_id = 1; 
-----------
create table donhang(
   -- ID order bang voi ID user
   ID integer not null,
   PRIMARY KEY (ID)
)
---------
select * from donhang
---------
create table orderDetail(
   ID integer not null,
   order_id integer not null FOREIGN KEY REFERENCES donhang(ID),
   quocgia nvarchar(45) not null,
   hovaten nvarchar(45) not null,
   diachi nvarchar(200) not null,
   thanhpho nvarchar(45) not null,
   sodienthoai nvarchar(45) not null,
   ngaydathang date not null,
   total int not null,
   PRIMARY KEY (ID,order_id)
)
----------------
select TOP(1) ID from orderDetail where order_id = 1 order by ID DESC;
select * from orderDetail;
----------------
select * from orderDetail;
insert into orderDetail (ID,order_id,quocgia,hovaten,diachi,thanhpho,sodienthoai,ngaydathang,total) values ();
----------------
update product set name = 'ahihi',soluongtonkho = 500,price=800,description='ahihi' where ID = 1;
select * from product where ID = 1;
-------------insert into binhluan
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (1,N'hiển','29/09/2000',N'áo đẹp đấy',1);
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (2,N'nam','29/09/2000',N'áo đẹp đấy',1);
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (3,N'thịnh','30/09/2000',N'áo đẹp đấy',1);
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (1,N'Văn Anh','1/10/2000',N'áo đẹp đấy',2);
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (2,N'Hiệp','2/12/2000',N'áo đẹp đấy',2);
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (3,N'An','1/09/2010',N'áo đẹp đấy',2);
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (4,N'An','1/09/2010',N'áo đẹp đấy',2);
insert into binhluan (ID,tennguoigui,ngaygui,binhluan,product_id) values (7,N'An','1/09/2010',N'áo của shop bạn đẹp lắm mình rất thích sản phẩm này, mong shop bạn luôn luôn phát triển để bán áo này',4);
select * from binhluan
select * from binhluan where ngaygui between '2000-01-01' and '2020-01-01';
delete from binhluan where product_id = 8 or product_id = 20;
select COUNT(*) from binhluan where product_id = 1;
go
with x as(select ROW_NUMBER() over (order by ID) as row,* from binhluan where product_id = 2)
select * from x where row between 1 and 2
go
-------------insert into contacts	
select * from lienhe
select COUNT(*) from lienhe;
delete from lienhe
insert into lienhe (ID,email,ngaygui,chude,noidung,trangthai) values (1,'minhhien2000k@gmail.com','28/9/2000',N'test tiếng việt',N'test tiếng việt',N'test tiếng việt');
insert into lienhe (ID,email,ngaygui,chude,noidung,trangthai) values (2,'minhhien2000k@gmail.com','28/9/2000',N'test tiếng việt',N'test tiếng việt',N'test tiếng việt');
-------test
create table test(	
   ID integer not null,
   ngaygui date not null,
   PRIMARY KEY (ID)
)
-----test insert
insert into test values (1,'28/9/2000');
insert into test values (2,'29/9/2000');
select ngaygui from test where ngaygui between '27/8/2020' and '29/9/2021';
select * from test where DAY(ngaygui) = 28;
select CONVERT (date,ngaygui) as date from test where ID = 1;
-----
INSERT INTO users values ( 1,'hien@gmail.com','123','admin') ;
INSERT INTO users values ( 2,'hiep@gmail.com','123','admin') ;
INSERT INTO users values ( 3,'VanAnh@gmail.com','123','admin') ;
INSERT INTO users values ( 4,'minhhien@gmail.com','123','admin') ;
select * from users where ID = 1
select * from users where username = 'hien@gmail.com' and password = '123';
select COUNT(*) from users 
insert into users (ID,username,password,quyen) values (5,'phung@gmail.com','123','user');
update users set password = '123456' where username = 'phung@gmail.com'
------------
go
with x as(select ROW_NUMBER() over (order by price DESC) as row,* from product where name like N'%ao%' and thuocnhom = 'men')
select * from x where row between 1 and 18
go
select * from product;
select COUNT(*) from product where typeproduct = 'aosominam' and thuocnhom = 'men'
select COUNT(*) from product where name like N'%khoác%' and thuocnhom = 'men'
go
with x as(select ROW_NUMBER() over (order by ID) as row,* from product where thuocnhom = 'men' and typeproduct='aosominam')
select * from x where row between 1 and 3
go
-->1 1 and 9  index * 9 - 8 and index * 9
select * from product where id = 1;
------------------>insert into cart
select * from cart
insert into cart values(1);
insert into cart (ID) values (3);	
------------------>insert into cartItem
select * from cartItem where cart_id = 1;
select * from cartItem where product_id = 28 and cart_id = 1;
update cartItem set soluong = 6 where ID = 1 and cart_id = 1; 
insert into cartItem values(1,28,5,1);
delete from cartItem where product_id = 29 and cart_id = 1;
insert into cartItem values(2,29,1,1);
insert into cartItem values(3,32,2,1);
insert into cartItem (ID,product_id,soluong,cart_id) values (4,31,2,1);

insert into cartItem values(1,28,5,3);
insert into cartItem values(2,29,1,3);
insert into cartItem values(3,32,2,3);
-------------------------wish list
select * from wishlist where ID = 1;
insert into wishlist (ID) values (1);
select * from wishlistItem where wishlist_id = 1; 
select * from wishlistItem where product_id = 1 and wishlist_id = 1;
insert into wishlistItem (ID,product_id,wishlist_id) values (1,4,1);
--------------------------------------filter test
select COUNT(*) from product where price between 1 and 300 and thuocnhom = 'men' and typeproduct = 'aokhoacnam';
go
with x as(select ROW_NUMBER() over (order by price desc) as row,* from product where price between 1 and 500 and thuocnhom = 'men' and typeproduct='aosominam')
select * from x where row between 1 and 2
go
select * from product where ID = 1;
go
---------------------------------------------product moi

--thuoc nhom:men
--producttype:aokhoacnam
---ao khoac nam 
INSERT INTO product values(1,'aokhoacnam1',250,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(2,'aokhoacnam2',260,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(3,'aokhoacnam3',270,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(4,'aokhoacnam4',280,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(5,'aokhoacnam5',290,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(6,'aokhoacnam6',350,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(7,'aokhoacnam7',310,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(8,'aokhoacnam7',320,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(9,'aokhoacnam7',350,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(10,'aokhoacnam7',330,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(11,'aokhoacnam1',320,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(12,'aokhoacnam2',410,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(13,'aokhoacnam3',450,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(14,'aokhoacnam4',560,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(15,'aokhoacnam5',550,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(16,'aokhoacnam6',750,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(17,'aokhoacnam7',850,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(18,'aokhoacnam7',950,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(19,'aokhoacnam7',430,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(20,'aokhoacnam7',480,N'aokhoacnam','men',N'Áo len nam có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);


--ao khoac nam
--ao1
INSERT INTO img values(1,1,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam1/ao1.jpg');
INSERT INTO img values(2,1,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam1/ao2.jpg');
INSERT INTO img values(3,1,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam1/ao3.jpg');
--ao2
INSERT INTO img values(1,2,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam2/ao1.jpg')
INSERT INTO img values(2,2,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam2/ao2.jpg')
INSERT INTO img values(3,2,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam2/ao3.jpg')
--ao3
INSERT INTO img values(1,3,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam3/ao1.jpg')
INSERT INTO img values(2,3,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam3/ao2.jpg')
INSERT INTO img values(3,3,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam3/ao3.jpg')

--ao4
INSERT INTO img values(1,4,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam4/ao1.jpg')
INSERT INTO img values(2,4,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam4/ao2.jpg')
INSERT INTO img values(3,4,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam4/ao3.jpg')
--ao5
INSERT INTO img values(1,5,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam5/ao1.jpg')
INSERT INTO img values(2,5,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam5/ao2.jpg')
INSERT INTO img values(3,5,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam5/ao3.jpg')
--ao6
INSERT INTO img values(1,6,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam6/ao1.jpg')
INSERT INTO img values(2,6,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam6/ao2.jpg')
INSERT INTO img values(3,6,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam6/ao3.jpg')
--ao7
INSERT INTO img values(1,7,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam7/ao1.jpg')
INSERT INTO img values(2,7,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam7/ao2.jpg')
INSERT INTO img values(3,7,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam7/ao3.jpg')
--ao8
INSERT INTO img values(1,8,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam8/ao1.jpg')
INSERT INTO img values(2,8,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam8/ao2.jpg')
INSERT INTO img values(3,8,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam8/ao3.jpg')
--ao9
INSERT INTO img values(1,9,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam9/ao1.jpg')
INSERT INTO img values(2,9,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam9/ao2.jpg')
INSERT INTO img values(3,9,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam9/ao3.jpg')
--ao10
INSERT INTO img values(1,10,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam10/ao1.jpg')
INSERT INTO img values(2,10,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam10/ao2.jpg')
INSERT INTO img values(3,10,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam10/ao3.jpg')
--ao11
INSERT INTO img values(1,11,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam11/ao1.jpg')
INSERT INTO img values(2,11,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam11/ao2.jpg')
INSERT INTO img values(3,11,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam11/ao3.jpg')
--ao12
INSERT INTO img values(1,12,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam12/ao1.jpg')
INSERT INTO img values(2,12,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam12/ao2.jpg')
INSERT INTO img values(3,12,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam12/ao3.jpg')
--ao13
INSERT INTO img values(1,13,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam13/ao1.jpg')
INSERT INTO img values(2,13,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam13/ao2.jpg')
INSERT INTO img values(3,13,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam13/ao3.jpg')
--ao14
INSERT INTO img values(1,14,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam14/ao1.jpg')
INSERT INTO img values(2,14,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam14/ao2.jpg')
INSERT INTO img values(3,14,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam14/ao3.jpg')
--ao15
INSERT INTO img values(1,15,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam15/ao1.jpeg')
INSERT INTO img values(2,15,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam15/ao2.jpeg')
INSERT INTO img values(3,15,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam15/ao3.jpeg')
--ao16
INSERT INTO img values(1,16,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam16/ao1.jpg')
INSERT INTO img values(2,16,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam16/ao2.jpg')
INSERT INTO img values(3,16,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam16/ao3.jpg')
--ao17
INSERT INTO img values(1,17,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam17/ao1.jpg')
INSERT INTO img values(2,17,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam17/ao2.jpg')
INSERT INTO img values(3,17,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam17/ao3.jpg')
--ao18
INSERT INTO img values(1,18,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam18/ao1.jpg')
INSERT INTO img values(2,18,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam18/ao2.jpg')
INSERT INTO img values(3,18,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam18/ao3.jpg')
--ao19
INSERT INTO img values(1,19,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam19/ao1.jpg')
INSERT INTO img values(2,19,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam19/ao2.jpg')
INSERT INTO img values(3,19,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam19/ao3.jpg')


--ao20
INSERT INTO img values(1,20,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam21/ao1.jpg')
INSERT INTO img values(2,20,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam21/ao2.jpg')
INSERT INTO img values(3,20,'http://localhost:8080/WebProject/user/img/men/aokhoacnam/aokhoacnam21/ao3.jpg')
--ao so mi
INSERT INTO product values(22,'aosominam1',260,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(23,'aosominam2',300,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(24,'aosominam3',320,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(21,'aosominam1',260,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(25,'aosominam2',300,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(26,'aosominam3',320,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(27,'aosominam1',260,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(28,'aosominam2',300,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(29,'aosominam3',320,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(30,'aosominam1',260,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(31,'aosominam2',300,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(32,'aosominam3',320,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(33,'aosominam1',260,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(34,'aosominam2',300,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(35,'aosominam3',320,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(36,'aosominam1',260,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(37,'aosominam2',300,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(38,'aosominam3',320,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(39,'aosominam1',260,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(40,'aosominam2',300,'aosominam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);




--áo sơ mi
--ao1
INSERT INTO img values(1,22,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi1/ao1.jpg');
INSERT INTO img values(2,22,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi1/ao2.jpg');
INSERT INTO img values(3,22,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi1/ao3.jpg');
--ao2
INSERT INTO img values(1,23,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi2/ao1.jpg');
INSERT INTO img values(2,23,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi2/ao2.jpg');
INSERT INTO img values(3,23,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi2/ao3.jpg');
--ao3
INSERT INTO img values(1,24,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi3/ao1.jpg');
INSERT INTO img values(2,24,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi3/ao2.jpg');
INSERT INTO img values(3,24,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi3/ao3.jpg');
--ao4
INSERT INTO img values(1,25,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi4/ao1.jpg');
INSERT INTO img values(2,25,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi4/ao2.jpg');
INSERT INTO img values(3,25,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi4/ao3.jpg');
--ao5
INSERT INTO img values(1,21,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi5/ao1.jpg');
INSERT INTO img values(2,21,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi5/ao2.jpg');
INSERT INTO img values(3,21,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi5/ao3.jpg');
--ao6
INSERT INTO img values(1,26,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi6/ao1.jpg');
INSERT INTO img values(2,26,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi6/ao2.jpg');
INSERT INTO img values(3,26,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi6/ao3.jpg');
--ao7
INSERT INTO img values(1,27,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi7/ao1.jpg');
INSERT INTO img values(2,27,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi7/ao2.jpg');
INSERT INTO img values(3,27,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi7/ao3.jpg');
--ao8
INSERT INTO img values(1,28,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi8/ao1.jpg');
INSERT INTO img values(2,28,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi8/ao2.jpg');
INSERT INTO img values(3,28,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi8/ao3.jpg');
--ao9
INSERT INTO img values(1,29,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi9/ao1.jpg');
INSERT INTO img values(2,29,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi9/ao2.jpg');
INSERT INTO img values(3,29,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi9/ao3.jpg');
--ao10
INSERT INTO img values(1,30,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi10/ao1.jpg');
INSERT INTO img values(2,30,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi10/ao2.jpg');
INSERT INTO img values(3,30,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi10/ao3.jpg');
--ao11
INSERT INTO img values(1,31,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi11/ao1.jpg');
INSERT INTO img values(2,31,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi11/ao2.jpg');
INSERT INTO img values(3,31,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi11/ao3.jpg');
--ao12
INSERT INTO img values(1,32,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi12/ao1.jpg');
INSERT INTO img values(2,32,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi12/ao2.jpg');
INSERT INTO img values(3,32,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi12/ao3.jpg');
--ao13
INSERT INTO img values(1,33,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi13/ao1.jpg');
INSERT INTO img values(2,33,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi13/ao2.jpg');
INSERT INTO img values(3,33,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi13/ao3.jpg');
--ao14
INSERT INTO img values(1,34,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi14/ao1.jpg');
INSERT INTO img values(2,34,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi14/ao2.jpg');
INSERT INTO img values(3,34,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi14/ao3.jpg');
--ao15
INSERT INTO img values(1,35,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi15/ao1.jpg');
INSERT INTO img values(2,35,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi15/ao2.jpg');
INSERT INTO img values(3,35,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi15/ao3.jpg');
--ao16
INSERT INTO img values(1,36,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi16/ao1.jpg');
INSERT INTO img values(2,36,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi16/ao2.jpg');
INSERT INTO img values(3,36,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi16/ao3.jpg');
--ao17
INSERT INTO img values(1,37,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi17/ao1.jpg');
INSERT INTO img values(2,37,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi17/ao2.jpg');
INSERT INTO img values(3,37,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi17/ao3.jpg');
--ao18
INSERT INTO img values(1,38,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi18/ao1.jpg');
INSERT INTO img values(2,38,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi18/ao2.jpg');
INSERT INTO img values(3,38,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi18/ao3.jpg');
--ao19
INSERT INTO img values(1,39,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi19/ao1.jpg');
INSERT INTO img values(2,39,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi19/ao2.jpg');
INSERT INTO img values(3,39,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi19/ao3.jpg');
--ao20
INSERT INTO img values(1,40,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi21/ao1.jpg');
INSERT INTO img values(2,40,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi21/ao2.jpg');
INSERT INTO img values(3,40,'http://localhost:8080/WebProject/user/img/men/aosominam/aosomi21/ao3.jpg');


--giày nam
INSERT INTO product values(41,'giaynamhihi',260,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(42,'giaynamhihi',300,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(43,'giaynamhihi',320,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(44,'giaynamhihi',260,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(45,'giaynamhihi',300,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(46,'giaynamhihi',320,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(47,'giaynamhihi',260,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(48,'giaynamhihi',300,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(49,'giaynamhihi',320,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(50,'giaynamhihi',260,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(51,'giaynamhihi',300,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(52,'giaynamhihi',320,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(53,'giaynamhihi',260,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(54,'giaynamhihi',300,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(55,'giaynamhihi',320,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(56,'giaynamhihi',260,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(57,'giaynamhihi',300,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(58,'giaynamhihi',320,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(59,'giaynamhihi',260,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(60,'giaynamhihi',300,'giaynam','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

--giay1
INSERT INTO img values(1,41,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam1/giay1.jpeg');
INSERT INTO img values(2,41,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam1/giay2.jpeg');
INSERT INTO img values(3,41,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam1/giay3.jpeg');

--giay2
INSERT INTO img values(1,42,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam2/giay1.jpeg');
INSERT INTO img values(2,42,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam2/giay2.jpeg');
INSERT INTO img values(3,42,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam2/giay3.jpeg');
--giay3
INSERT INTO img values(1,43,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam3/giay1.jpeg');
INSERT INTO img values(2,43,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam3/giay2.jpeg');
INSERT INTO img values(3,43,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam3/giay3.jpeg');
--giay4
INSERT INTO img values(1,44,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam4/giay1.jpeg');
INSERT INTO img values(2,44,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam4/giay2.jpeg');
INSERT INTO img values(3,44,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam4/giay3.jpeg');
--giay5
INSERT INTO img values(1,45,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam5/giay1.jpg');
INSERT INTO img values(2,45,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam5/giay2.jpg');
INSERT INTO img values(3,45,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam5/giay3.jpg');
--giay6
INSERT INTO img values(1,46,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam6/giay1.jpeg');
INSERT INTO img values(2,46,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam6/giay2.jpeg');
INSERT INTO img values(3,46,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam6/giay3.jpeg');
--giay7
INSERT INTO img values(1,47,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam7/giay1.jpeg');
INSERT INTO img values(2,47,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam7/giay2.jpeg');
INSERT INTO img values(3,47,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam7/giay3.jpeg');

--giay8
INSERT INTO img values(1,48,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam8/giay1.jpeg');
INSERT INTO img values(2,48,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam8/giay2.jpeg');
INSERT INTO img values(3,48,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam8/giay3.jpeg');
--giay9
INSERT INTO img values(1,49,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam9/giay1.jpeg');
INSERT INTO img values(2,49,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam9/giay2.jpeg');
INSERT INTO img values(3,49,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam9/giay3.jpeg');

--giay10
INSERT INTO img values(1,50,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam10/giay1.jpeg');
INSERT INTO img values(2,50,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam10/giay2.jpeg');
INSERT INTO img values(3,50,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam10/giay3.jpeg');
--giay11
INSERT INTO img values(1,51,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam11/giay1.jpg');
INSERT INTO img values(2,51,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam11/giay2.jpg');
INSERT INTO img values(3,51,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam11/giay3.jpg');
--giay12
INSERT INTO img values(1,52,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam12/giay1.jpg');
INSERT INTO img values(2,52,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam12/giay2.jpg');
INSERT INTO img values(3,52,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam12/giay3.jpg');
--giay13
INSERT INTO img values(1,53,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam13/giay1.jpg');
INSERT INTO img values(2,53,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam13/giay2.jpg');
INSERT INTO img values(3,53,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam13/giay3.jpg');
--giay14
INSERT INTO img values(1,54,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam14/giay1.jpg');
INSERT INTO img values(2,54,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam14/giay2.jpg');
INSERT INTO img values(3,54,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam14/giay2.jpg');
--giay15
INSERT INTO img values(1,55,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam15/giay1.jpg');
INSERT INTO img values(2,55,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam15/giay2.jpg');
INSERT INTO img values(3,55,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam15/giay3.jpg');
--giay16
INSERT INTO img values(1,56,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam16/giay1.jpg');
INSERT INTO img values(2,56,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam16/giay2.jpg');
INSERT INTO img values(3,56,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam16/giay3.jpg');
--giay17
INSERT INTO img values(1,57,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam17/giay1.jpeg');
INSERT INTO img values(2,57,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam17/giay2.jpeg');
INSERT INTO img values(3,57,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam17/giay3.jpeg');
--giay18
INSERT INTO img values(1,58,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam18/giay1.jpeg');
INSERT INTO img values(2,58,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam18/giay2.jpeg');
INSERT INTO img values(3,58,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam18/giay3.jpeg');
--giay19
INSERT INTO img values(1,59,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam19/giay1.jpeg');
INSERT INTO img values(2,59,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam19/giay2.jpeg');
INSERT INTO img values(3,59,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam19/giay3.jpeg');
--giay20
INSERT INTO img values(1,60,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam20/giay1.jpeg');
INSERT INTO img values(2,60,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam20/giay2.jpeg');
INSERT INTO img values(3,60,'http://localhost:8080/WebProject/user/img/men/giaynam/giaynam20/giay3.jpeg');


--quan jean nam

INSERT INTO product values(61,'quanjean',260,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(62,'quanjean',300,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(63,'quanjean',320,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(64,'quanjean',260,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(65,'quanjean',300,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(66,'quanjean',320,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(67,'quanjean',260,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(68,'quanjean',300,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(69,'quanjean',320,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(70,'quanjean',260,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(71,'quanjean',300,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(72,'quanjean',320,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(73,'quanjean',260,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(74,'quanjean',300,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(75,'quanjean',320,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(76,'quanjean',260,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(77,'quanjean',300,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(78,'quanjean',320,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(79,'quanjean',260,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(80,'quanjean',300,'quanjean','men',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);


--quan1
INSERT INTO img values(1,61,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean1/quan1.jpg');
INSERT INTO img values(2,61,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean1/quan2.jpg');
INSERT INTO img values(3,61,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean1/quan3.jpg');
--quan2
INSERT INTO img values(1,62,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean2/quan1.jpg');
INSERT INTO img values(2,62,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean2/quan2.jpg');
INSERT INTO img values(3,62,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean2/quan3.jpg');
--quan3
INSERT INTO img values(1,63,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean3/quan1.jpg');
INSERT INTO img values(2,63,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean3/quan2.jpg');
INSERT INTO img values(3,63,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean3/quan3.jpg');
--quan4
INSERT INTO img values(1,64,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean4/quan1.jpg');
INSERT INTO img values(2,64,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean4/quan2.jpg');
INSERT INTO img values(3,64,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean4/quan3.jpg');
--quan5
INSERT INTO img values(1,65,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean5/quan1.jpg');
INSERT INTO img values(2,65,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean5/quan2.jpg');
INSERT INTO img values(3,65,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean5/quan3.jpg');
--quan6
INSERT INTO img values(1,66,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean6/quan1.jpg');
INSERT INTO img values(2,66,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean6/quan2.jpg');
INSERT INTO img values(3,66,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean6/quan3.jpg');
--quan7
INSERT INTO img values(1,67,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean7/quan1.jpg');
INSERT INTO img values(2,67,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean7/quan2.jpg');
INSERT INTO img values(3,67,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean7/quan3.jpg');
--quan8
INSERT INTO img values(1,68,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean8/quan1.jpg');
INSERT INTO img values(2,68,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean8/quan2.jpg');
INSERT INTO img values(3,68,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean8/quan3.jpg');
--quan9
INSERT INTO img values(1,69,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean9/quan1.jpg');
INSERT INTO img values(2,69,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean9/quan2.jpg');
INSERT INTO img values(3,69,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean9/quan3.jpg');
--quan10
INSERT INTO img values(1,70,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean10/quan1.jpg');
INSERT INTO img values(2,70,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean10/quan2.jpg');
INSERT INTO img values(3,70,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean10/quan3.jpg');
--quan11
INSERT INTO img values(1,71,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean11/quan1.jpg');
INSERT INTO img values(2,71,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean11/quan2.jpg');
INSERT INTO img values(3,71,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean11/quan3.jpg');
--quan12
INSERT INTO img values(1,72,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean12/quan1.jpg');
INSERT INTO img values(2,72,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean12/quan2.jpg');
INSERT INTO img values(3,72,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean12/quan3.jpg');
--quan13
INSERT INTO img values(1,73,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean13/quan1.jpg');
INSERT INTO img values(2,73,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean13/quan2.jpg');
INSERT INTO img values(3,73,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean13/quan3.jpg');
--quan14
INSERT INTO img values(1,74,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean14/quan1.jpg');
INSERT INTO img values(2,74,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean14/quan2.jpg');
INSERT INTO img values(3,74,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean14/quan3.jpg');
--quan15
INSERT INTO img values(1,75,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean15/quan1.jpg');
INSERT INTO img values(2,75,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean15/quan2.jpg');
INSERT INTO img values(3,75,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean15/quan3.jpg');
--quan16
INSERT INTO img values(1,76,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean16/quan1.jpg');
INSERT INTO img values(2,76,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean16/quan2.jpg');
INSERT INTO img values(3,76,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean16/quan3.jpg');
--quan17
INSERT INTO img values(1,77,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean17/quan1.jpg');
INSERT INTO img values(2,77,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean17/quan2.jpg');
INSERT INTO img values(3,77,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean17/quan3.jpg');
--quan18
INSERT INTO img values(1,78,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean18/quan1.jpg');
INSERT INTO img values(2,78,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean18/quan2.jpg');
INSERT INTO img values(3,78,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean18/quan3.jpg');
--quan19
INSERT INTO img values(1,79,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean19/quan1.jpg');
INSERT INTO img values(2,79,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean19/quan2.jpg');
INSERT INTO img values(3,79,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean19/quan3.jpg');
--quan20
INSERT INTO img values(1,80,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean20/quan1.jpg');
INSERT INTO img values(2,80,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean20/quan2.jpg');
INSERT INTO img values(3,80,'http://localhost:8080/WebProject/user/img/men/quanjean/quanjean20/quan3.jpg');


------------------------------------------------------------------- do nu

--thuoc nhom nu
--ao khoacnu
INSERT INTO product values(101,'aokhoacnu1',250,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(102,'aokhoacnu2',450,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(103,'aokhoacnu3',350,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(104,'aokhoacnu4',260,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(105,'aokhoacnu5',300,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(106,'aokhoacnu6',320,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(107,'aokhoacnu7',450,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(108,'aokhoacnu8',650,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(109,'aokhoacnu9',750,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(110,'aokhoacnu10',850,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(111,'aokhoacnu11',150,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(112,'aokhoacnu12',250,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(113,'aokhoacnu14',450,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(114,'aokhoacnu15',250,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(115,'aokhoacnu16',150,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(116,'aokhoacnu17',650,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(117,'aokhoacnu18',450,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(118,'aokhoacnu19',550,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(119,'aokhoacnu20',350,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(120,'aokhoacnu21',450,'aokhoacnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
--img nu
INSERT INTO img values(1,101,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu1/ao1.jpg');
INSERT INTO img values(2,101,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu1/ao2.jpg');
INSERT INTO img values(3,101,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu1/ao3.jpg');

INSERT INTO img values(1,102,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu2/ao1.jpg');
INSERT INTO img values(2,102,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu2/ao2.jpg');
INSERT INTO img values(3,102,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu2/ao3.jpg');

INSERT INTO img values(1,103,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu3/ao1.jpg');
INSERT INTO img values(2,103,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu3/ao2.jpg');
INSERT INTO img values(3,103,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu3/ao3.jpg');

INSERT INTO img values(1,104,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu4/ao1.jpg');
INSERT INTO img values(2,104,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu4/ao2.jpg');
INSERT INTO img values(3,104,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu4/ao3.jpg');

INSERT INTO img values(1,105,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu5/ao1.jpg');
INSERT INTO img values(2,105,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu5/ao2.jpg');
INSERT INTO img values(3,105,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu5/ao3.jpg');

INSERT INTO img values(1,106,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu6/ao1.jpg');
INSERT INTO img values(2,106,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu6/ao2.jpg');
INSERT INTO img values(3,106,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu6/ao3.jpg');

INSERT INTO img values(1,107,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu7/ao1.jpg');
INSERT INTO img values(2,107,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu7/ao2.jpg');
INSERT INTO img values(3,107,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu7/ao3.jpg');

INSERT INTO img values(1,108,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu8/ao1.jpg');
INSERT INTO img values(2,108,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu8/ao2.jpg');
INSERT INTO img values(3,108,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu8/ao3.jpg');

INSERT INTO img values(1,109,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu9/ao1.jpg');
INSERT INTO img values(2,109,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu9/ao2.jpg');
INSERT INTO img values(3,109,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu9/ao3.jpg');

INSERT INTO img values(1,110,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu10/ao1.jpg');
INSERT INTO img values(2,110,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu10/ao2.jpg');
INSERT INTO img values(3,110,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu10/ao3.jpg');

INSERT INTO img values(1,111,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu11/ao1.jpg');
INSERT INTO img values(2,111,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu11/ao2.jpg');
INSERT INTO img values(3,111,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu11/ao3.jpg');

INSERT INTO img values(1,112,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu12/ao1.jpg');
INSERT INTO img values(2,112,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu12/ao2.jpg');
INSERT INTO img values(3,112,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu12/ao3.jpg');

INSERT INTO img values(1,113,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu13/ao1.jpg');
INSERT INTO img values(2,113,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu13/ao2.jpg');
INSERT INTO img values(3,113,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu13/ao3.jpg');

INSERT INTO img values(1,114,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu14/ao1.jpg');
INSERT INTO img values(2,114,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu14/ao2.jpg');
INSERT INTO img values(3,114,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu14/ao3.jpg');

INSERT INTO img values(1,115,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu15/ao1.jpg');
INSERT INTO img values(2,115,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu15/ao2.jpg');
INSERT INTO img values(3,115,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu15/ao3.jpg');

INSERT INTO img values(1,116,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu16/ao1.jpg');
INSERT INTO img values(2,116,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu16/ao2.jpg');
INSERT INTO img values(3,116,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu16/ao3.jpg');

INSERT INTO img values(1,117,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu17/ao1.jpg');
INSERT INTO img values(2,117,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu17/ao2.jpg');
INSERT INTO img values(3,117,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu17/ao3.jpg');

INSERT INTO img values(1,118,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu18/ao1.jpg');
INSERT INTO img values(2,118,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu18/ao2.jpg');
INSERT INTO img values(3,118,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu18/ao3.jpg');

INSERT INTO img values(1,119,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu19/ao1.jpg');
INSERT INTO img values(2,119,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu19/ao2.jpg');
INSERT INTO img values(3,119,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu19/ao3.jpg');

INSERT INTO img values(1,120,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu20/ao1.jpg');
INSERT INTO img values(2,120,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu20/ao2.jpg');
INSERT INTO img values(3,120,'http://localhost:8080/WebProject/user/img/women/aokhoacnu/aokhoacnu20/ao3.jpg');

--thuoc nhom nu
--giaynu
INSERT INTO product values(121,'giaynu1',350,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(122,'giaynu2',450,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(123,'giaynu3',150,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(124,'giaynu4',260,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(125,'giaynu5',300,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(126,'giaynu6',320,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(127,'giaynu7',350,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(128,'giaynu8',450,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(129,'giaynu9',750,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(130,'giaynu10',950,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(131,'giaynu11',850,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(132,'giaynu12',150,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(133,'giaynu13',450,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(134,'giaynu14',250,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(135,'giaynu15',550,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(136,'giaynu16',450,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(137,'giaynu17',150,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(138,'giaynu18',450,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(139,'giaynu19',650,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(140,'giaynu20',750,'giaynu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO img values(1,121,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu1/giay1.jpg');
INSERT INTO img values(2,121,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu1/giay2.jpg');
INSERT INTO img values(3,121,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu1/giay3.jpg');

INSERT INTO img values(1,122,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu2/giay1.jpg');
INSERT INTO img values(2,122,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu2/giay2.jpg');
INSERT INTO img values(3,122,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu2/giay3.jpg');

INSERT INTO img values(1,123,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu3/giay1.jpg');
INSERT INTO img values(2,123,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu3/giay2.jpg');
INSERT INTO img values(3,123,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu3/giay3.jpg');

INSERT INTO img values(1,124,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu4/giay1.jpg');
INSERT INTO img values(2,124,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu4/giay2.jpg');
INSERT INTO img values(3,124,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu4/giay3.jpg');

INSERT INTO img values(1,125,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu5/giay1.jpg');
INSERT INTO img values(2,125,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu5/giay2.jpg');
INSERT INTO img values(3,125,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu5/giay3.jpg');

INSERT INTO img values(1,126,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu6/giay1.jpg');
INSERT INTO img values(2,126,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu6/giay2.jpg');
INSERT INTO img values(3,126,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu6/giay3.jpg');

INSERT INTO img values(1,127,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu7/giay1.jpg');
INSERT INTO img values(2,127,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu7/giay2.jpg');
INSERT INTO img values(3,127,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu7/giay3.jpg');

INSERT INTO img values(1,128,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu8/giay1.jpg');
INSERT INTO img values(2,128,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu8/giay2.jpg');
INSERT INTO img values(3,128,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu8/giay3.jpg');

INSERT INTO img values(1,129,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu9/giay1.jpg');
INSERT INTO img values(2,129,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu9/giay2.jpg');
INSERT INTO img values(3,129,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu9/giay3.jpg');

INSERT INTO img values(1,130,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu10/giay1.jpg');
INSERT INTO img values(2,130,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu10/giay2.jpg');
INSERT INTO img values(3,130,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu10/giay3.jpg');

INSERT INTO img values(1,131,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu11/giay1.jpg');
INSERT INTO img values(2,131,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu11/giay2.jpg');
INSERT INTO img values(3,131,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu11/giay3.jpg');

INSERT INTO img values(1,132,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu12/giay1.jpg');
INSERT INTO img values(2,132,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu12/giay2.jpg');
INSERT INTO img values(3,132,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu12/giay3.jpg');

INSERT INTO img values(1,133,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu13/giay1.jpg');
INSERT INTO img values(2,133,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu13/giay2.jpg');
INSERT INTO img values(3,133,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu13/giay3.jpg');

INSERT INTO img values(1,134,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu14/giay1.jpg');
INSERT INTO img values(2,134,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu14/giay2.jpg');
INSERT INTO img values(3,134,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu14/giay3.jpg');

INSERT INTO img values(1,135,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu15/giay1.jpg');
INSERT INTO img values(2,135,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu15/giay2.jpg');
INSERT INTO img values(3,135,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu15/giay3.jpg');

INSERT INTO img values(1,136,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu16/giay1.jpg');
INSERT INTO img values(2,136,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu16/giay2.jpg');
INSERT INTO img values(3,136,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu16/giay3.jpg');

INSERT INTO img values(1,137,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu17/giay1.jpg');
INSERT INTO img values(2,137,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu17/giay2.jpg');
INSERT INTO img values(3,137,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu17/giay3.jpg');

INSERT INTO img values(1,138,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu18/giay1.jpg');
INSERT INTO img values(2,138,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu18/giay2.jpg');
INSERT INTO img values(3,138,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu18/giay3.jpg');

INSERT INTO img values(1,139,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu19/giay1.jpg');
INSERT INTO img values(2,139,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu19/giay2.jpg');
INSERT INTO img values(3,139,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu19/giay3.jpg');

INSERT INTO img values(1,140,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu20/giay1.jpg');
INSERT INTO img values(2,140,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu20/giay2.jpg');
INSERT INTO img values(3,140,'http://localhost:8080/WebProject/user/img/women/giaynu/giaynu20/giay3.jpg');
--thuoc nhom nu
--quanjeansnu
INSERT INTO product values(141,'quanjeansnu1',150,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(142,'quanjeansnu2',250,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(143,'quanjeansnu3',450,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(144,'quanjeansnu4',260,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(145,'quanjeansnu5',300,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(146,'quanjeansnu6',320,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(147,'quanjeansnu7',550,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(148,'quanjeansnu8',650,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(149,'quanjeansnu9',750,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(150,'quanjeansnu10',850,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(151,'quanjeansnu11',950,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(152,'quanjeansnu12',450,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(153,'quanjeansnu13',350,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(154,'quanjeansnu14',150,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(155,'quanjeansnu15',550,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(156,'quanjeansnu16',650,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(157,'quanjeansnu16',550,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(158,'quanjeansnu16',450,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(159,'quanjeansnu17',350,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(160,'quanjeansnu17',550,'quanjeansnu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

--img quanjean
INSERT INTO img values(1,141,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu1/quan1.jpg');
INSERT INTO img values(2,141,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu1/quan2.jpg');
INSERT INTO img values(3,141,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu1/quan3.jpg');

INSERT INTO img values(1,142,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu2/quan1.jpg');
INSERT INTO img values(2,142,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu2/quan2.jpg');
INSERT INTO img values(3,142,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu2/quan3.jpg');

INSERT INTO img values(1,143,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu3/quan1.jpg');
INSERT INTO img values(2,143,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu3/quan2.jpg');
INSERT INTO img values(3,143,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu3/quan3.jpg');

INSERT INTO img values(1,144,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu4/quan1.jpg');
INSERT INTO img values(2,144,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu4/quan2.jpg');
INSERT INTO img values(3,144,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu4/quan3.jpg');

INSERT INTO img values(1,145,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu5/quan1.jpg');
INSERT INTO img values(2,145,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu5/quan2.jpg');
INSERT INTO img values(3,145,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu5/quan3.jpg');

INSERT INTO img values(1,146,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu6/quan1.jpg');
INSERT INTO img values(2,146,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu6/quan2.jpg');
INSERT INTO img values(3,146,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu6/quan3.jpg');

INSERT INTO img values(1,147,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu7/quan1.jpg');
INSERT INTO img values(2,147,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu7/quan2.jpg');
INSERT INTO img values(3,147,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu7/quan3.jpg');

INSERT INTO img values(1,148,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu8/quan1.jpg');
INSERT INTO img values(2,148,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu8/quan2.jpg');
INSERT INTO img values(3,148,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu8/quan3.jpg');

INSERT INTO img values(1,149,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu9/quan1.jpg');
INSERT INTO img values(2,149,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu9/quan2.jpg');
INSERT INTO img values(3,149,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu9/quan3.jpg');

INSERT INTO img values(1,150,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu10/quan1.jpg');
INSERT INTO img values(2,150,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu10/quan2.jpg');
INSERT INTO img values(3,150,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu10/quan3.jpg');

INSERT INTO img values(1,151,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu11/quan1.jpg');
INSERT INTO img values(2,151,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu11/quan2.jpg');
INSERT INTO img values(3,151,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu11/quan3.jpg');

INSERT INTO img values(1,152,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu12/quan1.jpg');
INSERT INTO img values(2,152,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu12/quan2.jpg');
INSERT INTO img values(3,152,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu12/quan3.jpg');

INSERT INTO img values(1,153,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu13/quan1.jpg');
INSERT INTO img values(2,153,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu13/quan2.jpg');
INSERT INTO img values(3,153,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu13/quan3.jpg');

INSERT INTO img values(1,154,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu14/quan1.jpg');
INSERT INTO img values(2,154,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu14/quan2.jpg');
INSERT INTO img values(3,154,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu14/quan3.jpg');

INSERT INTO img values(1,155,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu15/quan1.jpg');
INSERT INTO img values(2,155,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu15/quan2.jpg');
INSERT INTO img values(3,155,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu15/quan3.jpg');

INSERT INTO img values(1,156,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu16/quan1.jpg');
INSERT INTO img values(2,156,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu16/quan2.jpg');
INSERT INTO img values(3,156,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu16/quan3.jpg');

INSERT INTO img values(1,157,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu17/quan1.jpg');
INSERT INTO img values(2,157,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu17/quan2.jpg');
INSERT INTO img values(3,157,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu17/quan3.jpg');

INSERT INTO img values(1,158,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu18/quan1.jpg');
INSERT INTO img values(2,158,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu18/quan2.jpg');
INSERT INTO img values(3,158,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu18/quan3.jpg');

INSERT INTO img values(1,159,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu19/quan1.jpg');
INSERT INTO img values(2,159,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu19/quan2.jpg');
INSERT INTO img values(3,159,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu19/quan3.jpg');

INSERT INTO img values(1,160,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu20/quan1.jpg');
INSERT INTO img values(2,160,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu20/quan2.jpg');
INSERT INTO img values(3,160,'http://localhost:8080/WebProject/user/img/women/quanjeansnu/quanjeansnu20/quan3.jpg');

--thuoc nhom nu
--tuinu
INSERT INTO product values(161,'tuinu',150,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(162,'tuinu',350,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(163,'tuinu',450,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(164,'tuinu',260,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(165,'tuinu',300,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(166,'tuinu',320,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(167,'tuinu',550,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(168,'tuinu',450,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(169,'tuinu',350,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(170,'tuinu',450,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(171,'tuinu',350,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(172,'tuinu',250,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(173,'tuinu',750,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(174,'tuinu',850,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(175,'tuinu',950,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(176,'tuinu',150,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(177,'tuinu',350,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(178,'tuinu',250,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(179,'tuinu',550,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(180,'tuinu',850,'tuinu','women',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO img values(1,161,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu1/tui1.jpg');
INSERT INTO img values(2,161,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu1/tui2.jpg');
INSERT INTO img values(3,161,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu1/tui3.jpg');

INSERT INTO img values(1,162,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu2/tui1.jpg');
INSERT INTO img values(2,162,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu2/tui2.jpg');
INSERT INTO img values(3,162,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu2/tui3.jpg');

INSERT INTO img values(1,163,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu3/tui1.jpg');
INSERT INTO img values(2,163,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu3/tui2.jpg');
INSERT INTO img values(3,163,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu3/tui3.jpg');

INSERT INTO img values(1,164,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu4/tui1.jpg');
INSERT INTO img values(2,164,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu4/tui2.jpg');
INSERT INTO img values(3,164,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu4/tui3.jpg');

INSERT INTO img values(1,165,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu5/tui1.jpg');
INSERT INTO img values(2,165,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu5/tui2.jpg');
INSERT INTO img values(3,165,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu5/tui3.jpg');

INSERT INTO img values(1,166,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu6/tui1.jpg');
INSERT INTO img values(2,166,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu6/tui2.jpg');
INSERT INTO img values(3,166,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu6/tui3.jpg');

INSERT INTO img values(1,167,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu7/tui1.jpg');
INSERT INTO img values(2,167,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu7/tui2.jpg');
INSERT INTO img values(3,167,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu7/tui3.jpg');

INSERT INTO img values(1,168,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu8/tui1.jpg');
INSERT INTO img values(2,168,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu8/tui2.jpg');
INSERT INTO img values(3,168,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu8/tui3.jpg');

INSERT INTO img values(1,169,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu9/tui1.jpg');
INSERT INTO img values(2,169,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu9/tui2.jpg');
INSERT INTO img values(3,169,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu9/tui3.jpg');

INSERT INTO img values(1,170,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu10/tui1.jpg');
INSERT INTO img values(2,170,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu10/tui2.jpg');
INSERT INTO img values(3,170,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu10/tui3.jpg');

INSERT INTO img values(1,171,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu11/tui1.jpg');
INSERT INTO img values(2,171,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu11/tui2.jpg');
INSERT INTO img values(3,171,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu11/tui3.jpg');

INSERT INTO img values(1,172,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu12/tui1.jpg');
INSERT INTO img values(2,172,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu12/tui2.jpg');
INSERT INTO img values(3,172,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu12/tui3.jpg');

INSERT INTO img values(1,173,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu13/tui1.jpg');
INSERT INTO img values(2,173,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu13/tui2.jpg');
INSERT INTO img values(3,173,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu13/tui3.jpg');

INSERT INTO img values(1,174,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu14/tui1.jpg');
INSERT INTO img values(2,174,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu14/tui2.jpg');
INSERT INTO img values(3,174,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu14/tui3.jpg');

INSERT INTO img values(1,175,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu15/tui1.jpg');
INSERT INTO img values(2,175,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu15/tui2.jpg');
INSERT INTO img values(3,175,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu15/tui3.jpg');

INSERT INTO img values(1,176,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu16/tui1.jpg');
INSERT INTO img values(2,176,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu16/tui2.jpg');
INSERT INTO img values(3,176,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu16/tui3.jpg');

INSERT INTO img values(1,177,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu17/tui1.jpg');
INSERT INTO img values(2,177,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu17/tui2.jpg');
INSERT INTO img values(3,177,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu17/tui3.jpg');

INSERT INTO img values(1,178,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu18/tui1.jpg');
INSERT INTO img values(2,178,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu18/tui2.jpg');
INSERT INTO img values(3,178,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu18/tui3.jpg');

INSERT INTO img values(1,179,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu19/tui1.jpg');
INSERT INTO img values(2,179,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu19/tui2.jpg');
INSERT INTO img values(3,179,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu19/tui3.jpg');

INSERT INTO img values(1,180,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu20/tui1.jpg');
INSERT INTO img values(2,180,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu20/tui2.jpg');
INSERT INTO img values(3,180,'http://localhost:8080/WebProject/user/img/women/tuinu/tuinu20/tui3.jpg');

------------------------------------------------------------------do tre em
--be gai
--begai5tuoi
INSERT INTO product values(300,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(301,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(302,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(303,'quanaobegai',260,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(304,'quanaobegai',300,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(305,'quanaobegai',320,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(306,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(307,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(308,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(309,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(310,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(311,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(312,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(313,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(314,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(315,'quanaobegai',250,'begai5tuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
----
----
INSERT INTO img values(1,300,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi1/ao1.jpg');
INSERT INTO img values(2,300,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi1/ao2.jpg');
INSERT INTO img values(3,300,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi1/ao3.jpg');

INSERT INTO img values(1,301,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi2/ao1.jpg');
INSERT INTO img values(2,301,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi2/ao2.jpg');
INSERT INTO img values(3,301,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi2/ao3.jpg');

INSERT INTO img values(1,302,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi3/ao1.jpg');
INSERT INTO img values(2,302,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi3/ao2.jpg');
INSERT INTO img values(3,302,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi3/ao3.jpg');

INSERT INTO img values(1,303,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi4/ao1.jpg');
INSERT INTO img values(2,303,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi4/ao2.jpg');
INSERT INTO img values(3,303,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi4/ao3.jpg');

INSERT INTO img values(1,304,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi5/ao1.jpg');
INSERT INTO img values(2,304,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi5/ao2.jpg');
INSERT INTO img values(3,304,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi5/ao3.jpg');

INSERT INTO img values(1,305,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi6/ao1.jpg');
INSERT INTO img values(2,305,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi6/ao2.jpg');
INSERT INTO img values(3,305,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi6/ao3.jpg');

INSERT INTO img values(1,306,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi7/ao1.jpg');
INSERT INTO img values(2,306,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi7/ao2.jpg');
INSERT INTO img values(3,306,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi7/ao3.jpg');

INSERT INTO img values(1,307,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi8/ao1.jpg');
INSERT INTO img values(2,307,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi8/ao2.jpg');
INSERT INTO img values(3,307,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi8/ao3.jpg');

INSERT INTO img values(1,308,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi9/ao1.jpg');
INSERT INTO img values(2,308,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi9/ao2.jpg');
INSERT INTO img values(3,308,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi9/ao3.jpg');

INSERT INTO img values(1,309,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi10/ao1.jpg');
INSERT INTO img values(2,309,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi10/ao2.jpg');
INSERT INTO img values(3,309,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi10/ao3.jpg');

INSERT INTO img values(1,310,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi11/ao1.jpg');
INSERT INTO img values(2,310,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi11/ao2.jpg');
INSERT INTO img values(3,310,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi11/ao3.jpg');

INSERT INTO img values(1,311,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi12/ao1.jpg');
INSERT INTO img values(2,311,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi12/ao2.jpg');
INSERT INTO img values(3,311,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi12/ao3.jpg');

INSERT INTO img values(1,312,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi13/ao1.jpg');
INSERT INTO img values(2,312,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi13/ao2.jpg');
INSERT INTO img values(3,312,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi13/ao3.jpg');

INSERT INTO img values(1,313,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi13/ao1.jpg');
INSERT INTO img values(2,313,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi13/ao2.jpg');
INSERT INTO img values(3,313,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi13/ao3.jpg');

INSERT INTO img values(1,314,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi14/ao1.jpg');
INSERT INTO img values(2,314,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi14/ao2.jpg');
INSERT INTO img values(3,314,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi14/ao3.jpg');

INSERT INTO img values(1,315,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi15/ao1.jpg');
INSERT INTO img values(2,315,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi15/ao2.jpg');
INSERT INTO img values(3,315,'http://localhost:8080/WebProject/user/img/kids/begai5tuoi/begai5tuoi15/ao3.jpg');

--be gai
--begai5thangtuoi
INSERT INTO product values(316,'quanaobegai5thangtuoi1',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(317,'quanaobegai5thangtuoi2',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(318,'quanaobegai5thangtuoi3',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(319,'quanaobegai5thangtuoi4',260,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(320,'quanaobegai5thangtuoi5',300,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(321,'quanaobegai5thangtuoi6',320,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(322,'quanaobegai5thangtuoi7',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(323,'quanaobegai5thangtuoi8',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(324,'quanaobegai5thangtuoi9',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(325,'quanaobegai5thangtuoi10',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(326,'quanaobegai5thangtuoi11',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(327,'quanaobegai5thangtuoi12',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

INSERT INTO product values(328,'quanaobegai5thangtuoi13',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(329,'quanaobegai5thangtuoi14',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(330,'quanaobegai5thangtuoi15',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(331,'quanaobegai5thangtuoi16',250,'begai5thangtuoi','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);

---
INSERT INTO img values(1,316,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi1/ao1.jpg');
INSERT INTO img values(2,316,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi1/ao1.jpg');
INSERT INTO img values(3,316,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi1/ao1.jpg');

INSERT INTO img values(1,317,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi2/ao1.jpg');
INSERT INTO img values(2,317,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi2/ao2.jpg');
INSERT INTO img values(3,317,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi2/ao3.jpg');

INSERT INTO img values(1,318,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi3/ao1.jpg');
INSERT INTO img values(2,318,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi3/ao2.jpg');
INSERT INTO img values(3,318,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi3/ao3.jpg');

INSERT INTO img values(1,319,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi4/ao1.jpg');
INSERT INTO img values(2,319,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi4/ao2.jpg');
INSERT INTO img values(3,319,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi4/ao3.jpg');

INSERT INTO img values(1,320,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi5/ao1.jpg');
INSERT INTO img values(2,320,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi5/ao2.jpg');
INSERT INTO img values(3,320,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi5/ao3.jpg');

INSERT INTO img values(1,321,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi6/ao1.jpg');
INSERT INTO img values(2,321,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi6/ao2.jpg');
INSERT INTO img values(3,321,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi6/ao3.jpg');

INSERT INTO img values(1,322,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi7/ao1.jpg');
INSERT INTO img values(2,322,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi7/ao2.jpg');
INSERT INTO img values(3,322,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi7/ao3.jpg');

INSERT INTO img values(1,323,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi8/ao1.jpg');
INSERT INTO img values(2,323,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi8/ao2.jpg');
INSERT INTO img values(3,323,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi8/ao3.jpg');

INSERT INTO img values(1,324,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi9/ao1.jpg');
INSERT INTO img values(2,324,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi9/ao2.jpg');
INSERT INTO img values(3,324,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi9/ao3.jpg');

INSERT INTO img values(1,325,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi10/ao1.jpg');
INSERT INTO img values(2,325,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi10/ao2.jpg');
INSERT INTO img values(3,325,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi10/ao3.jpg');

INSERT INTO img values(1,326,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi11/ao1.jpg');
INSERT INTO img values(2,326,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi11/ao2.jpg');
INSERT INTO img values(3,326,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi11/ao3.jpg');

INSERT INTO img values(1,327,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi12/ao1.jpg');
INSERT INTO img values(2,327,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi12/ao2.jpg');
INSERT INTO img values(3,327,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi12/ao3.jpg');

INSERT INTO img values(1,328,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi13/ao1.jpg');
INSERT INTO img values(2,328,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi13/ao2.jpg');
INSERT INTO img values(3,328,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi13/ao3.jpg');

INSERT INTO img values(1,329,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi13/ao1.jpg');
INSERT INTO img values(2,329,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi13/ao2.jpg');
INSERT INTO img values(3,329,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi13/ao3.jpg');

INSERT INTO img values(1,330,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi14/ao1.jpg');
INSERT INTO img values(2,330,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi14/ao2.jpg');
INSERT INTO img values(3,330,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi14/ao3.jpg');

INSERT INTO img values(1,331,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi15/ao1.jpg');
INSERT INTO img values(2,331,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi15/ao2.jpg');
INSERT INTO img values(3,331,'http://localhost:8080/WebProject/user/img/kids/begai5thangtuoi/begai5thangtuoi15/ao3.jpg');

------CUA VAN ANH
--DO TRE EM NAM 5 DEN 14 TUOI
INSERT INTO product values(200,'dotreemnam1',260,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(201,'dotreemnam1',300,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(202,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(203,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(204,'dotreemnam1',260,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(205,'dotreemnam1',300,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(206,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(207,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(208,'dotreemnam1',260,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(209,'dotreemnam1',300,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(210,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(211,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(212,'dotreemnam1',260,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(213,'dotreemnam1',300,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(214,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(215,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(216,'dotreemnam1',260,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(217,'dotreemnam1',300,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(218,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(219,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(220,'dotreemnam1',320,'dotreemnam','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);




--do1
INSERT INTO img values(1,200,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam1/do1.jpg');
INSERT INTO img values(2,200,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam1/do2.jpg');
INSERT INTO img values(3,200,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam1/do3.jpg');
--do2
INSERT INTO img values(1,201,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam2/do1.jpg');
INSERT INTO img values(2,201,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam2/do2.jpg');
INSERT INTO img values(3,201,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam2/do3.jpg');
--do3
INSERT INTO img values(1,202,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam3/do1.jpg');
INSERT INTO img values(2,202,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam3/do2.jpg');
INSERT INTO img values(3,202,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam3/do3.jpg');
--do4
INSERT INTO img values(1,203,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam4/do1.jpg');
INSERT INTO img values(2,203,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam4/do2.jpg');
INSERT INTO img values(3,203,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam4/do3.jpg');
--do5
INSERT INTO img values(1,204,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam5/do1.jpg');
INSERT INTO img values(2,204,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam5/do2.jpg');
INSERT INTO img values(3,204,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam5/do3.jpg');
--do6
INSERT INTO img values(1,205,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam6/do1.jpg');
INSERT INTO img values(2,205,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam6/do2.jpg');
INSERT INTO img values(3,205,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam6/do3.jpg');
--do7
INSERT INTO img values(1,206,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam7/do1.jpg');
INSERT INTO img values(2,206,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam7/do2.jpg');
INSERT INTO img values(3,206,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam7/do3.jpg');
--do8
INSERT INTO img values(1,207,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam8/do1.jpg');
INSERT INTO img values(2,207,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam8/do2.jpg');
INSERT INTO img values(3,207,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam8/do3.jpg');
--do9
INSERT INTO img values(1,208,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam9/do1.jpg');
INSERT INTO img values(2,208,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam9/do2.jpg');
INSERT INTO img values(3,208,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam9/do3.jpg');
--do10
INSERT INTO img values(1,209,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam10/do1.jpg');
INSERT INTO img values(2,209,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam10/do2.jpg');
INSERT INTO img values(3,209,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam10/do3.jpg');
--do11
INSERT INTO img values(1,210,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam11/do1.jpg');
INSERT INTO img values(2,210,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam11/do2.jpg');
INSERT INTO img values(3,210,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam11/do3.jpg');
--do12
INSERT INTO img values(1,211,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam12/do1.jpg');
INSERT INTO img values(2,211,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam12/do2.jpg');
INSERT INTO img values(3,211,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam12/do3.jpg');
--do13
INSERT INTO img values(1,212,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam13/do1.jpg');
INSERT INTO img values(2,212,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam13/do2.jpg');
INSERT INTO img values(3,212,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam13/do3.jpg');
--do14
INSERT INTO img values(1,213,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam14/do1.jpg');
INSERT INTO img values(2,213,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam14/do2.jpg');
INSERT INTO img values(3,213,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam14/do3.jpg');
--do15
INSERT INTO img values(1,214,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam15/do1.jpg');
INSERT INTO img values(2,214,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam15/do2.jpg');
INSERT INTO img values(3,214,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam15/do3.jpg');
--do16
INSERT INTO img values(1,215,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam16/do1.png');
INSERT INTO img values(2,215,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam16/do2.png');
INSERT INTO img values(3,215,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam16/do3.png');
--do17
INSERT INTO img values(1,216,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam17/do1.jpg');
INSERT INTO img values(2,216,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam17/do2.jpg');
INSERT INTO img values(3,216,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam17/do3.jpg');
--do18
INSERT INTO img values(1,217,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam18/do1.jpg');
INSERT INTO img values(2,217,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam18/do2.jpg');
INSERT INTO img values(3,217,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam18/do3.jpg');
--do19
INSERT INTO img values(1,218,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam19/do1.jpg');
INSERT INTO img values(2,218,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam19/do2.jpg');
INSERT INTO img values(3,218,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam19/do3.jpg');
--do20
INSERT INTO img values(1,219,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam20/do1.jpg');
INSERT INTO img values(2,219,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam20/do2.jpg');
INSERT INTO img values(3,219,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam20/do3.jpg');
--do21

INSERT INTO img values(1,220,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam21/do1.jpg');
INSERT INTO img values(2,220,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam21/do2.jpg');
INSERT INTO img values(3,220,'http://localhost:8080/WebProject/user/img/kids/treem5den14tuoi/dotreemnam21/do3.jpg');

--do tre em nam 5 thang tuoi
INSERT INTO product values(221,'dotreemnam1',260,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(222,'dotreemnam1',500,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(223,'dotreemnam1',600,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(224,'dotreemnam1',700,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(225,'dotreemnam1',260,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(226,'dotreemnam1',500,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(227,'dotreemnam1',200,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(228,'dotreemnam1',100,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(229,'dotreemnam1',233,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(230,'dotreemnam1',300,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(231,'dotreemnam1',320,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(232,'dotreemnam1',344,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(233,'dotreemnam1',677,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(234,'dotreemnam1',900,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(235,'dotreemnam1',333,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(236,'dotreemnam1',700,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(237,'dotreemnam1',100,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(238,'dotreemnam1',200,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(239,'dotreemnam1',900,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);
INSERT INTO product values(240,'dotreemnam1',300,'dotreemnam5thang','kids',N'sản phẩm có cổ hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.',500);


--san pham
--do1
INSERT INTO img values(1,221,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi1/do1.jpg');
INSERT INTO img values(2,221,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi1/do2.jpg');
INSERT INTO img values(3,221,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi1/do3.jpg');
--do2
INSERT INTO img values(1,222,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi2/do1.jpg');
INSERT INTO img values(2,222,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi2/do2.jpg');
INSERT INTO img values(3,222,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi2/do3.jpg');
--do3
INSERT INTO img values(1,223,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi3/do1.jpg');
INSERT INTO img values(2,223,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi3/do2.jpg');
INSERT INTO img values(3,223,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi3/do3.jpg');
--do4
INSERT INTO img values(1,224,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi4/do1.jpg');
INSERT INTO img values(2,224,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi4/do2.jpg');
INSERT INTO img values(3,224,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi4/do3.jpg');
--do5
INSERT INTO img values(1,225,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi5/do1.jpg');
INSERT INTO img values(2,225,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi5/do2.jpg');
INSERT INTO img values(3,225,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi5/do3.jpg'); 
--do6
INSERT INTO img values(1,226,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi6/do1.jpg');
INSERT INTO img values(2,226,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi6/do2.jpg');
INSERT INTO img values(3,226,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi6/do3.jpg');
--do7
INSERT INTO img values(1,227,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi7/do1.jpg');
INSERT INTO img values(2,227,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi7/do2.jpg');
INSERT INTO img values(3,227,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi7/do3.jpg');
--do8
INSERT INTO img values(1,228,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi8/do1.jpg');
INSERT INTO img values(2,228,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi8/do2.jpg');
INSERT INTO img values(3,228,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi8/do3.jpg');
--do9
INSERT INTO img values(1,229,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi9/do1.jpg');
INSERT INTO img values(2,229,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi9/do2.jpg');
INSERT INTO img values(3,229,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi9/do3.jpg');
--do10
INSERT INTO img values(1,230,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi10/do1.jpg');
INSERT INTO img values(2,230,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi10/do2.jpg');
INSERT INTO img values(3,230,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi10/do3.jpg');
--do11
INSERT INTO img values(1,231,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi11/do1.jpg');
INSERT INTO img values(2,231,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi11/do2.jpg');
INSERT INTO img values(3,231,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi11/do3.jpg');
--do12
INSERT INTO img values(1,232,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi12/do1.jpg');
INSERT INTO img values(2,232,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi12/do2.jpg');
INSERT INTO img values(3,232,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi12/do3.jpg');
--do13
INSERT INTO img values(1,233,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi13/do1.jpg');
INSERT INTO img values(2,233,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi13/do2.jpg');
INSERT INTO img values(3,233,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi13/do3.jpg');
--do14
INSERT INTO img values(1,234,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi14/do1.jpg');
INSERT INTO img values(2,234,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi14/do2.jpg');
INSERT INTO img values(3,234,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi14/do3.jpg');
--do15
INSERT INTO img values(1,235,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi15/do1.jpg');
INSERT INTO img values(2,235,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi15/do2.jpg');
INSERT INTO img values(3,235,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi15/do3.jpg');
--do16
INSERT INTO img values(1,236,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi16/do1.jpg');
INSERT INTO img values(2,236,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi16/do2.jpg');
INSERT INTO img values(3,236,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi16/do3.jpg');
--do17
INSERT INTO img values(1,237,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi17/do1.jpg');
INSERT INTO img values(2,237,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi17/do2.jpg');
INSERT INTO img values(3,237,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi17/do3.jpg');
--do18
INSERT INTO img values(1,238,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi18/do1.jpg');
INSERT INTO img values(2,238,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi18/do2.jpg');
INSERT INTO img values(3,238,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi18/do3.jpg');
--do19
INSERT INTO img values(1,239,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi19/do1.jpg');
INSERT INTO img values(2,239,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi19/do2.jpg');
INSERT INTO img values(3,239,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi19/do3.jpg');
--do20
INSERT INTO img values(1,240,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi20/do1.jpg');
INSERT INTO img values(2,240,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi20/do2.jpg');
INSERT INTO img values(3,240,'http://localhost:8080/WebProject/user/img/kids/treem5den14thangtuoi/betrai5thangtuoi20/do3.jpg');


delete from product where typeproduct = 'dotreemnam' and thuocnhom = 'treem';
delete from img where productID between 300 and 331;


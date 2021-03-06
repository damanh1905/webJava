create database java;
go
USE java
set dateformat DMY;
go
CREATE TABLE users (
   username   NVARCHAR(45) NOT NULL,
   password NVARCHAR(45)   NOT NULL,
   firstName  NVARCHAR(45) NOT NULL,
   lastName NVARCHAR(45)   NOT NULL,
   PRIMARY KEY (username)
) ;
CREATE TABLE product(
   ID nvarchar(45) not null,
   name nvarchar(45) not null,
   price nvarchar(45) not null,
   typeproduct nvarchar(45) not null,
   tenfile nvarchar(45) not null,
   thuocnhom nvarchar(45) not null,
   PRIMARY KEY (ID)
)
INSERT INTO users values ( 'sa','sa','phung', 'le dinh') ;
INSERT INTO users values ( 'sa@gmail.com','sa','phung', 'le dinh') ;
select * from users

INSERT INTO product values('1',N'Áo khoác nữ',N'250000 VNĐ','women','women1','women');
INSERT INTO product values('2',N'Áo khoác nữ',N'260000 VNĐ','women','women2','women');
INSERT INTO product values('3',N'Áo khoác nữ',N'280000 VNĐ','women','women3','women');
INSERT INTO product values('4',N'Áo khoác nữ',N'290000 VNĐ','women','women4','women');
INSERT INTO product values('5',N'Áo khoác nữ',N'350000 VNĐ','women','women5','women');
INSERT INTO product values('6',N'Áo khoác nữ',N'280000 VNĐ','women','women6','women');
INSERT INTO product values('7',N'Áo khoác nữ',N'270000 VNĐ','women','women7','women');
INSERT INTO product values('8',N'Áo khoác nữ',N'310000 VNĐ','women','women8','women');
INSERT INTO product values('9',N'Áo khoác nữ',N'400000 VNĐ','women','women9','women');

INSERT INTO product values('10',N'Áo khoác nam',N'250000 VNĐ','men','men1','men');
INSERT INTO product values('11',N'Áo khoác nam',N'260000 VNĐ','men','men2','men');
INSERT INTO product values('12',N'Áo khoác nam',N'280000 VNĐ','men','men3','men');
INSERT INTO product values('13',N'Áo khoác nam',N'290000 VNĐ','men','men4','men');
INSERT INTO product values('14',N'Áo khoác nam',N'350000 VNĐ','men','men5','men');
INSERT INTO product values('15',N'Áo khoác nam',N'280000 VNĐ','men','men6','men');
INSERT INTO product values('16',N'Áo khoác nam',N'270000 VNĐ','men','men7','men');
INSERT INTO product values('17',N'Áo khoác nam',N'310000 VNĐ','men','men8','men');
INSERT INTO product values('18',N'Áo khoác nam',N'400000 VNĐ','men','men9','men');

INSERT INTO product values('19',N'Áo khoác trẻ em',N'250000 VNĐ','kid','kid1','kid');
INSERT INTO product values('20',N'Áo khoác trẻ em',N'260000 VNĐ','kid','kid2','kid');
INSERT INTO product values('21',N'Áo khoác trẻ em',N'280000 VNĐ','kid','kid3','kid');
INSERT INTO product values('22',N'Áo khoác trẻ em',N'290000 VNĐ','kid','kid4','kid');
INSERT INTO product values('23',N'Áo khoác trẻ em',N'350000 VNĐ','kid','kid5','kid');
INSERT INTO product values('24',N'Áo khoác trẻ em',N'280000 VNĐ','kid','kid6','kid');
INSERT INTO product values('25',N'Áo khoác trẻ em',N'270000 VNĐ','kid','kid7','kid');
INSERT INTO product values('26',N'Áo khoác trẻ em',N'310000 VNĐ','kid','kid8','kid');
INSERT INTO product values('27',N'Áo khoác trẻ em',N'400000 VNĐ','kid','kid9','kid');

INSERT INTO product values('28',N'Áo khoác nữ',N'250000 VNĐ','aokhoacnu','aokhoacnu1','women');
INSERT INTO product values('29',N'Áo khoác nữ',N'260000 VNĐ','aokhoacnu','aokhoacnu2','women');
INSERT INTO product values('30',N'Áo khoác nữ',N'280000 VNĐ','aokhoacnu','aokhoacnu3','women');
INSERT INTO product values('31',N'Áo khoác nữ',N'290000 VNĐ','aokhoacnu','aokhoacnu4','women');
INSERT INTO product values('32',N'Áo khoác nữ',N'350000 VNĐ','aokhoacnu','aokhoacnu5','women');
INSERT INTO product values('33',N'Áo khoác nữ',N'280000 VNĐ','aokhoacnu','aokhoacnu6','women');
INSERT INTO product values('34',N'Áo khoác nữ',N'270000 VNĐ','aokhoacnu','aokhoacnu7','women');
INSERT INTO product values('35',N'Áo khoác nữ',N'310000 VNĐ','aokhoacnu','aokhoacnu8','women');
INSERT INTO product values('36',N'Áo khoác nữ',N'400000 VNĐ','aokhoacnu','aokhoacnu9','women');

INSERT INTO product values('37',N'Áo sơ mi nữ',N'250000 VNĐ','aosominu','aosominu1','women');
INSERT INTO product values('38',N'Áo sơ mi nữ',N'260000 VNĐ','aosominu','aosominu2','women');
INSERT INTO product values('39',N'Áo sơ mi nữ',N'280000 VNĐ','aosominu','aosominu3','women');
INSERT INTO product values('40',N'Áo sơ mi nữ',N'290000 VNĐ','aosominu','aosominu4','women');
INSERT INTO product values('41',N'Áo sơ mi nữ',N'350000 VNĐ','aosominu','aosominu5','women');
INSERT INTO product values('42',N'Áo sơ mi nữ',N'280000 VNĐ','aosominu','aosominu6','women');
INSERT INTO product values('43',N'Áo sơ mi nữ',N'270000 VNĐ','aosominu','aosominu7','women');
INSERT INTO product values('44',N'Áo sơ mi nữ',N'310000 VNĐ','aosominu','aosominu8','women');
INSERT INTO product values('45',N'Áo sơ mi nữ',N'400000 VNĐ','aosominu','aosominu9','women');

INSERT INTO product values('46',N'Giày cao gót',N'260000 VNĐ','giaycaogotnu','giaycaogotnu1','women');
INSERT INTO product values('47',N'Giày cao gót',N'280000 VNĐ','giaycaogotnu','giaycaogotnu2','women');
INSERT INTO product values('48',N'Giày cao gót',N'290000 VNĐ','giaycaogotnu','giaycaogotnu3','women');
INSERT INTO product values('49',N'Giày cao gót',N'350000 VNĐ','giaycaogotnu','giaycaogotnu4','women');
INSERT INTO product values('50',N'Giày cao gót',N'280000 VNĐ','giaycaogotnu','giaycaogotnu5','women');
INSERT INTO product values('51',N'Giày cao gót',N'270000 VNĐ','giaycaogotnu','giaycaogotnu6','women');
INSERT INTO product values('52',N'Giày cao gót',N'310000 VNĐ','giaycaogotnu','giaycaogotnu7','women');
INSERT INTO product values('53',N'Giày cao gót',N'400000 VNĐ','giaycaogotnu','giaycaogotnu8','women');
INSERT INTO product values('54',N'Giày cao gót',N'250000 VNĐ','giaycaogotnu','giaycaogotnu9','women');

INSERT INTO product values('55',N'Nội y',N'260000 VNĐ','noiynu','noiynu1','women');
INSERT INTO product values('56',N'Nội y',N'280000 VNĐ','noiynu','noiynu2','women');
INSERT INTO product values('57',N'Nội y',N'290000 VNĐ','noiynu','noiynu3','women');
INSERT INTO product values('58',N'Nội y',N'350000 VNĐ','noiynu','noiynu4','women');
INSERT INTO product values('59',N'Nội y',N'280000 VNĐ','noiynu','noiynu5','women');
INSERT INTO product values('60',N'Nội y',N'270000 VNĐ','noiynu','noiynu6','women');
INSERT INTO product values('61',N'Nội y',N'310000 VNĐ','noiynu','noiynu7','women');
INSERT INTO product values('62',N'Nội y',N'400000 VNĐ','noiynu','noiynu8','women');	
INSERT INTO product values('63',N'Nội y',N'250000 VNĐ','noiynu','noiynu9','women');

INSERT INTO product values('64',N'Quần jean',N'260000 VNĐ','quanjeannu','quanjeannu1','women');
INSERT INTO product values('65',N'Quần jean',N'280000 VNĐ','quanjeannu','quanjeannu2','women');
INSERT INTO product values('66',N'Quần jean',N'290000 VNĐ','quanjeannu','quanjeannu3','women');
INSERT INTO product values('67',N'Quần jean',N'350000 VNĐ','quanjeannu','quanjeannu4','women');
INSERT INTO product values('68',N'Quần jean',N'280000 VNĐ','quanjeannu','quanjeannu5','women');
INSERT INTO product values('69',N'Quần jean',N'270000 VNĐ','quanjeannu','quanjeannu6','women');
INSERT INTO product values('70',N'Quần jean',N'310000 VNĐ','quanjeannu','quanjeannu7','women');
INSERT INTO product values('71',N'Quần jean',N'400000 VNĐ','quanjeannu','quanjeannu8','women');
INSERT INTO product values('72',N'Quần jean',N'250000 VNĐ','quanjeannu','quanjeannu9','women');

INSERT INTO product values('73',N'Túi xách',N'260000 VNĐ','tuixachnu','tuixachnu1','women');
INSERT INTO product values('74',N'Túi xách',N'280000 VNĐ','tuixachnu','tuixachnu2','women');
INSERT INTO product values('75',N'Túi xách',N'290000 VNĐ','tuixachnu','tuixachnu3','women');
INSERT INTO product values('76',N'Túi xách',N'350000 VNĐ','tuixachnu','tuixachnu4','women');
INSERT INTO product values('77',N'Túi xách',N'280000 VNĐ','tuixachnu','tuixachnu5','women');
INSERT INTO product values('78',N'Túi xách',N'270000 VNĐ','tuixachnu','tuixachnu6','women');
INSERT INTO product values('79',N'Túi xách',N'310000 VNĐ','tuixachnu','tuixachnu7','women');
INSERT INTO product values('80',N'Túi xách',N'400000 VNĐ','tuixachnu','tuixachnu8','women');
INSERT INTO product values('81',N'Túi xách',N'250000 VNĐ','tuixachnu','tuixachnu9','women');

INSERT INTO product values('82',N'Váy ngắn',N'260000 VNĐ','vayngannu','vayngannu1','women');
INSERT INTO product values('83',N'Váy ngắn',N'280000 VNĐ','vayngannu','vayngannu2','women');
INSERT INTO product values('84',N'Váy ngắn',N'290000 VNĐ','vayngannu','vayngannu3','women');
INSERT INTO product values('85',N'Váy ngắn',N'350000 VNĐ','vayngannu','vayngannu4','women');
INSERT INTO product values('86',N'Váy ngắn',N'280000 VNĐ','vayngannu','vayngannu5','women');
INSERT INTO product values('87',N'Váy ngắn',N'270000 VNĐ','vayngannu','vayngannu6','women');
INSERT INTO product values('88',N'Váy ngắn',N'310000 VNĐ','vayngannu','vayngannu7','women');
INSERT INTO product values('89',N'Váy ngắn',N'400000 VNĐ','vayngannu','vayngannu8','women');
INSERT INTO product values('90',N'Váy ngắn',N'250000 VNĐ','vayngannu','vayngannu9','women');

INSERT INTO product values('91',N'Váy đầm',N'260000 VNĐ','vaydamnu','vaydamnu1','women');
INSERT INTO product values('92',N'Váy đầm',N'280000 VNĐ','vaydamnu','vaydamnu2','women');
INSERT INTO product values('93',N'Váy đầm',N'290000 VNĐ','vaydamnu','vaydamnu3','women');
INSERT INTO product values('94',N'Váy đầm',N'350000 VNĐ','vaydamnu','vaydamnu4','women');
INSERT INTO product values('95',N'Váy đầm',N'280000 VNĐ','vaydamnu','vaydamnu5','women');
INSERT INTO product values('96',N'Váy đầm',N'270000 VNĐ','vaydamnu','vaydamnu6','women');
INSERT INTO product values('97',N'Váy đầm',N'310000 VNĐ','vaydamnu','vaydamnu7','women');
INSERT INTO product values('98',N'Váy đầm',N'400000 VNĐ','vaydamnu','vaydamnu8','women');
INSERT INTO product values('99',N'Váy đầm',N'250000 VNĐ','vaydamnu','vaydamnu9','women');










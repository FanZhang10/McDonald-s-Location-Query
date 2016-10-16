
begin transaction;

drop table if exists stroe;
drop table if exists employee;
drop table if exists department;


--creating the Table called store
create table store(
	st_no integer NOT NULL primary key,
	name varchar(20) NOT NULL,
	address varchar(20) NOT NULL,
	phone_no varchar(20) NOT NULL,
	postcode varchar(20) NOT NULL
	);
--inserting data into the table store
insert into store values (1, 'McDonalds', '670 Bronson Ave', '613-234-1985', 'K1S 4E9');
insert into store values (2, 'McDonalds', '252 Elgin St', '613-236-6769', 'K2P 1L9');
insert into store values (3, 'McDonalds', '99 Rideau St', '613-241-4414', 'K1N 9L8');
insert into store values (4, 'McDonalds', '450 Terminal Ave', '613-789-7911', 'K1G 0Z3');
insert into store values (5, 'McDonalds', '30-1620 Scott St', '613-722-3996', 'K1Y 4S7');
insert into store values (6, 'McDonalds', '594 Montreal Rd', '613-741-0093', ' K1K 0T9');
insert into store values (7, 'McDonalds', '1661 Hunt Club Rd', '613-249-9028', 'K1T 3Z3');
insert into store values (8, 'McDonalds', '2170 Montreal Rd', '613-741-8578', ' K1J 1G4');
insert into store values (9, 'McDonalds', '2600 County Road 43', '613-258-6539', 'K0G 1T0');

--creating the Table called employee
create table employee (
	em_no integer NOT NULL primary key,
	d_no integer  NOT NULL,
	st_no integer  NOT NULL,
	name varchar(30) NOT NULL,
	sex varchar(10) NOT NULL, 
	age varchar(10) NOT NULL,
	address varchar(50) NOT NULL,
	date varchar(20) NOT NULL,
	wage varchar(20) NOT NULL,
	foreign key (st_no)  references store (st_no) on delete cascade
	);

--inserting data into table employee
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 001, 01, 1, 'Mats Sundin',   'Female', '19', '45 Elgin St.',      '2010','4000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 002, 02, 1, 'Jason Allison', 'Male',   '22', '46 Elgin St.',      '2012','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 003, 03, 1, 'Eric Lindros',  'Female', '26', '48 Elgin St.',	'2013','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 004, 01, 2, 'Bryan MacCabe', 'Male',   '30', '23 MacLeod St.',	'2012','4000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 005, 02, 2, 'Steve Nash',    'Female', '32', '1129 Otterson Dr.','2011','5000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 006, 03, 2, 'Michael Jordan','Male',   '33', '1223 Carling Ave.','2010','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 007, 01, 3, 'Roger Clemens', 'Male',   '21', '14 Hopewell Ave.',	'2012','5000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 008, 02, 3, 'Jack Morris',   'Male',   '40', '23 Prince of Wales Dr.','2012','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 009, 03, 3, 'Roberto Alomar','Female', '44', '55 Moodie Dr.',	'2012','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0010,01, 4, 'Joe Carter',    'Male',   '19', '18 Summerset East.','2013','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0011,02, 4, 'Wayne Grekzy',  'Female', '20', '45 Merviale.',	'2012','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0012,03, 4, 'George Bell',   'Male',   '30', '46 Colon By Dr.',	'2011','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0013,01, 5, 'Eric Staal',    'Male',   '33', '423 Riverside Drive.','2011','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0014,02, 5, 'Roy Halladay',  'Female', '43', '23 Ogilvie Rd.',	'2011','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0015,03, 5, 'Mario Lemieux', 'Male',   '33', '1129 Bank Dr.',	'2013','5000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0016,01, 6, 'Patrick Roy',   'Female', '45', '1223 Greenbank Ave.','2012','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0017,02, 6, 'Martin Brodeur','Female', '23', '14 Baseline Ave.',	'2012','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0018,03, 6, 'Homer Simpson', 'Male',   '34', '123 Prince of Wales Dr.','2011','4000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0019,01, 7, 'Bart Simpson',  'Female', '24', '155 Moodie Dr.',	'2010','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0020,02, 7, 'Joe Johnson',   'Male',   '35', '21 Sussex Dr.',	'2012','4000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0021,03, 7, 'Vince Carter',  'Female', '33', '45 Hunt Club St.',	'2013','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0024,01, 8, 'Bobby Hull',    'Male',   '44', '23 Wellington St.',	'2012','4000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0025,02, 8, 'Gordie Howe',   'Female', '32', '1129 Preston Dr.',	'2011','2000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0022,03, 8, 'Ed Belfour',    'Male',   '19', '46 Fisher St.',	'2010','5000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0023,01, 9, 'Tie Domi',      'Male',   '23', '89 Spidina Rd.',	'2012','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0033,02, 9, 'Bobby Orr',     'Female', '26', '48 Prince Edward St.','2010','3000');
insert into employee (em_no,d_no,st_no,name,sex,age,address,date,wage) values( 0035,02, 9, 'Kobe Bryan',    'Male',   '22', '23 Bayview St.',	'2010','5000');


--creating the table called department
create table department (
	d_no integer NOT NULL primary key,
	d_name varchar(30) NOT NULL,
	foreign key (d_no)  references employee(d_no) on delete cascade
	);

--inserting data into table department
insert into department values ( 01, 'Finance');
insert into department values ( 02, 'Customer Service');
insert into department values ( 03, 'Purchasing');


commit;
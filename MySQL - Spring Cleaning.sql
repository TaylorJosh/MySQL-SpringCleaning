/*First Step: Create a new database*/
CREATE DATABASE shirts_db;
use shirts_db;

/*Second Step: Create a new table*/
create table shirts(shirt_id int, article text, color text, shirt_size text, last_worn int)

/*Third Step: Populate the table with the following data*/
	insert into shirts value(1, 't-shirt',   'white', 'S', 10)	
	insert into shirts value(2, 't-shirt',   'green', 'S', 200)	
	insert into shirts value(3, 'polo shirt', 'black', 'M', 10)	
	insert into shirts value(4, 'tank top',   'blue', 'S', 50)	
	insert into shirts value(5, 't-shirt',    'pink', 'S', 0)	
	insert into shirts value(6, 'polo shirt', 'red', 'M', 5)	
	insert into shirts value(7, 'tank top',   'white', 'S', 200)	
	insert into shirts value(8, 'tank top',   'blue', 'M', 15)	

/* 4.1 Get all that data in there with a single line*/
select * from shirts c

/* 4.2 Add a new shirt, purple polo shirt, size M last worn 50 days ago*/
insert into shirts value(9, 'polo shirt', 'purple', 'M', 50)	

/* 4.3 SELECT all shirts but only print out article and color*/
select shirts.article, shirts.color from shirts 

/* 4.4 SELECT all medium shirts and print out everything but shirt_id*/
select shirts.article, shirts.color, shirts.shirt_size, shirts.last_worn from shirts where shirts.shirt_size = 'M' 

/* 4.5 Update all polo shirts Change their size to L*/
UPDATE shirts   SET shirts.shirt_size = 'L' WHERE article = 'polo shirt'	
select * from shirts 

/* 4.6 Update the shirt last worn 15 days ago change last_worn to zero ('0')*/
UPDATE shirts   SET shirts.last_worn = 0 WHERE shirts.last_worn = 15	
select * from shirts 

/* 4.7 Update all white shirts and change size to 'XS' and color to 'off white'*/
UPDATE shirts   SET shirts.color = 'off white', shirts.shirt_size = "XS" WHERE shirts.color = 'white'	
select * from shirts

/* 4.8 Delete all old shirts that were last worn 200 days ago*/
delete from shirts  where shirts.last_worn=200	
select * from shirts 

/* 4.9 Delete all tank tops.*/
delete from shirts  where shirts.article='tank top'	
select * from shirts

/* 4.10 Delete all shirts.*/
delete from shirts
select * from shirts

/*4.11 Drop the entire shirts table.*/ 
drop table shirts	0 row(s) affected	0.094 sec

create database week9;
\c week9
create table employee_001(eno integer, ename varchar(15), edept varchar(15));
insert into employee_001 values(1,'Narendiran','CSE');
insert into employee_001 values(2,'Abhishek','CSE');
insert into employee_001 values(3,'Abdul','ECE');
insert into employee_001 values(4,'Anirudh','ECE');
insert into employee_001 values(5,'Adhithya','BT');

create table department_001(dname varchar(15), totalnum integer, unique(dname));
insert into department_001 values('CSE',2);
insert into department_001 values('ECE',2);
insert into department_001 values('BT',1);

CREATE FUNCTION increment_totalnum()
RETURNS TRIGGER
AS
$$
BEGIN
UPDATE department_001 SET totalnum = totalnum + 1 WHERE dname = NEW.edept;
RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE FUNCTION decrement_totalnum()
RETURNS TRIGGER
AS
$$
BEGIN
UPDATE department_001 SET totalnum = totalnum - 1 WHERE dname = OLD.edept;
RETURN OLD;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER inc_totalnum AFTER INSERT ON employee_001
FOR EACH ROW
EXECUTE PROCEDURE increment_totalnum();

CREATE TRIGGER dec_totalnum BEFORE DELETE ON employee_001
FOR EACH ROW
EXECUTE PROCEDURE decrement_totalnum();

select * from employee_001;

insert into employee_001 values(6,'Adithya','ECE');
select * from department_001;

delete from employee_001 where eno = 6;
select * from department_001;


create table order_item_001(item_id INT NOT NULL ,item_name VARCHAR(40) NOT NULL, quantity DECIMAL(8,3), price INT NOT NULL, PRIMARY KEY (item_id));
create table order_summary_001(num_items INT DEFAULT 0,tot_price DECIMAL(7,2) DEFAULT 0.0);
insert into order_summary_001 VALUES (0,0);

create function insert_order()
RETURNS trigger
as
$$
BEGIN
UPDATE order_summary_001 SET num_items = num_items + NEW.quantity;
UPDATE order_summary_001 SET tot_price = tot_price + NEW.price*NEW.quantity;
RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE FUNCTION delete_order()
RETURNS trigger
as
$$
BEGIN
UPDATE order_summary_001 SET num_items = num_items - OLD.quantity;
UPDATE order_summary_001 SET tot_price = tot_price - OLD.price*OLD.quantity; RETURN OLD;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER insert_item AFTER INSERT ON order_item_001
FOR EACH ROW
EXECUTE PROCEDURE insert_order();

CREATE TRIGGER delete_item BEFORE DELETE ON order_item_001
FOR EACH ROW
EXECUTE PROCEDURE delete_order();

insert into order_item_001 values(1,'maggi',2,40);
select * from order_summary_001;

insert into order_item_001 values(2,'Cup Noodles',5,50);
select * from order_summary_001;

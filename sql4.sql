create table products as select * from team9_shobha.product

select p_name
from products
where p_price >200000;

product na,e whch cost more than onelakh and product nme begins with n or p

select p_name
from products
where p_price > 100000 and p_name like 'N%' or p_name like 'P%';


select * from products


find pro name which price betw onelak to 3lak


select p_price
from products
where p_price between 100000 and 300000;


find all the product names which is costlier than indica


select p_name
from products
where p_price > (select p_price
from products 
where p_name = 'INDICA');

We want to see the price of Sumo			


select p_price
from products
where p_name = 'NANO';

Find all the products where name starts with B or P and price between 30000 and 90000								


select p_name
from products
where p_name like 'B%' or p_name like 'p%' and p_price between 30000 and 90000;


Find the manufacturer who does not have any products

select m_name
from manufactures
where m_code not in (
select distinct m_code
from products);


select * from manufactures



display which product has highest cost


select p_name
from products
where p_price =(select max(p_price)
from products);



Display count of product belong to "TATA"

select count(p_id) as total_products
from products
where m_code = (select m_code
from manufactures
where m_name = 'TATA')

Display Product name which costs similar to 'Nano'


select p_name 
from products 
where p_price = (select p_price
                 from products
                 where p_name = 'NANO') 
                 and p_name != 'NANO';


COMMIT;

Diplay the product name as lowest cost				

select p_name
from products
where p_price = (select min(p_price)
                 from products);


Display product name belong to bajaj

select p_name 
from products 
where m_code = (select m_code 
                from manufactures
                where m_name = 'BAJAJ');
                
                
Display the product name belongs to "BAJAJ" and the price is greater than 100000

select p_name 
from products 
where p_price >= 100000 and m_code  = (select m_code 
                from manufactures
                where m_name = 'BAJAJ');


--Display the product name belongs to TATA and product name starts with 'N' or "I'

select p_name 
from products 
where p_name like 'N%' or P_NAME like 'I%' and m_code  = (select m_code 
                from manufactures
                where m_name = 'TATA');
                
                
--15	Display the Manufacture name of NANO--

select m_name 
from manufactures 
where M_CODE = (select M_CODE 
                from products 
                where P_NAME = 'NANO');
                
commit;

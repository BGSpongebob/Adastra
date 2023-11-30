
--------------------------------------------------------
--  DDL for Procedure ART_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ART_INS" -- ARTist_INSert
(artist_name artists.artist_name%type)
as
begin
 insert into 
artists(artist_name)
 values(artist_name);
end ART_INS;

/
--------------------------------------------------------
--  DDL for Procedure CLI_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CLI_INS" 
(first_name clients.first_name%type,
 middle_name clients.middle_name%type,
 last_name clients.last_name%type,
 phone clients.phone%type,
 email clients.email%type)
as
begin
 insert into 
clients(first_name,middle_name,last_name,phone,email)
 values(first_name,middle_name,last_name,phone,email);
end CLI_INS;

/
--------------------------------------------------------
--  DDL for Procedure EMP_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMP_INS" 
(first_name employees.first_name%type,
 middle_name employees.middle_name%type,
 last_name employees.last_name%type,
 phone employees.phone%type,
 pos_id employees.pos_id%type)
as
begin
 insert into 
employees(first_name,middle_name,last_name,phone,pos_id)
 values(first_name,middle_name,last_name,phone,pos_id);
end EMP_INS;

/

-- exec emp_ins('fname_test','mname_test','lname_test','phone_test',1); примерно използване

--------------------------------------------------------
--  DDL for Procedure LAB_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "LAB_INS" 
(label_name labels.label_name%type)
as
begin
 insert into 
labels(label_name)
 values(label_name);
end LAB_INS;

/
--------------------------------------------------------
--  DDL for Procedure PRO_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRO_INS" 
(prod_name products.prod_name%type,
 price products.price%type,
 av_quantity products.av_quantity%type,
 year_of_release products.year_of_release%type,
 genre_id products.genre_id%type,
 artist_id products.artist_id%type,
 label_id products.label_id%type,
 type_id products.type_id%type)
as
begin
 insert into 
products(prod_name,price,av_quantity,year_of_release,genre_id,artist_id,label_id,type_id)
 values(prod_name,price,av_quantity,year_of_release,genre_id,artist_id,label_id,type_id);
end PRO_INS;

/
--------------------------------------------------------
--  DDL for Procedure SAL_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SAL_INS" 
(sale_date sales.sale_date%type,
 client_id sales.client_id%type,
 empl_id sales.empl_id%type)
as
begin
 insert into 
sales(sale_date,client_id,empl_id)
 values(sale_date,client_id,empl_id);
end SAL_INS;

/

-- exec sal_ins(TO_DATE('17/12/2015', 'DD/MM/YYYY'),1,1); примерно използване

--------------------------------------------------------
--  DDL for Procedure SAL_PRO_INS
--------------------------------------------------------
set define off;

CREATE OR REPLACE PROCEDURE "SAL_PRO_INS" 
(sale_quantity sales_products.sale_quantity%type,
 sale_id sales_products.sale_id%type,
 product_id sales_products.prod_id%type)
as
   available_quantity products.av_quantity%type;
begin
   SELECT av_quantity
   INTO available_quantity
   FROM products
   WHERE prod_id = product_id;
   -- Проверяваме, дали има достатъчно продукт.
   if available_quantity >= sale_quantity then
      UPDATE products
      SET av_quantity = av_quantity - sale_quantity
      WHERE prod_id = product_id;
      
      INSERT INTO sales_products(sale_quantity, sale_id, prod_id)
      VALUES (sale_quantity, sale_id, product_id);
   else
      DBMS_OUTPUT.PUT_LINE('Insufficient available quantity. Sale not processed.');
   end if;
end SAL_PRO_INS;

/

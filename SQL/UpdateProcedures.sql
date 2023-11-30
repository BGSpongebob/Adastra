--------------------------------------------------------
--  DDL for Procedure ART_UPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ART_UPD" -- ARTist_UPDate
(ID integer,
 n_artist_name artists.artist_name%type)
as
begin
 update artists 
 set artist_name = n_artist_name
 where artist_id = ID;
end ART_UPD;

/
--------------------------------------------------------
--  DDL for Procedure CLI_UPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CLI_UPD" 
(ID integer,
 n_first_name clients.first_name%type,
 n_middle_name clients.middle_name%type,
 n_last_name clients.last_name%type,
 n_phone clients.phone%type,
 n_email clients.email%type)
as
begin
 update clients 
 set first_name = n_first_name,
	 middle_name = n_middle_name,
	 last_name = n_last_name,
	 phone = n_phone,
	 email = n_email
 where client_id = ID;
end CLI_UPD;

/
--------------------------------------------------------
--  DDL for Procedure EMP_UPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMP_UPD" 
(ID integer,
 n_first_name employees.first_name%type,
 n_middle_name employees.middle_name%type,
 n_last_name employees.last_name%type,
 n_phone employees.phone%type,
 n_pos_id employees.pos_id%type)
as
begin
 update employees 
 set first_name = n_first_name,
	 middle_name = n_middle_name,
	 last_name = n_last_name,
	 phone = n_phone,
	 pos_id = n_pos_id
 where empl_id = ID;
end EMP_UPD;

/
--------------------------------------------------------
--  DDL for Procedure LAB_UPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "LAB_UPD" 
(ID integer,
 n_label_name labels.label_name%type)
as
begin
 update labels 
 set label_name = n_label_name
 where label_id = ID;
end LAB_UPD;

/
--------------------------------------------------------
--  DDL for Procedure PRO_UPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRO_UPD" 
(ID integer,
 n_prod_name products.prod_name%type,
 n_price products.price%type,
 n_av_quantity products.av_quantity%type,
 n_year_of_release products.year_of_release%type,
 n_genre_id products.genre_id%type,
 n_artist_id products.artist_id%type,
 n_label_id products.label_id%type,
 n_type_id products.type_id%type)
as
begin
 update products 
 set prod_name = n_prod_name,
	 price = n_price,
	 av_quantity = n_av_quantity,
	 year_of_release = n_year_of_release,
	 genre_id = n_genre_id,
	 artist_id = n_artist_id,
	 label_id = n_label_id,
	 type_id = n_type_id
 where prod_id = ID;
end PRO_UPD;

/
--------------------------------------------------------
--  DDL for Procedure SAL_PRO_UPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SAL_PRO_UPD" 
(ID integer,
 n_sale_quantity sales_products.sale_quantity%type,
 n_sale_id sales_products.sale_id%type,
 n_prod_id sales_products.prod_id%type)
as
begin
 update sales_products 
 set sale_quantity = n_sale_quantity,
	 sale_id = n_sale_id,
	 prod_id = n_prod_id
 where sale_prod_id = ID;
end SAL_PRO_UPD;

/
--------------------------------------------------------
--  DDL for Procedure SAL_UPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SAL_UPD" 
(ID integer,
 n_sale_date sales.sale_date%type,
 n_client_id sales.client_id%type,
 n_empl_id sales.empl_id%type)
as
begin
 update sales 
 set sale_date = n_sale_date,
	 client_id = n_client_id,
	 empl_id = n_empl_id
 where sale_id = ID;
end SAL_UPD;

/

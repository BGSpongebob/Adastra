--да се изпълняват по отделно

 --------------------------------------------------------
--  DDL for Trigger AR_TR_AI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AR_TR_AI" -- ARtist_TRigger_AutoIncrement
before insert on artists
for each row
 WHEN (NEW.artist_id is null) begin
 :NEW.artist_id := ARTIST_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ADMIN"."AR_TR_AI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CL_TR_AI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."CL_TR_AI" 
before insert on clients
for each row
 WHEN (NEW.client_id is null) begin
 :NEW.client_id := CLIENT_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ADMIN"."CL_TR_AI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EM_TR_AI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."EM_TR_AI" 
before insert on employees
for each row
 WHEN (NEW.empl_id is null) begin
 :NEW.empl_id := EMPLOYEE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ADMIN"."EM_TR_AI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LA_TR_AI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."LA_TR_AI" 
before insert on labels
for each row
 WHEN (NEW.label_id is null) begin
 :NEW.label_id := LABEL_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ADMIN"."LA_TR_AI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PR_TR_AI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."PR_TR_AI" 
before insert on products
for each row
 WHEN (NEW.prod_id is null) begin
 :NEW.prod_id := PRODUCT_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ADMIN"."PR_TR_AI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SA_TR_AI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."SA_TR_AI" 
before insert on sales
for each row
 WHEN (NEW.sale_id is null) begin
 :NEW.sale_id := SALE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ADMIN"."SA_TR_AI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SAPR_TR_AI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."SAPR_TR_AI" 
before insert on sales_products
for each row
 WHEN (NEW.sale_prod_id is null) begin
 :NEW.sale_prod_id := SALE_PRODUCT_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ADMIN"."SAPR_TR_AI" ENABLE;

-- Резултатите от справките се извеждат в dbms конзолата

-- Да се направи справка за брой продажби на служител, подредени по дата.
create or replace PROCEDURE FIND_EMPLOYEE_SALES (
   firstName  EMPLOYEES.FIRST_NAME%TYPE,
   lastName   EMPLOYEES.LAST_NAME%TYPE
) IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Sales of employee ' || firstName || ' ' || lastName || ', ordered by date:'||CHR(10));
   DBMS_OUTPUT.PUT_LINE(
      RPAD('First Name', 16) || ' |' ||
      RPAD('Last Name', 16) || ' |' ||
      RPAD('SaleID', 6) || ' |' ||
      RPAD('Date', 4)
   );
   FOR cust_record IN (
      SELECT e.FIRST_NAME, e.LAST_NAME, s.SALE_ID, s.SALE_DATE
      FROM SALES s
      JOIN EMPLOYEES e ON s.EMPL_ID = e.EMPL_ID
      WHERE e.FIRST_NAME LIKE firstName AND e.LAST_NAME LIKE lastName
      ORDER BY s.SALE_DATE DESC
   ) 
   LOOP    
      DBMS_OUTPUT.PUT_LINE(
         RPAD(cust_record.FIRST_NAME, 16) || ' |' ||
         RPAD(cust_record.LAST_NAME, 16) || ' |' ||
         RPAD(cust_record.SALE_ID, 6) || ' |' ||
         TO_CHAR(cust_record.SALE_DATE)
      );
   END LOOP;
END FIND_EMPLOYEE_SALES;

--Да се направи справка за последните 5 продажби на стоки, подредени по служител.
create or replace PROCEDURE FIND_LATEST_SALES 
IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Latest 5 Sales, ordered by employee:'||CHR(10));
   DBMS_OUTPUT.PUT_LINE(
      RPAD('SaleID', 6) || ' |' ||
      RPAD('First Name', 16) || ' |' ||
      RPAD('Last Name', 16) || ' |' ||
      RPAD('Date', 4)
   );
   FOR cust_record IN (
      SELECT * FROM (
         SELECT s.SALE_ID, e.FIRST_NAME, e.LAST_NAME, s.SALE_DATE, e.EMPL_ID
         FROM SALES s
         JOIN EMPLOYEES e ON s.EMPL_ID = e.EMPL_ID
         JOIN SALES_PRODUCTS sp ON s.SALE_ID = sp.SALE_ID
         ORDER BY s.SALE_DATE DESC, e.EMPL_ID
      ) WHERE ROWNUM <= 5
   ) 
   LOOP    
      DBMS_OUTPUT.PUT_LINE(
         RPAD(cust_record.SALE_ID, 6) || ' |' ||
         RPAD(cust_record.FIRST_NAME, 16) || ' |' ||
         RPAD(cust_record.LAST_NAME, 16) || ' |' ||
         TO_CHAR(cust_record.SALE_DATE)
      );
   END LOOP;
END FIND_LATEST_SALES;

--Да се направи справка за закупени стоки от клиент, подредени по вид и дата.
create or replace PROCEDURE FIND_CLIENT_PRODUCTS (
   firstName  CLIENTS.FIRST_NAME%TYPE,
   lastName   CLIENTS.LAST_NAME%TYPE
) IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Client sales report for: ' || firstName || ' ' || lastName || ', ordered by type and date:' || CHR(10));
   DBMS_OUTPUT.PUT_LINE(
      RPAD('First Name', 16) || ' |' ||
      RPAD('Last Name', 16) || ' |' ||
      RPAD('Product', 32) || ' |' ||
      RPAD('Quantity', 8) || ' |' ||
      RPAD('Price', 8) || ' |' ||
      RPAD('Type', 7) || ' |' ||
      RPAD('SaleID', 6) || ' |' ||
      RPAD('Date', 4)
   );
   FOR cust_record IN (
      SELECT c.FIRST_NAME, c.LAST_NAME, p.PROD_NAME, sp.SALE_QUANTITY, p.PRICE, t.TYPE_NAME, s.SALE_DATE, s.SALE_ID
      FROM SALES s
      JOIN CLIENTS c ON s.CLIENT_ID = c.CLIENT_ID
      JOIN SALES_PRODUCTS sp ON s.SALE_ID = sp.SALE_ID
      JOIN PRODUCTS p ON sp.PROD_ID = p.PROD_ID
      JOIN TYPES t ON p.TYPE_ID = t.TYPE_ID
      WHERE c.FIRST_NAME LIKE firstName AND c.LAST_NAME LIKE lastName
      ORDER BY t.TYPE_NAME, s.SALE_DATE DESC
   ) 
   LOOP    
      DBMS_OUTPUT.PUT_LINE(
         RPAD(cust_record.FIRST_NAME, 16) || ' |' ||
         RPAD(cust_record.LAST_NAME, 16) || ' |' ||
         RPAD(cust_record.PROD_NAME, 32) || ' |' ||
         RPAD(cust_record.SALE_QUANTITY, 8) || ' |' ||
         RPAD(cust_record.PRICE, 8) || ' |' ||
         RPAD(cust_record.TYPE_NAME, 7) || ' |' ||
         RPAD(cust_record.SALE_ID, 6) || ' |' ||
         TO_CHAR(cust_record.SALE_DATE)
      );
   END LOOP;
END FIND_CLIENT_PRODUCTS;

-- Справка, извeждаща всички закупени продукти в дадена продажба.
create or replace PROCEDURE FIND_SALE_PRODUCTS (
   saleID SALES.SALE_ID%TYPE
) IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Products in sale ID: ' || saleID || CHR(10));
   DBMS_OUTPUT.PUT_LINE(
      RPAD('SaleID', 6) || ' |' ||
      RPAD('Product', 32) || ' |' ||
      RPAD('Quantity', 8) || ' |' ||
      RPAD('Price', 8) || ' |' ||
      RPAD('Type', 7) || ' |' ||
      RPAD('Date', 4)
   );
   FOR cust_record IN (
      SELECT s.SALE_ID, p.PROD_NAME, sp.SALE_QUANTITY, p.PRICE, t.TYPE_NAME, s.SALE_DATE
      FROM SALES s
      JOIN SALES_PRODUCTS sp ON s.SALE_ID = sp.SALE_ID
      JOIN PRODUCTS p ON sp.PROD_ID = p.PROD_ID
      JOIN TYPES t ON p.TYPE_ID = t.TYPE_ID
      WHERE s.SALE_ID LIKE saleID
   ) 
   LOOP    
      DBMS_OUTPUT.PUT_LINE(
         RPAD(cust_record.SALE_ID, 6) || ' |' ||
         RPAD(cust_record.PROD_NAME, 32) || ' |' ||
         RPAD(cust_record.SALE_QUANTITY, 8) || ' |' ||
         RPAD(cust_record.PRICE, 8) || ' |' ||
         RPAD(cust_record.TYPE_NAME, 7) || ' |' ||
         TO_CHAR(cust_record.SALE_DATE)
      );
   END LOOP;
END FIND_SALE_PRODUCTS;



create or replace PROCEDURE return_sale(return_sale_id sales.sale_id%TYPE)
AS
   product_id sales_products.prod_id%TYPE;
   quantity sales_products.sale_quantity%TYPE;
BEGIN
   FOR rec IN (SELECT prod_id, sale_quantity
               FROM sales_products
               WHERE sale_id = return_sale_id)
   LOOP
      product_id := rec.prod_id;
      quantity := rec.sale_quantity;
      -- Възстановяваме количествата на продуктите
      UPDATE products
      SET av_quantity = av_quantity + quantity
      WHERE prod_id = product_id;
   END LOOP;
   
   -- Премахваме редовете от таблица Sales_Products
   DELETE FROM sales_products
   WHERE sale_id = return_sale_id;
   -- Премахваме реда от таблица Sales
   DELETE FROM sales
   WHERE sale_id = return_sale_id;
END return_sale;
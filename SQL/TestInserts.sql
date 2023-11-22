-- файл за бързо запълване на базата данни (трябва да се изпълняват в дадената поредност и да има имплементирани всички procedures, triggers & sequences, преди да се правят тези инсерти)

-- positions
INSERT INTO positions values (1,'default');
INSERT INTO positions values (2,'administrator');

-- types
INSERT INTO types values (1,'CD');
INSERT INTO types values (2,'digital');
INSERT INTO types values (3,'vinyl');

-- genres
INSERT INTO genres values (1,'rock');
INSERT INTO genres values (2,'pop');
INSERT INTO genres values (3,'hip-hop');
INSERT INTO genres values (4,'jazz');
INSERT INTO genres values (5,'country');
INSERT INTO genres values (6,'classical');
INSERT INTO genres values (7,'techno');
INSERT INTO genres values (8,'blues');
INSERT INTO genres values (9,'metal');

-- clients	
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Bozhidar','Dimitrov','Vitanov','+359-988-5555-45','Bozhidar.Dimitrov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Nedelcho','Petrov','Velikov','+359-485-5533-12','Nedelcho.Petrov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Tzako','Ivanov','Zhivkov','+359-885-5511-52','Tzako.Ivanov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Atanas','Georgiev','Ivanov','+359-885-5574-99','Atanas.Georgiev@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Naso','Vasilev','Alexandrov','+359-988-5551-39','Naso.Vasilev@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Kupen','Nikolov','Todorov','+359-988-5556-96','Kupen.Nikolov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Radomir','Kirov','Popov','+359-485-5510-35','Radomir.Kirov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Radul','Stoyanov','Bunev','+359-485-5593-20','Radul.Stoyanov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Kaloyan','Marinov','Dachev','+359-895-5523-74','Kaloyan.Marinov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Kiril','Todorov','Iliev','+359-988-5558-10','Kiril.Todorov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Hristo','Hristov','Yankov','+359-204-3170-91','Hristo.Hristov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Grudi','Yordanov','Savov','+359-259-5903-56','Grudi.Yordanov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Boyko','Simeonov','Kirilov','+359-248-7280-94','Boyko.Simeonov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Manush','Yankov','Pironev','+359-222-9895-48','Manush.Yankov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Lyobomir','Stanimirov','Rysinov','+359-209-5098-32','Lyobomir.Stanimirov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Anghel','Zahariev','Tsankov','+359-272-2321-99','Anghel.Zahariev@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Zitko','Borisov','Vanko','+359-208-9905-97','Zitko.Borisov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Ivan','Atanasov','Dinev','+359-278-0877-13','Ivan.Atanasov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Angel','Velikov','Petkov','+359-245-6916-34','Angel.Velikov@gmail.com');
Insert into CLIENTS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,EMAIL) values ('Nedyalko','Bogdanov','Venev','+359-289-2100-25','Nedyalko.Bogdanov@gmail.com');

-- employees
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Lilyan','Dimitrov','Dobrev','+359-485-5564-00',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Gregor','Vasilev','Kostov','+359-875-5596-65',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Lubomir','Petrov','Nakov','+359-485-5580-06',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Grudi','Yordanov','Romanov','+359-988-5552-38',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Grudi','Stoyanov','Atanasov','+359-875-5518-01',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Lilyan','Marinov','Dimitrov','+359-988-5552-26',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Yakov','Ivanov','Romanov','+359-895-5594-68',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Radko','Todorov','Lukanov','+359-988-5557-20',2);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Nikolai','Nikolov','Manev','+359-895-5597-44',1);
Insert into EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE,POS_ID) values ('Ludmil','Georgiev','Bachev','+359-988-5559-85',1);

-- labels
Insert into LABELS (label_name) values ('Virginia Records');
Insert into LABELS (label_name) values ('Amazon Studios');
Insert into LABELS (label_name) values ('Studentska 14 Productions');
Insert into LABELS (label_name) values ('MVP');
Insert into LABELS (label_name) values ('jojo`s');

-- artists
Insert into ARTISTS (artist_name) values ('Orlin Goranov');
Insert into ARTISTS (artist_name) values ('Drake');
Insert into ARTISTS (artist_name) values ('Katy Perry');
Insert into ARTISTS (artist_name) values ('Santa Claus');
Insert into ARTISTS (artist_name) values ('Boga42');
Insert into ARTISTS (artist_name) values ('MC Momi');
Insert into ARTISTS (artist_name) values ('Dirigenta');
Insert into ARTISTS (artist_name) values ('Rado Rumenov');
Insert into ARTISTS (artist_name) values ('Toshko Kukata');
Insert into ARTISTS (artist_name) values ('Ilian40');

-- products
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Hakuna Matata',20.00,100,1998,1,1,1,1);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Love is in the Air',22.00,100,2001,2,2,2,1);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('I Love',23.00,100,2013,3,3,3,1);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Matraka',25.00,100,2022,4,4,4,2);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Carolina',31.50,100,2023,5,5,5,2);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Fly',15.50,100,1999,6,6,1,2);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Do It',11.50,100,1990,7,7,2,3);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Make Me',15.50,100,2019,8,8,3,3);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('When Did This Happen?',10.99,100,2018,9,9,4,3);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('X Files',21.99,100,2022,1,10,5,1);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Zuzi',22.99,100,2022,2,1,1,1);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Palm Beach',6.99,100,1998,3,2,2,2);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Make it Rain',7.40,100,2003,4,3,3,2);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Mr. Producer',2.40,100,2010,5,4,4,3);
Insert into PRODUCTS (PROD_NAME,PRICE,AV_QUANTITY,YEAR_OF_RELEASE,GENRE_ID,ARTIST_ID,LABEL_ID,TYPE_ID) values ('Malka Doza Levski',50.40,100,2011,6,5,5,3);

-- sales
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('13-APR-21','DD-MON-RR'),1,1);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('10-JAN-22','DD-MON-RR'),2,2);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('12-AUG-22','DD-MON-RR'),3,3);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('20-AUG-16','DD-MON-RR'),4,5);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('31-JUL-17','DD-MON-RR'),5,6);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('17-JUL-20','DD-MON-RR'),6,8);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('22-JAN-21','DD-MON-RR'),7,3);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('13-JUN-13','DD-MON-RR'),8,1);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('26-SEP-13','DD-MON-RR'),9,9);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('13-MAR-14','DD-MON-RR'),10,10);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('21-MAY-14','DD-MON-RR'),11,10);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('30-AUG-14','DD-MON-RR'),12,7);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('24-MAR-15','DD-MON-RR'),13,1);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('06-MAR-16','DD-MON-RR'),14,10);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('28-SEP-16','DD-MON-RR'),15,5);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('11-MAY-17','DD-MON-RR'),16,6);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('28-OCT-17','DD-MON-RR'),17,8);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('09-AUG-18','DD-MON-RR'),18,10);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('23-APR-19','DD-MON-RR'),19,9);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('12-JUN-21','DD-MON-RR'),20,5);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('26-SEP-13','DD-MON-RR'),1,3);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('13-MAR-14','DD-MON-RR'),2,3);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('21-MAY-19','DD-MON-RR'),3,4);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('30-AUG-14','DD-MON-RR'),4,1);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('24-MAR-15','DD-MON-RR'),5,7);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('06-MAR-16','DD-MON-RR'),6,7);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('28-SEP-16','DD-MON-RR'),7,4);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('11-MAY-17','DD-MON-RR'),8,8);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('28-OCT-17','DD-MON-RR'),9,8);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('09-AUG-18','DD-MON-RR'),10,9);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('13-APR-22','DD-MON-RR'),1,1);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('10-JAN-12','DD-MON-RR'),2,2);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('12-AUG-18','DD-MON-RR'),3,3);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('20-AUG-20','DD-MON-RR'),4,5);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('31-JUL-03','DD-MON-RR'),5,6);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('17-JUL-09','DD-MON-RR'),6,8);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('22-JAN-10','DD-MON-RR'),7,3);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('13-JUN-18','DD-MON-RR'),8,1);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('26-SEP-19','DD-MON-RR'),9,9);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('13-MAR-17','DD-MON-RR'),10,10);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('21-MAY-08','DD-MON-RR'),11,10);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('30-AUG-08','DD-MON-RR'),12,7);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('24-MAR-11','DD-MON-RR'),13,1);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('06-MAR-12','DD-MON-RR'),14,10);
Insert into SALES (SALE_DATE,CLIENT_ID,EMPL_ID) values (to_date('28-SEP-15','DD-MON-RR'),15,5);

-- sales_products
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,1,1);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,2,2);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,3,3);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (2,4,4);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,5,5);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,6,6);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,7,7);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (3,8,8);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,9,9);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,10,10);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,11,11);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,12,12);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,13,13);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,14,14);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,15,15);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,16,1);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,17,2);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,18,3);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,19,4);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (2,20,5);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,21,6);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,22,7);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,23,8);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,24,9);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,25,10);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,26,11);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,27,12);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,28,13);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,29,14);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,30,15);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,31,1);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,32,2);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,33,3);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,34,4);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,35,5);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,36,6);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,36,7);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (5,38,8);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,39,9);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,40,10);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,41,11);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,42,12);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,43,13);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,44,14);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,45,15);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,15,1);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,14,2);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (4,13,3);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,12,4);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,11,5);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (3,10,6);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,9,7);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,8,8);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,7,9);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,6,10);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,5,11);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,4,12);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (5,3,13);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,2,14);
Insert into SALES_PRODUCTS (SALE_QUANTITY,SALE_ID,PROD_ID) values (1,1,15);
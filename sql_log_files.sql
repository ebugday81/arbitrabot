/*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	update binanceeur
	   set unix_time = lpad(unix_time, 10, '0')
	
2022-12-22 02:44:04.491 CET [34251] ERROR:  function length(bigint) does not exist at character 179
2022-12-22 02:44:04.491 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:44:04.491 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	update binanceeur
	   set unix_time = lpad(unix_time, 10, '0')
	   where length(unix_time) > 9;
	
2022-12-22 02:44:51.030 CET [34251] ERROR:  function length(bigint) does not exist at character 177
2022-12-22 02:44:51.030 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:44:51.030 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	update binanceeur
	   set unix_time = lpad(unix_time, 10, 0)
	   where length(unix_time) > 9;
	
2022-12-22 02:52:07.260 CET [34251] ERROR:  syntax error at or near "table" at character 213
2022-12-22 02:52:07.260 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE table SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(count) - 3);
2022-12-22 02:52:14.344 CET [34251] ERROR:  column "count" does not exist at character 276
2022-12-22 02:52:14.344 CET [34251] HINT:  Perhaps you meant to reference the column "binanceeur.amount".
2022-12-22 02:52:14.344 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(count) - 3);
2022-12-22 02:52:42.524 CET [34251] ERROR:  function char_length(bigint) does not exist at character 264
2022-12-22 02:52:42.524 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:52:42.524 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(unix_time) - 3);
2022-12-22 02:53:44.329 CET [34251] ERROR:  function length(bigint) does not exist at character 264
2022-12-22 02:53:44.329 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:53:44.329 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, LENGTH(unix_time) - 3);
2022-12-22 02:53:56.580 CET [34251] ERROR:  function substring(bigint, integer, integer) does not exist at character 240
2022-12-22 02:53:56.580 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:53:56.580 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, 10);
2022-12-22 03:02:15.934 CET [36084] ERROR:  numeric field overflow
2022-12-22 03:02:15.934 CET [36084] DETAIL:  A field with precision 10, scale 0 must round to an absolute value less than 10^10.
2022-12-22 03:02:15.934 CET [36084] STATEMENT:  ALTER TABLE public.binanceeur
	    ALTER COLUMN unix_time TYPE numeric(10);
2022-12-22 03:03:01.237 CET [36084] ERROR:  numeric field overflow
2022-12-22 03:03:01.237 CET [36084] DETAIL:  A field with precision 10, scale 1 must round to an absolute value less than 10^9.
2022-12-22 03:03:01.237 CET [36084] STATEMENT:  ALTER TABLE public.binanceeur
	    ALTER COLUMN unix_time TYPE numeric(10, 1);
2022-12-22 03:05:37.781 CET [34251] ERROR:  function left(bigint, integer) does not exist at character 240
2022-12-22 03:05:37.781 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 03:05:37.781 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
2022-12-22 03:07:03.837 CET [35779] LOG:  checkpoint starting: time
2022-12-22 03:11:33.135 CET [35779] LOG:  checkpoint complete: wrote 4216 buffers (25.7%); 0 WAL file(s) added, 0 removed, 5 recycled; write=269.218 s, sync=0.002 s, total=269.341 s; sync files=28, longest=0.002 s, average=0.001 s; distance=83123 kB, estimate=493720 kB
2022-12-22 03:14:30.326 CET [34251] ERROR:  relation "binance" does not exist
2022-12-22 03:14:30.326 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	alter table binance alter column unix_time type varchar using def::varchar;
	
2022-12-22 03:14:36.038 CET [34251] ERROR:  column "def" does not exist at character 390
2022-12-22 03:14:36.038 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	alter table binanceeur alter column unix_time type varchar using def::varchar;
	
2022-12-22 03:15:37.441 CET [35779] LOG:  checkpoint starting: wal
2022-12-22 03:18:26.492 CET [34251] ERROR:  syntax error at or near "select" at character 48
2022-12-22 03:18:26.492 CET [34251] STATEMENT:  SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	/*alter table binanceeur alter column unix_time type varchar using unix_time::varchar;*/
	
2022-12-22 03:20:07.208 CET [35779] LOG:  checkpoint complete: wrote 2073 buffers (12.7%); 0 WAL file(s) added, 0 removed, 33 recycled; write=269.654 s, sync=0.015 s, total=269.768 s; sync files=19, longest=0.013 s, average=0.001 s; distance=540572 kB, estimate=540572 kB
2022-12-22 03:21:05.021 CET [34251] ERROR:  column "count" does not exist at character 400
2022-12-22 03:21:05.021 CET [34251] HINT:  Perhaps you meant to reference the column "binanceeur.amount".
2022-12-22 03:21:05.021 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC*/
	
	/*select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(count) - 3);
	
	/* Spalte unuix_time konvertieren auf String, um substring von 10  stellen unix_time zu erhalten! 
	alter table binanceeur alter column unix_time type varchar using unix_time::varchar;*/
	
2022-12-22 07:50:14.751 2022-12-22 02:43:14.105 CET [34251] ERROR:  function lpad(bigint, integer, unknown) does not exist at character 145
2022-12-22 02:43:14.105 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:43:14.105 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	update binanceeur
	   set unix_time = lpad(unix_time, 10, '0')
	
2022-12-22 02:44:04.491 CET [34251] ERROR:  function length(bigint) does not exist at character 179
2022-12-22 02:44:04.491 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:44:04.491 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	update binanceeur
	   set unix_time = lpad(unix_time, 10, '0')
	   where length(unix_time) > 9;
	
2022-12-22 02:44:51.030 CET [34251] ERROR:  function length(bigint) does not exist at character 177
2022-12-22 02:44:51.030 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:44:51.030 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	update binanceeur
	   set unix_time = lpad(unix_time, 10, 0)
	   where length(unix_time) > 9;
	
2022-12-22 02:52:07.260 CET [34251] ERROR:  syntax error at or near "table" at character 213
2022-12-22 02:52:07.260 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE table SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(count) - 3);
2022-12-22 02:52:14.344 CET [34251] ERROR:  column "count" does not exist at character 276
2022-12-22 02:52:14.344 CET [34251] HINT:  Perhaps you meant to reference the column "binanceeur.amount".
2022-12-22 02:52:14.344 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(count) - 3);
2022-12-22 02:52:42.524 CET [34251] ERROR:  function char_length(bigint) does not exist at character 264
2022-12-22 02:52:42.524 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:52:42.524 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(unix_time) - 3);
2022-12-22 02:53:44.329 CET [34251] ERROR:  function length(bigint) does not exist at character 264
2022-12-22 02:53:44.329 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:53:44.329 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, LENGTH(unix_time) - 3);
2022-12-22 02:53:56.580 CET [34251] ERROR:  function substring(bigint, integer, integer) does not exist at character 240
2022-12-22 02:53:56.580 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:53:56.580 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, 10);
2022-12-22 03:02:15.934 CET [36084] ERROR:  numeric field overflow
2022-12-22 03:02:15.934 CET [36084] DETAIL:  A field with precision 10, scale 0 must round to an absolute value less than 10^10.
2022-12-22 03:02:15.934 CET [36084] STATEMENT:  ALTER TABLE public.binanceeur
	    ALTER COLUMN unix_time TYPE numeric(10);
2022-12-22 03:03:01.237 CET [36084] ERROR:  numeric field overflow
2022-12-22 03:03:01.237 CET [36084] DETAIL:  A field with precision 10, scale 1 must round to an absolute value less than 10^9.
2022-12-22 03:03:01.237 CET [36084] STATEMENT:  ALTER TABLE public.binanceeur
	    ALTER COLUMN unix_time TYPE numeric(10, 1);
2022-12-22 03:05:37.781 CET [34251] ERROR:  function left(bigint, integer) does not exist at character 240
2022-12-22 03:05:37.781 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 03:05:37.781 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
2022-12-22 03:07:03.837 CET [35779] LOG:  checkpoint starting: time
2022-12-22 03:11:33.135 CET [35779] LOG:  checkpoint complete: wrote 4216 buffers (25.7%); 0 WAL file(s) added, 0 removed, 5 recycled; write=269.218 s, sync=0.002 s, total=269.341 s; sync files=28, longest=0.002 s, average=0.001 s; distance=83123 kB, estimate=493720 kB
2022-12-22 03:14:30.326 CET [34251] ERROR:  relation "binance" does not exist
2022-12-22 03:14:30.326 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	alter table binance alter column unix_time type varchar using def::varchar;
	
2022-12-22 03:14:36.038 CET [34251] ERROR:  column "def" does not exist at character 390
2022-12-22 03:14:36.038 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	alter table binanceeur alter column unix_time type varchar using def::varchar;
	
2022-12-22 03:15:37.441 CET [35779] LOG:  checkpoint starting: wal
2022-12-22 03:18:26.492 CET [34251] ERROR:  syntax error at or near "select" at character 48
2022-12-22 03:18:26.492 CET [34251] STATEMENT:  SELECT * FROM binanceeur
	ORDER BY amount DESC
	
	select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	/*alter table binanceeur alter column unix_time type varchar using unix_time::varchar;*/
	
2022-12-22 03:20:07.208 CET [35779] LOG:  checkpoint complete: wrote 2073 buffers (12.7%); 0 WAL file(s) added, 0 removed, 33 recycled; write=269.654 s, sync=0.015 s, total=269.768 s; sync files=19, longest=0.013 s, average=0.001 s; distance=540572 kB, estimate=540572 kB
2022-12-22 03:21:05.021 CET [34251] ERROR:  column "count" does not exist at character 400
2022-12-22 03:21:05.021 CET [34251] HINT:  Perhaps you meant to reference the column "binanceeur.amount".
2022-12-22 03:21:05.021 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC*/
	
	/*select date_trunc('second', unix_time) from binanceeur;*/
	/*update binanceeur
	   set unix_time = trunc(unix_time, 10, 0)
	   where length(unix_time) > 9;*/
	
	/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
	/*SELECT length(cast(1234567890 as text)) as int_length;*/
	
	
	UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(count) - 3);
	
	/* Spalte unuix_time konvertieren auf String, um substring von 10  stellen unix_time zu erhalten! 
	alter table binanceeur alter column unix_time type varchar using unix_time::varchar;*/
	


2022-12-20 05:37:51.892 CET [35779] LOG:  checkpoint complete: wrote 45 buffers (0.3%); 0 WAL file(s) added, 0 removed, 0 recycled; write=7.598 s, sync=0.046 s, total=7.742 s; sync files=31, longest=0.040 s, average=0.002 s; distance=160 kB, estimate=451283 kB
2022-12-20 05:38:08.469 CET [50734] ERROR:  could not open file "/private/tmp/coinbaseEUR.csv" for reading: No such file or directory
2022-12-20 05:38:08.469 CET [50734] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2022-12-20 05:38:08.469 CET [50734] STATEMENT:  COPY binanceEUR(unix_time, price, amount, quote_amount)
	FROM '/private/tmp/coinbaseEUR.csv'
	DELIMITER ','
	CSV HEADER;
2022-12-20 05:38:21.110 CET [50734] ERROR:  extra data after last expected column
2022-12-20 05:38:21.110 CET [50734] CONTEXT:  COPY binanceeur, line 2: "98201215,20730.01000000,0.00826000,171.22988260,1667260801167,True,True"
2022-12-20 05:38:21.110 CET [50734] STATEMENT:  COPY binanceEUR(unix_time, price, amount, quote_amount)
	FROM '/private/tmp/binanceEUR.csv'
	DELIMITER ','
	CSV HEADER;
2022-12-20 05:40:49.631 CET [36090] ERROR:  syntax error at or near "price" at character 63
2022-12-20 05:40:49.631 CET [36090] STATEMENT:  CREATE TABLE binanceEUR (
		id SERIAL,
		unwichtig VARCHAR(99)
		price NUMERIC,
		amount NUMERIC,
		quote_amount NUMERIC,
		unix_time BIGINT,
		exchange VARCHAR(99) DEFAULT 'binanceEUR' NOT NULL,
		PRIMARY KEY (id, exchange)
	)
	
	/*COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-12-20 05:41:09.698 CET [50734] ERROR:  extra data after last expected column
2022-12-20 05:41:09.698 CET [50734] CONTEXT:  COPY binanceeur, line 2: "98201215,20730.01000000,0.00826000,171.22988260,1667260801167,True,True"
2022-12-20 05:41:09.698 CET [50734] STATEMENT:  COPY binanceEUR(unwichtig,price,amount,quote_amount,unix_time)
	FROM '/private/tmp/binanceEUR.csv'
	DELIMITER ','
	CSV HEADER;
2022-12-20 05:42:45.011 CET [35779] LOG:  checkpoint starting: time
2022-12-20 05:42:51.817 CET [35779] LOG:  checkpoint complete: wrote 39 buffers (0.2%); 0 WAL file(s) added, 0 removed, 0 recycled; write=6.720 s, sync=0.004 s, total=6.807 s; sync files=30, longest=0.001 s, average=0.001 s; distance=171 kB, estimate=406172 kB
2022-12-20 05:45:16.876 CET [35779] LOG:  checkpoint starting: wal
2022-12-20 05:49:46.184 CET [35779] LOG:  checkpoint complete: wrote 7651 buffers (46.7%); 0 WAL file(s) added, 0 removed, 33 recycled; write=269.271 s, sync=0.011 s, total=269.310 s; sync files=39, longest=0.009 s, average=0.001 s; distance=539342 kB, estimate=539342 kB
2022-12-20 05:53:37.892 CET [34251] ERROR:  syntax error at or near "DESC" at character 26
2022-12-20 05:53:37.892 CET [34251] STATEMENT:  SELECT * FROM binanceeur
	DESC amount
2022-12-20 05:53:53.561 CET [34251] ERROR:  syntax error at or near "DESC" at character 35
2022-12-20 05:53:53.561 CET [34251] STATEMENT:  SELECT * FROM binanceeur
	ORDER BY DESC amount
2022-12-22 02:38:27.867 CET [34251] ERROR:  function date_trunc(unknown, bigint) does not exist at character 59
2022-12-22 02:38:27.867 CET [34251] HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
2022-12-22 02:38:27.867 CET [34251] STATEMENT:  /*SELECT * FROM binanceeur
	ORDER BY amount DESC*/
	
	select date_trunc('second', unix_time) from binanceeur;
	





2022-11-26 17:14:31.323 CET [36090] ERROR:  syntax error at or near "COPY" at character 115
2022-11-26 17:14:31.323 CET [36090] STATEMENT:   CREATE TABLE bitstampEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) 
	
	COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:16:39.758 CET [36090] ERROR:  syntax error at or near "COPY" at character 115
2022-11-26 17:16:39.758 CET [36090] STATEMENT:   CREATE TABLE bitstampEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) 
	
	COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:16:44.352 CET [36090] ERROR:  syntax error at or near "COPY" at character 115
2022-11-26 17:16:44.352 CET [36090] STATEMENT:   CREATE TABLE bitstampEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) 
	
	COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:16:53.801 CET [36090] ERROR:  syntax error at or near "COPY" at character 115
2022-11-26 17:16:53.801 CET [36090] STATEMENT:   CREATE TABLE bitstampEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) 
	
	COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:17:03.773 CET [36090] ERROR:  syntax error at or near "COPY" at character 115
2022-11-26 17:17:03.773 CET [36090] STATEMENT:   CREATE TABLE bitstampEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) 
	
	COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:17:21.370 CET [36090] ERROR:  syntax error at or near "COPY" at character 114
2022-11-26 17:17:21.370 CET [36090] STATEMENT:  CREATE TABLE bitstampEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) 
	
	COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:18:20.962 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:18:45.740 CET [35779] LOG:  checkpoint complete: wrote 10992 buffers (67.1%); 0 WAL file(s) added, 0 removed, 33 recycled; write=22.807 s, sync=1.892 s, total=24.778 s; sync files=41, longest=1.039 s, average=0.047 s; distance=542654 kB, estimate=542654 kB
2022-11-26 17:18:49.285 CET [35779] LOG:  checkpoints are occurring too frequently (29 seconds apart)
2022-11-26 17:18:49.285 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 17:18:49.285 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:23:15.445 CET [35779] LOG:  checkpoint complete: wrote 10641 buffers (64.9%); 0 WAL file(s) added, 0 removed, 33 recycled; write=266.008 s, sync=0.104 s, total=266.161 s; sync files=10, longest=0.087 s, average=0.011 s; distance=539058 kB, estimate=542295 kB
2022-11-26 17:23:18.895 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:23:58.239 CET [35779] LOG:  checkpoint complete: wrote 12328 buffers (75.2%); 0 WAL file(s) added, 0 removed, 33 recycled; write=38.829 s, sync=0.475 s, total=39.345 s; sync files=41, longest=0.321 s, average=0.012 s; distance=543920 kB, estimate=543920 kB
2022-11-26 17:24:00.677 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:24:34.612 CET [35779] LOG:  checkpoint complete: wrote 8820 buffers (53.8%); 0 WAL file(s) added, 0 removed, 33 recycled; write=32.801 s, sync=1.074 s, total=33.934 s; sync files=4, longest=0.968 s, average=0.269 s; distance=537041 kB, estimate=543232 kB
2022-11-26 17:25:14.944 CET [36090] ERROR:  syntax error at or near "coinbaseEUR" at character 1
2022-11-26 17:25:14.944 CET [36090] STATEMENT:  coinbaseEUR
2022-11-26 17:25:55.074 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:26:27.964 CET [35779] LOG:  checkpoint complete: wrote 11047 buffers (67.4%); 0 WAL file(s) added, 0 removed, 33 recycled; write=32.425 s, sync=0.423 s, total=32.891 s; sync files=37, longest=0.381 s, average=0.012 s; distance=542131 kB, estimate=543122 kB
2022-11-26 17:26:30.719 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:27:02.651 CET [35779] LOG:  checkpoint complete: wrote 7111 buffers (43.4%); 0 WAL file(s) added, 0 removed, 33 recycled; write=31.032 s, sync=0.859 s, total=31.933 s; sync files=9, longest=0.551 s, average=0.096 s; distance=542946 kB, estimate=543104 kB
2022-11-26 17:27:05.364 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:27:44.325 CET [35779] LOG:  checkpoint complete: wrote 6963 buffers (42.5%); 0 WAL file(s) added, 0 removed, 33 recycled; write=37.302 s, sync=1.612 s, total=38.962 s; sync files=4, longest=0.977 s, average=0.403 s; distance=536989 kB, estimate=542493 kB
2022-11-26 17:27:47.182 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:32:17.382 CET [35779] LOG:  checkpoint complete: wrote 8816 buffers (53.8%); 0 WAL file(s) added, 0 removed, 33 recycled; write=269.945 s, sync=0.020 s, total=270.201 s; sync files=6, longest=0.019 s, average=0.004 s; distance=542688 kB, estimate=542688 kB
2022-11-26 17:38:55.599 CET [36090] ERROR:  syntax error at or near "krakenEUR" at character 1
2022-11-26 17:38:55.599 CET [36090] STATEMENT:  krakenEUR
2022-11-26 17:43:48.216 CET [36090] ERROR:  unterminated /* comment at or near "/*CREATE TABLE krakenEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		exchange VARCHAR(99) DEFAULT 'krakenEUR' NOT NULL
		PRIMARY KEY (id)
	)
	
	/*COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/" at character 1
2022-11-26 17:43:48.216 CET [36090] STATEMENT:  /*CREATE TABLE krakenEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		exchange VARCHAR(99) DEFAULT 'krakenEUR' NOT NULL
		PRIMARY KEY (id)
	)
	
	/*COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:43:53.389 CET [36090] ERROR:  syntax error at or near "(" at character 154
2022-11-26 17:43:53.389 CET [36090] STATEMENT:  CREATE TABLE krakenEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		exchange VARCHAR(99) DEFAULT 'krakenEUR' NOT NULL
		PRIMARY KEY (id)
	)
	
	/*COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:43:57.680 CET [36090] ERROR:  syntax error at or near "(" at character 153
2022-11-26 17:43:57.680 CET [36090] STATEMENT:  CREATE TABLE krakenEUR(
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		exchange VARCHAR(99) DEFAULT 'krakenEUR' NOT NULL
		PRIMARY KEY (id)
	)
	
	/*COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 17:45:01.619 CET [50734] ERROR:  could not open file "/private/tmp/krakenEUR.csv" for reading: No such file or directory
2022-11-26 17:45:01.619 CET [50734] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2022-11-26 17:45:01.619 CET [50734] STATEMENT:  COPY krakenEUR(unix_time, price, amount)
	FROM '/private/tmp/krakenEUR.csv'
	DELIMITER ','
	CSV HEADER;
2022-11-26 17:46:10.746 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:46:37.281 CET [35779] LOG:  checkpoint complete: wrote 12605 buffers (76.9%); 0 WAL file(s) added, 0 removed, 33 recycled; write=25.177 s, sync=1.304 s, total=26.536 s; sync files=40, longest=1.225 s, average=0.033 s; distance=542199 kB, estimate=542639 kB
2022-11-26 17:46:39.183 CET [35779] LOG:  checkpoints are occurring too frequently (29 seconds apart)
2022-11-26 17:46:39.183 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 17:46:39.183 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:47:05.218 CET [35779] LOG:  checkpoint complete: wrote 11985 buffers (73.2%); 0 WAL file(s) added, 0 removed, 33 recycled; write=25.098 s, sync=0.904 s, total=26.036 s; sync files=4, longest=0.794 s, average=0.226 s; distance=537264 kB, estimate=542101 kB
2022-11-26 17:47:07.691 CET [35779] LOG:  checkpoints are occurring too frequently (28 seconds apart)
2022-11-26 17:47:07.691 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 17:47:07.691 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:47:38.517 CET [35779] LOG:  checkpoint complete: wrote 13047 buffers (79.6%); 0 WAL file(s) added, 1 removed, 32 recycled; write=28.383 s, sync=2.275 s, total=30.826 s; sync files=5, longest=1.485 s, average=0.455 s; distance=542686 kB, estimate=542686 kB
2022-11-26 17:47:39.992 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:48:12.775 CET [35779] LOG:  checkpoint complete: wrote 12957 buffers (79.1%); 0 WAL file(s) added, 0 removed, 33 recycled; write=31.004 s, sync=1.367 s, total=32.783 s; sync files=4, longest=1.259 s, average=0.342 s; distance=539625 kB, estimate=542380 kB
2022-11-26 17:48:15.163 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:48:43.265 CET [35779] LOG:  checkpoint complete: wrote 12463 buffers (76.1%); 0 WAL file(s) added, 0 removed, 33 recycled; write=25.485 s, sync=2.581 s, total=28.102 s; sync files=4, longest=2.388 s, average=0.646 s; distance=540618 kB, estimate=542203 kB
2022-11-26 17:48:45.567 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:49:12.403 CET [35779] LOG:  checkpoint complete: wrote 11570 buffers (70.6%); 0 WAL file(s) added, 0 removed, 33 recycled; write=23.830 s, sync=2.857 s, total=26.836 s; sync files=4, longest=2.698 s, average=0.715 s; distance=539757 kB, estimate=541959 kB
2022-11-26 17:49:14.804 CET [35779] LOG:  checkpoints are occurring too frequently (29 seconds apart)
2022-11-26 17:49:14.804 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 17:49:14.804 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:49:48.950 CET [35779] LOG:  checkpoint complete: wrote 12317 buffers (75.2%); 0 WAL file(s) added, 0 removed, 33 recycled; write=33.819 s, sync=0.290 s, total=34.147 s; sync files=5, longest=0.241 s, average=0.058 s; distance=540885 kB, estimate=541851 kB
2022-11-26 17:49:51.681 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:50:18.445 CET [35779] LOG:  checkpoint complete: wrote 12231 buffers (74.7%); 0 WAL file(s) added, 0 removed, 33 recycled; write=26.692 s, sync=0.027 s, total=26.765 s; sync files=4, longest=0.022 s, average=0.007 s; distance=543256 kB, estimate=543256 kB
2022-11-26 17:50:20.902 CET [35779] LOG:  checkpoints are occurring too frequently (29 seconds apart)
2022-11-26 17:50:20.902 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 17:50:20.903 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:50:47.025 CET [35779] LOG:  checkpoint complete: wrote 12397 buffers (75.7%); 0 WAL file(s) added, 0 removed, 33 recycled; write=23.179 s, sync=2.891 s, total=26.123 s; sync files=4, longest=2.658 s, average=0.723 s; distance=541770 kB, estimate=543107 kB
2022-11-26 17:50:50.423 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:51:16.946 CET [35779] LOG:  checkpoint complete: wrote 12739 buffers (77.8%); 0 WAL file(s) added, 0 removed, 33 recycled; write=23.165 s, sync=3.302 s, total=26.524 s; sync files=6, longest=2.558 s, average=0.551 s; distance=536662 kB, estimate=542463 kB
2022-11-26 17:51:18.917 CET [35779] LOG:  checkpoints are occurring too frequently (28 seconds apart)
2022-11-26 17:51:18.917 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 17:51:18.917 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:51:46.585 CET [35779] LOG:  checkpoint complete: wrote 12818 buffers (78.2%); 0 WAL file(s) added, 0 removed, 33 recycled; write=24.183 s, sync=3.401 s, total=27.669 s; sync files=5, longest=3.172 s, average=0.681 s; distance=541437 kB, estimate=542360 kB
2022-11-26 17:51:49.054 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:52:28.988 CET [35779] LOG:  checkpoint complete: wrote 12709 buffers (77.6%); 0 WAL file(s) added, 0 removed, 33 recycled; write=38.781 s, sync=0.664 s, total=39.934 s; sync files=5, longest=0.481 s, average=0.133 s; distance=539857 kB, estimate=542110 kB
2022-11-26 17:52:33.618 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:53:04.461 CET [35779] LOG:  checkpoint complete: wrote 12508 buffers (76.3%); 0 WAL file(s) added, 0 removed, 33 recycled; write=29.446 s, sync=1.363 s, total=30.843 s; sync files=6, longest=0.949 s, average=0.228 s; distance=540703 kB, estimate=541969 kB
2022-11-26 17:53:06.910 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:53:32.646 CET [35779] LOG:  checkpoint complete: wrote 11862 buffers (72.4%); 0 WAL file(s) added, 0 removed, 33 recycled; write=23.639 s, sync=2.017 s, total=25.736 s; sync files=5, longest=1.774 s, average=0.404 s; distance=541554 kB, estimate=541928 kB
2022-11-26 17:53:35.032 CET [35779] LOG:  checkpoints are occurring too frequently (29 seconds apart)
2022-11-26 17:53:35.032 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 17:53:35.032 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 17:56:50.277 CET [35779] LOG:  checkpoint complete: wrote 12703 buffers (77.5%); 0 WAL file(s) added, 0 removed, 33 recycled; write=195.201 s, sync=0.012 s, total=195.246 s; sync files=8, longest=0.011 s, average=0.002 s; distance=540153 kB, estimate=541750 kB
2022-11-26 18:01:23.471 CET [36090] ERROR:  relation "coinbaseeur" already exists
2022-11-26 18:01:23.471 CET [36090] STATEMENT:  CREATE TABLE coinbaseEUR (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		exchange VARCHAR(99) DEFAULT 'coinbaseEUR' NOT NULL,
		PRIMARY KEY (id, exchange)
	)
	
	/*COPY bitstampEUR(unix_time, price, amount)
	FROM '/private/tmp/bitstampEUR.csv'
	DELIMITER ','
	CSV HEADER;*/
	
	/*SELECT * FROM COINBASEUSD ORDER BY ID ASC*/
2022-11-26 18:01:56.456 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 18:02:25.060 CET [35779] LOG:  checkpoint complete: wrote 8991 buffers (54.9%); 0 WAL file(s) added, 0 removed, 33 recycled; write=27.625 s, sync=0.910 s, total=28.605 s; sync files=48, longest=0.668 s, average=0.019 s; distance=544334 kB, estimate=544334 kB
2022-11-26 18:02:27.179 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 18:03:03.707 CET [35779] LOG:  checkpoint complete: wrote 13 buffers (0.1%); 0 WAL file(s) added, 0 removed, 33 recycled; write=35.629 s, sync=0.854 s, total=36.529 s; sync files=7, longest=0.718 s, average=0.122 s; distance=536664 kB, estimate=543567 kB
2022-11-26 18:03:05.541 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 18:03:37.011 CET [35779] LOG:  checkpoint complete: wrote 42 buffers (0.3%); 0 WAL file(s) added, 0 removed, 33 recycled; write=30.179 s, sync=1.249 s, total=31.471 s; sync files=6, longest=1.085 s, average=0.208 s; distance=540661 kB, estimate=543276 kB
2022-11-26 18:03:39.723 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 18:05:10.921 CET [35779] LOG:  checkpoint complete: wrote 50 buffers (0.3%); 0 WAL file(s) added, 0 removed, 33 recycled; write=91.104 s, sync=0.018 s, total=91.199 s; sync files=11, longest=0.016 s, average=0.002 s; distance=540720 kB, estimate=543021 kB
2022-11-26 18:08:39.756 CET [35779] LOG:  checkpoint starting: time
2022-11-26 18:11:54.661 CET [51300] ERROR:  constraint "kraken_eur_pkey" of relation "krakeneur" does not exist
2022-11-26 18:11:54.661 CET [51300] STATEMENT:  ALTER TABLE krakenEUR DROP CONSTRAINT kraken_eur_pkey;
2022-11-26 18:13:09.160 CET [35779] LOG:  checkpoint complete: wrote 11189 buffers (68.3%); 0 WAL file(s) added, 0 removed, 29 recycled; write=269.010 s, sync=0.002 s, total=269.404 s; sync files=18, longest=0.001 s, average=0.001 s; distance=475230 kB, estimate=536241 kB
2022-11-26 18:14:46.545 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 18:14:50.743 CET [35779] LOG:  checkpoint complete: wrote 24 buffers (0.1%); 0 WAL file(s) added, 0 removed, 33 recycled; write=3.946 s, sync=0.004 s, total=4.198 s; sync files=21, longest=0.001 s, average=0.001 s; distance=541983 kB, estimate=541983 kB
2022-11-26 18:15:28.625 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 18:15:28.671 CET [35779] LOG:  checkpoint complete: wrote 0 buffers (0.0%); 0 WAL file(s) added, 0 removed, 33 recycled; write=0.001 s, sync=0.001 s, total=0.047 s; sync files=0, longest=0.000 s, average=0.000 s; distance=543244 kB, estimate=543244 kB
2022-11-26 18:15:50.251 CET [35779] LOG:  checkpoints are occurring too frequently (22 seconds apart)
2022-11-26 18:15:50.251 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-26 18:15:50.252 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 18:15:50.684 CET [35779] LOG:  checkpoint complete: wrote 0 buffers (0.0%); 0 WAL file(s) added, 0 removed, 33 recycled; write=0.001 s, sync=0.001 s, total=0.433 s; sync files=0, longest=0.000 s, average=0.000 s; distance=540666 kB, estimate=542987 kB
2022-11-26 18:20:50.771 CET [35779] LOG:  checkpoint starting: time
2022-11-26 18:20:51.990 CET [35779] LOG:  checkpoint complete: wrote 8 buffers (0.0%); 0 WAL file(s) added, 0 removed, 24 recycled; write=1.127 s, sync=0.002 s, total=1.220 s; sync files=6, longest=0.001 s, average=0.001 s; distance=400037 kB, estimate=528692 kB
2022-11-26 19:36:51.796 CET [52490] ERROR:  column "id" specified more than once
2022-11-26 19:36:51.796 CET [52490] STATEMENT:  create table kraken_coinbase_EUR
	as 
	SELECT *
	FROM 
	  coinbaseEUR AS A
	, krakenEUR AS B
	WHERE
	    ( a.unix_time =  b.unix_time )
	
2022-11-26 19:45:37.986 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 19:46:30.589 CET [35779] LOG:  checkpoint complete: wrote 23 buffers (0.1%); 0 WAL file(s) added, 0 removed, 33 recycled; write=52.119 s, sync=0.431 s, total=52.603 s; sync files=19, longest=0.431 s, average=0.023 s; distance=532678 kB, estimate=532678 kB
2022-11-26 19:46:35.046 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 19:47:34.021 CET [35779] LOG:  checkpoint complete: wrote 1 buffers (0.0%); 0 WAL file(s) added, 0 removed, 33 recycled; write=58.538 s, sync=0.396 s, total=58.976 s; sync files=2, longest=0.395 s, average=0.198 s; distance=538046 kB, estimate=538046 kB
2022-11-26 19:47:38.423 CET [35779] LOG:  checkpoint starting: wal
2022-11-26 19:52:08.119 CET [35779] LOG:  checkpoint complete: wrote 3 buffers (0.0%); 0 WAL file(s) added, 0 removed, 33 recycled; write=269.659 s, sync=0.013 s, total=269.697 s; sync files=5, longest=0.011 s, average=0.003 s; distance=544465 kB, estimate=544465 kB
2022-11-26 19:52:38.705 CET [35779] LOG:  checkpoint starting: time
2022-11-26 19:57:08.206 CET [35779] LOG:  checkpoint complete: wrote 2119 buffers (12.9%); 0 WAL file(s) added, 0 removed, 7 recycled; write=269.490 s, sync=0.002 s, total=269.502 s; sync files=14, longest=0.002 s, average=0.001 s; distance=113892 kB, estimate=501408 kB



2022-11-24 19:27:27.522 CET [35777] LOG:  starting PostgreSQL 15.1 on x86_64-apple-darwin20.6.0, compiled by Apple clang version 12.0.0 (clang-1200.0.32.29), 64-bit
2022-11-24 19:27:27.524 CET [35777] LOG:  listening on IPv6 address "::", port 5433
2022-11-24 19:27:27.524 CET [35777] LOG:  listening on IPv4 address "0.0.0.0", port 5433
2022-11-24 19:27:27.525 CET [35777] LOG:  listening on Unix socket "/tmp/.s.PGSQL.5433"
2022-11-24 19:27:27.528 CET [35781] LOG:  database system was shut down at 2022-11-24 19:27:26 CET
2022-11-24 19:27:27.532 CET [35777] LOG:  database system is ready to accept connections
2022-11-24 19:32:27.604 CET [35779] LOG:  checkpoint starting: time
2022-11-24 19:32:39.405 CET [35779] LOG:  checkpoint complete: wrote 77 buffers (0.5%); 0 WAL file(s) added, 0 removed, 0 recycled; write=11.790 s, sync=0.009 s, total=11.801 s; sync files=31, longest=0.002 s, average=0.001 s; distance=414 kB, estimate=414 kB
2022-11-24 19:37:27.160 CET [35779] LOG:  checkpoint starting: time
2022-11-24 19:37:34.382 CET [35779] LOG:  checkpoint complete: wrote 46 buffers (0.3%); 0 WAL file(s) added, 0 removed, 0 recycled; write=7.010 s, sync=0.185 s, total=7.222 s; sync files=35, longest=0.083 s, average=0.006 s; distance=148 kB, estimate=388 kB
2022-11-24 19:45:22.186 CET [36090] ERROR:  syntax error at or near "/" at character 169
2022-11-24 19:45:22.186 CET [36090] STATEMENT:  /* CREATE TABLE coinbaseUSD (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) */
	
	COPY coinbaseUSD(unix_time, price, amount)
	FROM ''/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv'
	DELIMITER ','
	CSV HEADER;
2022-11-24 19:45:32.585 CET [36090] ERROR:  could not open file "/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv" for reading: Permission denied
2022-11-24 19:45:32.585 CET [36090] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2022-11-24 19:45:32.585 CET [36090] STATEMENT:  /* CREATE TABLE coinbaseUSD (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) */
	
	COPY coinbaseUSD(unix_time, price, amount)
	FROM '/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv'
	DELIMITER ','
	CSV HEADER;
2022-11-24 19:47:27.847 CET [35779] LOG:  checkpoint starting: time
2022-11-24 19:47:36.600 CET [35779] LOG:  checkpoint complete: wrote 35 buffers (0.2%); 0 WAL file(s) added, 0 removed, 0 recycled; write=6.669 s, sync=1.227 s, total=8.754 s; sync files=31, longest=0.135 s, average=0.040 s; distance=142 kB, estimate=363 kB
2022-11-24 19:47:39.736 CET [36090] ERROR:  could not open file "/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv" for reading: Permission denied
2022-11-24 19:47:39.736 CET [36090] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2022-11-24 19:47:39.736 CET [36090] STATEMENT:  /* CREATE TABLE coinbaseUSD (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) */
	
	COPY coinbaseUSD(unix_time, price, amount)
	FROM '/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv'
	DELIMITER ','
	CSV HEADER;
2022-11-24 19:47:57.398 CET [36090] ERROR:  syntax error at or near "\" at character 119
2022-11-24 19:47:57.398 CET [36090] STATEMENT:  /* CREATE TABLE coinbaseUSD (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) */
	
	\COPY coinbaseUSD(unix_time, price, amount)
	FROM '/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv'
	DELIMITER ','
	CSV HEADER;
2022-11-24 19:50:20.935 CET [36090] ERROR:  could not open file "/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv" for reading: Permission denied
2022-11-24 19:50:20.935 CET [36090] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2022-11-24 19:50:20.935 CET [36090] STATEMENT:  /* CREATE TABLE coinbaseUSD (
		id SERIAL,
		unix_time BIGINT,
		price NUMERIC,
		amount NUMERIC,
		PRIMARY KEY (id)
	) */
	
	COPY coinbaseUSD(unix_time, price, amount)
	FROM '/Users/Bugday/Downloads/historicaltickdata/coinbaseUSD.csv'
	DELIMITER ','
	CSV HEADER;
2022-11-24 19:53:25.547 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:53:48.679 CET [35779] LOG:  checkpoint complete: wrote 11025 buffers (67.3%); 0 WAL file(s) added, 0 removed, 33 recycled; write=22.521 s, sync=0.570 s, total=23.133 s; sync files=7, longest=0.410 s, average=0.082 s; distance=534806 kB, estimate=534806 kB
2022-11-24 19:53:50.614 CET [35779] LOG:  checkpoints are occurring too frequently (25 seconds apart)
2022-11-24 19:53:50.614 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:53:50.614 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:54:10.986 CET [35779] LOG:  checkpoint complete: wrote 12926 buffers (78.9%); 0 WAL file(s) added, 0 removed, 33 recycled; write=20.074 s, sync=0.275 s, total=20.373 s; sync files=4, longest=0.191 s, average=0.069 s; distance=541053 kB, estimate=541053 kB
2022-11-24 19:54:12.787 CET [35779] LOG:  checkpoints are occurring too frequently (22 seconds apart)
2022-11-24 19:54:12.787 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:54:12.787 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:54:32.761 CET [35779] LOG:  checkpoint complete: wrote 12691 buffers (77.5%); 0 WAL file(s) added, 0 removed, 33 recycled; write=18.746 s, sync=1.190 s, total=19.974 s; sync files=5, longest=0.563 s, average=0.238 s; distance=541014 kB, estimate=541049 kB
2022-11-24 19:54:35.039 CET [35779] LOG:  checkpoints are occurring too frequently (23 seconds apart)
2022-11-24 19:54:35.039 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:54:35.039 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:55:00.405 CET [35779] LOG:  checkpoint complete: wrote 12557 buffers (76.6%); 0 WAL file(s) added, 0 removed, 33 recycled; write=24.164 s, sync=1.159 s, total=25.366 s; sync files=4, longest=1.049 s, average=0.290 s; distance=539917 kB, estimate=540936 kB
2022-11-24 19:55:02.522 CET [35779] LOG:  checkpoints are occurring too frequently (27 seconds apart)
2022-11-24 19:55:02.522 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:55:02.522 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:55:28.524 CET [35779] LOG:  checkpoint complete: wrote 13430 buffers (82.0%); 0 WAL file(s) added, 0 removed, 33 recycled; write=24.999 s, sync=0.967 s, total=26.003 s; sync files=4, longest=0.856 s, average=0.242 s; distance=540956 kB, estimate=540956 kB
2022-11-24 19:55:30.825 CET [35779] LOG:  checkpoints are occurring too frequently (28 seconds apart)
2022-11-24 19:55:30.825 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:55:30.825 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:55:55.247 CET [35779] LOG:  checkpoint complete: wrote 14259 buffers (87.0%); 0 WAL file(s) added, 0 removed, 33 recycled; write=23.563 s, sync=0.824 s, total=24.422 s; sync files=4, longest=0.670 s, average=0.206 s; distance=540567 kB, estimate=540917 kB
2022-11-24 19:55:57.292 CET [35779] LOG:  checkpoints are occurring too frequently (27 seconds apart)
2022-11-24 19:55:57.292 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:55:57.292 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:56:21.664 CET [35779] LOG:  checkpoint complete: wrote 14164 buffers (86.5%); 0 WAL file(s) added, 0 removed, 33 recycled; write=23.613 s, sync=0.724 s, total=24.372 s; sync files=5, longest=0.575 s, average=0.145 s; distance=540486 kB, estimate=540874 kB
2022-11-24 19:56:23.710 CET [35779] LOG:  checkpoints are occurring too frequently (26 seconds apart)
2022-11-24 19:56:23.710 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:56:23.710 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:56:50.056 CET [35779] LOG:  checkpoint complete: wrote 14388 buffers (87.8%); 0 WAL file(s) added, 0 removed, 33 recycled; write=25.723 s, sync=0.591 s, total=26.347 s; sync files=4, longest=0.462 s, average=0.148 s; distance=541028 kB, estimate=541028 kB
2022-11-24 19:56:52.005 CET [35779] LOG:  checkpoints are occurring too frequently (29 seconds apart)
2022-11-24 19:56:52.005 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:56:52.005 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:57:15.326 CET [35779] LOG:  checkpoint complete: wrote 13970 buffers (85.3%); 0 WAL file(s) added, 0 removed, 33 recycled; write=22.844 s, sync=0.441 s, total=23.322 s; sync files=5, longest=0.414 s, average=0.089 s; distance=540546 kB, estimate=540980 kB
2022-11-24 19:57:17.234 CET [35779] LOG:  checkpoints are occurring too frequently (25 seconds apart)
2022-11-24 19:57:17.234 CET [35779] HINT:  Consider increasing the configuration parameter "max_wal_size".
2022-11-24 19:57:17.234 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 19:57:42.696 CET [35779] LOG:  checkpoint complete: wrote 13217 buffers (80.7%); 0 WAL file(s) added, 0 removed, 33 recycled; write=24.934 s, sync=0.494 s, total=25.463 s; sync files=6, longest=0.307 s, average=0.083 s; distance=540522 kB, estimate=540934 kB
2022-11-24 20:00:48.468 CET [35779] LOG:  checkpoint starting: wal
2022-11-24 20:05:18.171 CET [35779] LOG:  checkpoint complete: wrote 4240 buffers (25.9%); 0 WAL file(s) added, 0 removed, 33 recycled; write=269.603 s, sync=0.002 s, total=269.703 s; sync files=16, longest=0.001 s, average=0.001 s; distance=540582 kB, estimate=540899 kB

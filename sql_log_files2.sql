/*SELECT * FROM binanceeur
ORDER BY amount DESC*/

/*select date_trunc('second', unix_time) from binanceeur;*/
/*update binanceeur
   set unix_time = trunc(unix_time, 10, 0)
   where length(unix_time) > 9;*/

/*UPDATE binanceeur SET unix_time = LEFT(unix_time, 10);*/
/*SELECT length(cast(1234567890 as text)) as int_length;*/


/* Spalte unuix_time konvertieren auf String, um substring von 10  stellen unix_time zu erhalten! 
alter table binanceeur alter column unix_time type varchar using unix_time::varchar;
Alternativ: beim Erzeugen der binanceeur Tabelle können Constraints festgelegt werden, um die Stellen auf 10 zu beschränken.

anschließend:
UPDATE binanceeur SET unix_time = SUBSTRING(unix_time, 1, CHAR_LENGTH(unix_time) - 3); um die Stellen zu kürzen
*/

/*UPDATE binanceeur_backup SET unix_time = SUBSTRING(unix_time, 1, 10);*/
SELECT COUNT(*) FROM binanceeur





COPY binanceEUR(unwichtig, price, amount, quote_amount, unix_time, unwichtigbool, unwichtigbool_zwei)
FROM '/private/tmp/binanceEUR.csv'
DELIMITER ','
CSV HEADER;

/*ALTER TABLE krakenEUR ADD PRIMARY KEY (id, exchange);*/

create table binanceeur_backup as (select * from binanceeur_original);


// TODO python3 -m pip install -U binance.py

excAaVIP1PdgSJ5mYE2E0SulQflBV5S7 bitstamp api key
CgYRY4K0EtKLB8CNfGJdtN6AnwoAgFl4 bitstamp api secret
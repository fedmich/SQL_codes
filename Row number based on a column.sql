-- SQL, add row numbering based on a column without using GROUP BY

SELECT id
, @cur:= if( @prev=tbl.id, @cur ,0 ) + 1 as item_num
, @prev:=tbl.id as prev

FROM tbl
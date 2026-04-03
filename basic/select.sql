-- Q1 商品テーブルのすべての列を表示。
select * from shohin;

-- Q2 商品名（shohin_mei）と販売単価（hanbai_tanka）だけを表示してください。
select shohin_mei,hanbai_tanka
from shohin;

-- Q3 重複を除いて、商品分類（shohin_bunrui）を表示してください。
select distinct shohin_bunrui
from shohin;

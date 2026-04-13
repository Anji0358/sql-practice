--Q1: 商品名、商品分類、販売単価を表示する shohin_summary というビューを作成してください。

create view shohin_summary
as
select shohin_mei, shohin_bunrui,hanbai_tanka
from shohin;

--Q2: 作成した shohin_summary ビューから、販売単価が1000円以上のデータのみをSELECTしてください。
select shohin_mei, hanbai_tanka
from shohin_summary
where hanbai_tanka >= 1000;
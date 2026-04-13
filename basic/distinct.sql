--Q1: 商品テーブルから、重複を除いた「商品分類」の一覧を表示してください。

select distinct shohin_bunrui
from shohin;

--Q2: 商品テーブルから、「商品分類」と「登録日」の組み合わせで重複を除いた一覧を表示してください。

select distinct shohin_bunrui, torokubi
from shohin;
--Q1: 商品分類ごとにグループ化し、それぞれの「商品分類名」と「その分類に属する行数」を表示してください。

select shohin_bunrui,count(shohin_mei)
from shohin
group by shohin_bunrui;

--Q2: 販売単価ごとにグループ化し、その「販売単価」と「その単価に該当する商品数」を表示してください。
select hanbai_tanka,count(shohin_mei)
from shohin
group by hanbai_tanka;
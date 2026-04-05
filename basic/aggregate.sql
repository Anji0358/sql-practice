-- Q13 商品の件数を数えてください。
select count(*)
from shohin;

-- Q14 販売単価の平均を求めてください。
select avg(hanbai_tanka)
from shohin;

-- Q15 商品分類ごとの商品数を求めてください。]
select shohin_bunrui,count(shohin_mei)
from shohin
group by shohin_bunrui;
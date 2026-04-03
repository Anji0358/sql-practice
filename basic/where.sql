-- Q4 販売単価が1000円以上の商品を表示してください。
select shohin_mei,hanbai_tanka
from shohin
where hanbai_tanka>=1000;

-- Q5 商品分類が「衣服」の商品を表示してください。
select shohin_mei,shohin_bunrui
from shohin
where shohin_bunrui='衣服';

-- Q6 販売単価が1000円以上かつ商品分類が「衣服」の商品を表示してください。
select shohin_mei,hanbai_tanka
from shohin
where hanbai_tanka>=1000
and shohin_bunrui='衣服';
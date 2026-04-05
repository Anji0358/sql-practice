-- Q7 商品名と税込価格（販売単価 × 1.1）を表示してください。

select shohin_mei,hanbai_tanka, hanbai_tanka*1.1 as zeikomi
from shohin;

-- Q8 利益（販売単価 − 仕入単価）を表示してください。

select shohin_mei, hanbai_tanka - shiire_tanka as rieki
from shohin;
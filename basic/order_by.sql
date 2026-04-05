-- Q9 販売単価が高い順に商品を表示してください。
select shohin_mei, hanbai_tanka
from shohin
order by hanbai_tanka;

-- Q10 登録日（torokubi）が新しい順に商品を表示してください。
select shohin_mei, torokubi
from shohin
order by torokubi;

-- Q11 販売単価が1000円以上の商品を、価格の安い順に表示してください。
select shohin_mei, hanbai_tanka
from shohin
where hanbai_tanka >= 1000
order by hanbai_tanka;

-- Q12 登録日がNULLでない商品を表示してください。
select shohin_mei, torokubi
from shohin
where torokubi is not null;
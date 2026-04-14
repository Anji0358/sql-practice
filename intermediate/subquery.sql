-- Q1 （基礎＋集約＋サブクエリ）全商品の平均販売単価より高い商品を求めてください。

select shohin_mei ,hanbai_tanka
from shohin
where hanbai_tanka >= (
    select avg(hanbai_tanka)
    from shohin
);

-- Q2 （JOIN＋GROUP BY＋HAVING＋サブクエリ）各店舗ごとの総在庫数量を求め、その総在庫数量が全店舗の平均総在庫数量より多い店舗を求めてください。
select store_name, sum(quantity)
from StoreProduct
group by store_name
having sum(quantity) >= (
    select avg(total_sum)
    from (
        select sum(quantity) as total_sum
        from StoreProduct
        group by store_name
    ) as tmp
);

-- Q3 （IN＋JOIN＋サブクエリ）東京店（Tokyo）で扱っている商品の中で、販売単価が3000円以上の商品を求めてください。
select 
from (
    select * from StoreProduct
    where store_name = 'Tokyo'
)
where hanba

-- Q4 （相関サブクエリ）商品分類ごとに、その分類の平均販売単価より高い商品を求めてください
-- Q5 （FROM句サブクエリ＋JOIN）各商品の総在庫数量を求め、その総在庫数量が最も多い商品を求めてください。
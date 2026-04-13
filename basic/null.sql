--Q1: 仕入単価が NULL である商品の名前を表示してください。

select shohin_mei,shiire_tanka
from shohin
where shiire_tanka is null;

/*
point nullで論理演算し比較はできない
"=" ではなく "IS NULL" を使う
*/

--Q2: 登録日が NULL ではない商品の名前と登録日を表示してください。

select shohin_mei,torokubi
from shohin
where torokubi is not null;

--Q3:（応用）仕入単価が NULL のものを 0 に置き換えて、商品名と仕入単価を表示してください（COALESCE または ISNULL を使用）。

/*まだ習っていないので持ち越し*/
--sample1
START TRANSACTION;

-- 一旦既存データをクリア
DELETE FROM shohin;

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shire_tanka, torokubi) VALUES
('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20'),
('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11'),
('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL), -- 登録日NULL
('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20'),
('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15'),
('0006', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20'), -- 仕入単価NULL
('0007', 'おろしがね', 'キッチン用品', 880, 790, '2008-04-28'),
('0008', 'ボールペン', '事務用品', 100, NULL, '2009-11-11'), -- 仕入単価NULL
('0009', '炊飯器', '家電', 15000, 10000, '2023-01-10'),
('0010', '電子レンジ', '家電', 22000, 15000, '2023-01-12');

-- 同名商品の重複（価格違い）
INSERT INTO shohin VALUES ('0011', 'Tシャツ', '衣服', 1500, 800, '2023-02-01');
INSERT INTO shohin VALUES ('0012', 'Tシャツ', '衣服', 1000, 500, '2009-09-20'); -- 完全重複データ（ID違い）

-- 大量生成（49〜100）
INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shire_tanka, torokubi)
SELECT 
    LPAD(CAST(i AS CHAR), 4, '0'),
    CASE WHEN i % 10 = 0 THEN 'サンプル商品(NULL有)' ELSE CONCAT('商品_', i) END,
    CASE WHEN i % 3 = 0 THEN '衣服' WHEN i % 3 = 1 THEN '事務用品' ELSE 'キッチン用品' END,
    (i * 100) % 5000,
    CASE WHEN i % 7 = 0 THEN NULL ELSE (i * 100) % 3500 END, -- 7の倍数で仕入単価NULL
    CASE WHEN i % 5 = 0 THEN NULL ELSE CURRENT_DATE END     -- 5の倍数で登録日NULL
FROM (SELECT @row := @row + 1 AS i FROM (SELECT 0 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) t1, (SELECT 0 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t2, (SELECT @row := 12) t3) AS tmp
WHERE i <= 100;

COMMIT;

--sample2
START TRANSACTION;

INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000A', '東京', '0001', 30);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000A', '東京', '0002', 50);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000A', '東京', '0003', 170);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000B', '名古屋', '0002', 5);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000B', '名古屋', '0003', 620);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000B', '名古屋', '0004', 18);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000B', '名古屋', '0006', 10);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000B', '名古屋', '0007', 40);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000C', '大阪', '0003', 20);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000C', '大阪', '0004', 50);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000C', '大阪', '0006', 90);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000C', '大阪', '0007', 70);
INSERT INTO TenpoShohin (店舗符号, 店舗名, 商品符号, 数量) VALUES ('000D', '福岡', '0001', 100);

COMMIT;
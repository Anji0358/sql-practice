--sample1
START TRANSACTION;

INSERT INTO shohin VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');
INSERT INTO shohin VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
INSERT INTO shohin VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
INSERT INTO shohin VALUES ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');
INSERT INTO shohin VALUES ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');
INSERT INTO shohin VALUES ('0006', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20');
INSERT INTO shohin VALUES ('0007', 'おろしがね', 'キッチン用品', 880, 790, '2008-04-28');
INSERT INTO shohin VALUES ('0008', 'ボールペン', '事務用品', 100, NULL, '2009-11-11');

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
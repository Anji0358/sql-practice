CREATE TABLE shohin (
    shohin_id CHAR(4) NOT NULL,
    shohin_mei VARCHAR(100) NOT NULL,
    shohin_bunrui VARCHAR(32) NOT NULL,
    hanbai_tanka INTEGER,
    shiire_tanka INTEGER,
    torokubi DATE,
    PRIMARY KEY (shohin_id)
);

CREATE TABLE TenpoShohin(
    店舗符号  CHAR(4)       NOT NULL,
    店舗名    VARCHAR(200)  NOT NULL,
    商品符号  CHAR(4)       NOT NULL,
    数量      INTEGER       NOT NULL,
    PRIMARY KEY (店舗符号, 商品符号)
 );
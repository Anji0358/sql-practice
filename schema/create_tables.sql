CREATE TABLE shohin (
    shohin_id CHAR(4) NOT NULL,
    shohin_mei VARCHAR(100) NOT NULL,
    shohin_bunrui VARCHAR(32) NOT NULL,
    hanbai_tanka INTEGER,
    shiire_tanka INTEGER,
    torokubi DATE,
    PRIMARY KEY (shohin_id)
);

CREATE TABLE StoreProduct(
    store_id  CHAR(4)       NOT NULL,
    store_name    VARCHAR(200)  NOT NULL,
    product_id  CHAR(4)       NOT NULL,
    quantity     INTEGER       NOT NULL,
    PRIMARY KEY (store_id, product_id)
 );
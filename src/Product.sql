CREATE DATABASE Product;

USE Product;

CREATE TABLE customer

(
    cID   INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cName VARCHAR(30)        NOT NULL,
    cAge  INT                NOT NULL
);

CREATE TABLE order
(
    oID         INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cID         INT                NOT NULL,
    FOREIGN KEY (cID) REFERENCES customer (cID),
    oDate       DATETIME           NOT NULL,
    oTotalPrice INT                NOT NULL
);

CREATE TABLE oderDetail
(
    pID   INT         NOT NULL,
    oID   INT         NOT NULL,
    PRIMARY KEY (oID, pID),
    FOREIGN KEY (oID) REFERENCES order (oID),
    FOREIGN KEY (pID) REFERENCES product (pID)
);

CREATE TABLE product
(
    pID    INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    pName  VARCHAR(30)        NOT NULL,
    pPrice VARCHAR(30)        NOT NULL
);

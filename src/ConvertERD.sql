CREATE DATABASE QuanlyVatLieu;

USE
    QuanlyVatLieu;

CREATE TABLE PhieuXuat
(
    SoPX   INT      NOT NULL PRIMARY KEY,
    NgaySX DATETIME NOT NULL,
    SLXuat INT      NOT NULL
);

CREATE TABLE VatTu
(
    MaVatTu  INT         NOT NULL,
    TenVattu VARCHAR(30) NOT NULL,
    SoPX     INT         NOT NULL,
    SoPN     INT         NOT NULL,
    PRIMARY KEY (SoPX, SoPN),
    FOREIGN KEY (SoPX) REFERENCES PhieuXuat (SoPX),
    FOREIGN KEY (SoPN) REFERENCES PhieuNhap (SoPN)
);

CREATE TABLE PhieuNhap
(
    SoPN     INT      NOT NULL PRIMARY KEY,
    NgayNhap DATETIME NOT NULL,
    SLNhap   INT      NOT NULL
);

CREATE TABLE NhaCC
(
    MaNCC  INT         NOT NULL PRIMARY KEY,
    TenNCC VARCHAR(30) NOT NULL,
    Diachi VARCHAR(30) NOT NULL,
    Phone  VARCHAR(20) NOT NULL
);
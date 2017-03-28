-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-03-28 02:15:22.987

-- tables
-- Table: chi_tiet_hd
CREATE TABLE chi_tiet_hd (
    ma_chi_tiet_hd int NOT NULL,
    ma_sp int NOT NULL,
    so_luong_ban decimal(10,0) NOT NULL,
    thanh_tien decimal(10,0) NOT NULL,
    ngay_ban timestamp NOT NULL,
    CONSTRAINT chi_tiet_hd_pk PRIMARY KEY (ma_chi_tiet_hd)
)

-- Table: hoa_don
CREATE TABLE hoa_don (
    ma_hd int NOT NULL,
    ma_kh int NOT NULL,
    ma_chi_tiet_hd int NOT NULL,
    ma_sp int NOT NULL,
    CONSTRAINT hoa_don_pk PRIMARY KEY (ma_hd),
);

-- Table: khach_hang
CREATE TABLE khach_hang (
    ma_kh int NOT NULL,
    ten_kh timestamp NOT NULL,
    sdt_kh decimal(10,0) NOT NULL,
    email_kh varchar(255) NOT NULL,
    dia_chi_kh text NOT NULL,
    CONSTRAINT khach_hang_pk PRIMARY KEY (ma_kh)
);

-- Table: loai_sp
CREATE TABLE loai_sp (
    ma_loai_sp int NOT NULL,
    ten_loai_sp varchar(255) NOT NULL,
    ma_loai_sp_cha int NOT NULL,
    CONSTRAINT loai_sp_pk PRIMARY KEY (ma_loai_sp),
    CONSTRAINT fk_loai_sp FOREIGN KEY (ma_loai_sp_cha) REFERENCES loai_sp(ma_loai_sp),
);

-- Table: san_pham
CREATE TABLE san_pham (
    ma_sp int NOT NULL,
    ten_sp varchar(255) NOT NULL,
    gia_sp decimal(10,0) NOT NULL,
    mo_ta_sp text NOT NULL,
    don_vi_tinh varchar(255) NOT NULL,
    anh_sp varchar(255) NOT NULL,
    so_luong_sp decimal(10,0) NOT NULL,
    ma_loai_sp int NOT NULL,
    CONSTRAINT san_pham_pk PRIMARY KEY (ma_sp),
    CONSTRAINT fk_san_pham FOREIGN KEY (ma_loai_sp) REFERENCES loai_sp(ma_loai_sp),
);



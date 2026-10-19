-- Nama   : Cindika Zahira T.P
-- NIM    : 264311064
-- Kelas  : 1C
-- Proyek : Electronic Traffic Law Enforcement (ETLE)
-- UTS Praktik Basis Data - Semester 1

-- SOAL 1: DDL & Relasi

CREATE DATABASE db_etle;
USE db_etle;

-- Tabel Induk 1
CREATE TABLE kendaraan (
    nomor_polisi      VARCHAR(15)  NOT NULL,
    jenis_kendaraan   VARCHAR(30)  NOT NULL,
    merk_type         VARCHAR(100) NOT NULL,
    warna_kendaraan   VARCHAR(30)  NOT NULL,
    stnk_atas_nama    VARCHAR(100) NOT NULL,
    alamat_pemilik    VARCHAR(255) NOT NULL,
    masa_berlaku_stnk DATE         NOT NULL,
    nomor_rangka      VARCHAR(30)  NOT NULL,
    nomor_mesin       VARCHAR(30)  NOT NULL,
    PRIMARY KEY (nomor_polisi)
) ENGINE=InnoDB;

-- Tabel Induk 2
CREATE TABLE petugas (
    nrp_petugas   VARCHAR(20)  NOT NULL,
    nama_petugas  VARCHAR(150) NOT NULL,
    PRIMARY KEY (nrp_petugas)
) ENGINE=InnoDB;

-- Tabel Transaksi
CREATE TABLE pelanggaran (
    id_pelanggaran       INT          NOT NULL AUTO_INCREMENT,
    no_surat_konfirmasi  VARCHAR(60)  NOT NULL,
    no_referensi_sistem  VARCHAR(40)  NOT NULL,
    tgl_surat            DATE         NOT NULL,
    wilayah_hukum        VARCHAR(50)  NOT NULL,
    lokasi_kamera        VARCHAR(100) NOT NULL,
    waktu_capture        DATETIME     NOT NULL,
    kecepatan_tercatat   INT          NOT NULL,
    batas_kecepatan      INT          NOT NULL,
    kategori_pelanggaran VARCHAR(50)  NOT NULL,
    pasal_pelanggaran    VARCHAR(255) NOT NULL,
    nomor_polisi         VARCHAR(15)  NOT NULL,
    nrp_petugas          VARCHAR(20)  NOT NULL,
    PRIMARY KEY (id_pelanggaran),
    CONSTRAINT fk_pelanggaran_kendaraan
        FOREIGN KEY (nomor_polisi) REFERENCES kendaraan (nomor_polisi),
    CONSTRAINT fk_pelanggaran_petugas
        FOREIGN KEY (nrp_petugas) REFERENCES petugas (nrp_petugas)
) ENGINE=InnoDB;

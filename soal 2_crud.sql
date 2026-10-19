-- SOAL 2: Operasi CRUD Dasar

-- [CREATE] Insert data dummy
INSERT INTO kendaraan (nomor_polisi, jenis_kendaraan, merk_type, warna_kendaraan, stnk_atas_nama, alamat_pemilik, masa_berlaku_stnk, nomor_rangka, nomor_mesin) VALUES
('AE1270CR', 'MINIBUS', 'DAIHATSU/ROCKY 1.2 X CVT (A251RS-GBXFJ)', 'PUTIH', 'MARTINI', 'PERUM BUMI MAS 2 BLOK SS-19 RT 58 RW 14 KEL MOJOREJO KEC TAMAN KOTA MADIUN', '2030-07-31', 'MHKAB1AA8SJ023279', 'WAA173121'),
('N1234AB', 'SEDAN', 'TOYOTA/VIOS 1.5 G CVT', 'HITAM', 'BUDI SANTOSO', 'JL. RAYA MALANG NO. 10 KOTA MALANG', '2028-05-12', 'MHFBE1AA5NJ000111', 'NR15221001'),
('L5678CD', 'MINIBUS', 'HONDA/BRIO RS CVT', 'MERAH', 'SITI AMINAH', 'JL. DARMO NO. 25 KOTA SURABAYA', '2029-09-20', 'MHRDE1AA2PJ000222', 'L12B3330002');

INSERT INTO petugas (nrp_petugas, nama_petugas) VALUES
('80091312', 'SEPTA FIRMANSYAH, S.H., S.I.K., M.M., M.H., M.Tr.Mil'),
('80091313', 'AGUS PRASETYO, S.H.'),
('80091314', 'DEWI LESTARI, S.H.');

INSERT INTO pelanggaran (no_surat_konfirmasi, no_referensi_sistem, tgl_surat, wilayah_hukum, lokasi_kamera, waktu_capture, kecepatan_tercatat, batas_kecepatan, kategori_pelanggaran, pasal_pelanggaran, nomor_polisi, nrp_petugas) VALUES
('B/15511/III/YAN.1.2./2026/DITLANTAS', '910-50639-AE1270CR', '2026-03-04', 'POLDA JAWA TIMUR', 'SPEEDCAM TOL KM 548+450 A JSN', '2026-03-04 09:42:00', 144, 120, 'Melanggar Batas Kecepatan', 'Pasal 287 ayat (5) jo Pasal 106 ayat (4) huruf g atau Pasal 115 huruf a', 'AE1270CR', '80091312'),
('B/15512/III/YAN.1.2./2026/DITLANTAS', '910-50640-N1234AB', '2026-03-05', 'POLDA JAWA TIMUR', 'SPEEDCAM TOL KM 548+300 A JSN', '2026-03-05 10:15:00', 135, 120, 'Melanggar Batas Kecepatan', 'Pasal 287 ayat (5) jo Pasal 106 ayat (4) huruf g atau Pasal 115 huruf a', 'N1234AB', '80091313'),
('B/15513/III/YAN.1.2./2026/DITLANTAS', '910-50641-L5678CD', '2026-03-06', 'POLDA JAWA TIMUR', 'SPEEDCAM TOL KM 560+100 B JSN', '2026-03-06 14:30:00', 150, 120, 'Melanggar Batas Kecepatan', 'Pasal 287 ayat (5) jo Pasal 106 ayat (4) huruf g atau Pasal 115 huruf a', 'L5678CD', '80091314');

-- [READ] Tampilkan seluruh isi tabel induk
SELECT * FROM kendaraan;

-- [UPDATE] Ubah kecepatan pada tabel transaksi
UPDATE pelanggaran
SET kecepatan_tercatat = 145
WHERE id_pelanggaran = 1;

-- [DELETE] Hapus satu baris pada tabel transaksi
DELETE FROM pelanggaran
WHERE id_pelanggaran = 3;

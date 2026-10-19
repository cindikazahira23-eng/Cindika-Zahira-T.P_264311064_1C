-- SOAL 3: Query Kompleks & Agregasi Laporan
SELECT k.stnk_atas_nama,
       COUNT(p.id_pelanggaran) AS total_pelanggaran,
       AVG(p.kecepatan_tercatat) AS rata_rata_kecepatan
FROM pelanggaran p
JOIN kendaraan k ON p.nomor_polisi = k.nomor_polisi
WHERE p.kecepatan_tercatat > p.batas_kecepatan
GROUP BY k.stnk_atas_nama;

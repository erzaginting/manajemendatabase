-- CHECK DATA PELANGGAN DENGAN PENGELUARAN TERBANYAK ( 9000000 )


SELECT p.pelanggan_id, p.nama, p.tanggal_lahir, p.jenis_kelamin, p.alamat, p.email, p.no_telepon, r.total_biaya
FROM tb_pelanggan p
JOIN tb_reservasi_hotel r ON p.pelanggan_id = r.pelanggan_id
WHERE r.total_biaya = 9000000;
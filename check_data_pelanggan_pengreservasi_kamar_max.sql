-- CHECK DATA PENGRESERVASI JUMLAH KAMAR TERBANYAK


SELECT p.pelanggan_id, p.nama, p.tanggal_lahir, p.jenis_kelamin, p.alamat, p.email, p.no_telepon, r.jumlah_kamar
FROM tb_pelanggan p
JOIN tb_reservasi_hotel r ON p.pelanggan_id = r.pelanggan_id
WHERE r.jumlah_kamar = (SELECT MAX(jumlah_kamar) FROM tb_reservasi_hotel);
-- CHECK DATA PELANGGAN BERJENIS KELAMIN LAKI LAKI YANG MEMESAN KAMAR SUITE DAN DELUXE


SELECT p.pelanggan_id, p.nama, p.tanggal_lahir, p.jenis_kelamin, p.alamat, p.email, p.no_telepon, k.jenis_kamar
FROM tb_pelanggan p
JOIN tb_reservasi_hotel r ON p.pelanggan_id = r.pelanggan_id
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
WHERE p.jenis_kelamin = 'Laki-laki' 
AND k.jenis_kamar IN ('Deluxe', 'Suite');
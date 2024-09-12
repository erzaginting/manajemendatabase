-- CHECK DATA PENGRESERVASI JENIS KAMAR STANDAR


SELECT p.pelanggan_id, p.nama, p.tanggal_lahir, p.jenis_kelamin, p.alamat, p.email, p.no_telepon, k.jenis_kamar
FROM tb_pelanggan p
JOIN tb_reservasi_hotel r ON p.pelanggan_id = r.pelanggan_id
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
WHERE k.jenis_kamar = 'Standard';
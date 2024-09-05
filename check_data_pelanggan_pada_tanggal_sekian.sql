-- CHECK DATA PELANGGAN PADA TANGGAL 2024-09-01 - 2024-09-25 


SELECT p.pelanggan_id, p.nama, p.tanggal_lahir, p.jenis_kelamin, p.alamat, p.email, p.no_telepon, r.tanggal_check_in, r.tanggal_check_out
FROM tb_pelanggan p
JOIN tb_reservasi_hotel r ON p.pelanggan_id = r.pelanggan_id
WHERE r.tanggal_check_in BETWEEN '2024-09-01' AND '2024-09-25';
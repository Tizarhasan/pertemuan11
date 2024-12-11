SELECT * FROM ViewPesananPelangganPegawai

CREATE VIEW ViewPesananPelangganPegawai
AS
SELECT
Pelanggan.Nama_Pelanggan,
Pelanggan.Alamat,
Pelanggan.No_Tlp,
Pegawai.Nama_Pegawai,
Pesanan.ID_Pesanan,
Pesanan.Tanggal_Pesanan
FROM
Pesanan
JOIN Pegawai ON Pegawai.ID_Pegawai = Pesanan.ID_Pegawai
JOIN Pelanggan ON Pelanggan.ID_Pelanggan = Pesanan.ID_Pelanggan
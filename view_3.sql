SELECT * FROM ViewPesanan

CREATE VIEW ViewPesanan AS
SELECT 
Pesanan.ID_Pelanggan,
Produk.Nama_Produk,
Produk.Harga,
Pesanan_Produk.Jumlah_Produk
FROM Pesanan_Produk
JOIN Pesanan ON Pesanan.ID_Pesanan = Pesanan_Produk.ID_Pesanan
JOIN Produk ON Produk.ID_Produk = Pesanan_Produk.ID_Produk
JOIN Pelanggan ON Pelanggan.ID_Pelanggan = Pesanan.ID_Pelanggan
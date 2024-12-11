CREATE VIEW View_Penjualan_Tinggi AS
SELECT 
    pp.ID_Pesanan AS ID_Pesanan, 
    pr.Nama_Produk AS Nama_Produk, 
    pp.Jumlah_Produk AS Jumlah_Produk, 
    pr.Harga AS Harga,
    (pp.Jumlah_Produk * pr.Harga) AS Total_Penjualan
FROM 
    Pesanan_Produk pp
INNER JOIN 
    Produk pr
ON 
    pp.ID_Produk = pr.ID_Produk
WHERE 
    (pp.Jumlah_Produk * pr.Harga) > 1000000;

	SELECT * FROM View_Penjualan_Tinggi
CREATE VIEW View_Produk_Low_Stock AS
SELECT 
    ID_Produk,
    Nama_Produk,
    Stok,
    Harga
FROM 
    Produk
WHERE 
    Stok < 10;


SELECT * FROM View_Produk_Low_Stock;
CREATE VIEW View_Produk_Harga_Tertinggi AS
SELECT 
    pr.ID_Produk,
    pr.Nama_Produk,
    pr.Harga,
    k.Kategori
FROM 
    Produk pr
JOIN 
    Kategori k ON pr.ID_Kategori = k.ID_Kategori
WHERE 
    pr.Harga = (
        SELECT MAX(Harga)
        FROM Produk p
        WHERE p.ID_Kategori = pr.ID_Kategori
    );

SELECT * FROM View_Produk_Harga_Tertinggi;
CREATE VIEW View_RataRata_Harga_Kategori AS
SELECT 
    k.Kategori,
    AVG(pr.Harga) AS RataRata_Harga
FROM 
    Produk pr
JOIN 
    Kategori k ON pr.ID_Kategori = k.ID_Kategori
GROUP BY 
    k.Kategori;


SELECT * FROM View_RataRata_Harga_Kategori;
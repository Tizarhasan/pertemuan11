SELECT * FROM ViewProdukKategorySupplier

CREATE VIEW ViewProdukKategorySupplier AS
SELECT
Produk.Nama_Produk,
Supplier.Nama_Perusahaan,
Produk.Harga,
Produk.Stok,
Kategori.Kategori
FROM Produk
JOIN Kategori ON Kategori.ID_Kategori = Produk.ID_Kategori
JOIN Supplier ON Supplier.ID_Supplier = Produk.ID_Supplier
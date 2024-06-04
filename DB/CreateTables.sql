CREATE TABLE IF NOT EXISTS `category` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `category` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `product` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `product_name` varchar(100) NOT NULL,
    `price` bigint(20) NOT NULL,
    `image` varchar(1000) NOT NULL,
    `id_category` int(11) NOT NULL,
    `deskripsi` text NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `keranjang` (
    `id_keranjang` int(5) NOT NULL AUTO_INCREMENT,
    `id_product` int(5) NOT NULL,
    `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
    `tgl_keranjang` date NOT NULL,
    `qty` int(4) NOT NULL,
    PRIMARY KEY (`id_keranjang`)
);

CREATE TABLE IF NOT EXISTS `order_product` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `id_product` int(11) NOT NULL,
    `id_pemesan` varchar(100) NOT NULL,
    `name` varchar(100) NOT NULL,
    `email` varchar(100) NOT NULL,
    `address` varchar(1000) NOT NULL,
    `phone` bigint(20) NOT NULL,
    `status` varchar(30) NOT NULL DEFAULT 'New',
    `jumlah` int(4) NOT NULL,
    `tanggal` date NOT NULL,
    PRIMARY KEY (`id`)
); 

CREATE TABLE IF NOT EXISTS `user` (
    `id_user` varchar(50) COLLATE latin1_general_ci NOT NULL,
    `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
    `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
    `level` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
    PRIMARY KEY (`id_user`)
);
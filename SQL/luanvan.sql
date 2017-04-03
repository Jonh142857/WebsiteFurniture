-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2017 at 10:46 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luanvan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cthd`
--

CREATE TABLE `cthd` (
  `SP_ID` int(11) NOT NULL,
  `DH_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `cthd`
--

INSERT INTO `cthd` (`SP_ID`, `DH_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `DH_ID` int(11) NOT NULL,
  `U_ID` int(11) DEFAULT NULL,
  `HTTT_ID` int(11) DEFAULT NULL,
  `DH_NGAYDAT` date NOT NULL,
  `DH_NGAYGIAO` date DEFAULT NULL,
  `DH_TRANGTHAI` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`DH_ID`, `U_ID`, `HTTT_ID`, `DH_NGAYDAT`, `DH_NGAYGIAO`, `DH_TRANGTHAI`) VALUES
(1, 1, 1, '2017-03-01', '2017-03-20', 'Đã giao hàng và thanh toán');

-- --------------------------------------------------------

--
-- Table structure for table `htthanhtoan`
--

CREATE TABLE `htthanhtoan` (
  `HTTT_ID` int(11) NOT NULL,
  `HTTT_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `HTTT_GHICHU` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `htthanhtoan`
--

INSERT INTO `htthanhtoan` (`HTTT_ID`, `HTTT_TEN`, `HTTT_GHICHU`) VALUES
(1, 'COD', 'Thanh toán tại chỗ khi nhận hàng.');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `KM_ID` int(11) NOT NULL,
  `KM_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `KM_NOIDUNG` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`KM_ID`, `KM_TEN`, `KM_NOIDUNG`) VALUES
(1, 'Không', 'Không có khuy?n mãi !!'),
(3, 'Xã hàng cu?i n?m', 'Gi?m 50%');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `LSP_ID` int(11) NOT NULL,
  `LSP_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`LSP_ID`, `LSP_TEN`) VALUES
(1, 'Bàn'),
(2, 'Ghế'),
(3, 'Giường');

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `NSX_ID` int(11) NOT NULL,
  `NSX_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `NSX_DIACHI` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `NSX_EMAIL` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `NSX_SDT` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`NSX_ID`, `NSX_TEN`, `NSX_DIACHI`, `NSX_EMAIL`, `NSX_SDT`) VALUES
(1, 'Cty TNHH nội thất Văn Huy', 'Cần Thơ', 'huy@gmail.com', '01672462223');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `R_ID` int(11) NOT NULL,
  `R_ROLEL` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`R_ID`, `R_ROLEL`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `U_ID` int(11) NOT NULL,
  `R_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`U_ID`, `R_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `SP_ID` int(11) NOT NULL,
  `LSP_ID` int(11) DEFAULT NULL,
  `NSX_ID` int(11) DEFAULT NULL,
  `SP_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_GIA` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_HINH` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_QRCODE` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_MOTA` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`SP_ID`, `LSP_ID`, `NSX_ID`, `SP_TEN`, `SP_GIA`, `SP_HINH`, `SP_QRCODE`, `SP_MOTA`) VALUES
(1, 1, 1, 'Bàn gỗ 01', '500000', 'null', 'null', 'Bàn gỗ 01');

-- --------------------------------------------------------

--
-- Table structure for table `sp_km`
--

CREATE TABLE `sp_km` (
  `SP_ID` int(11) NOT NULL,
  `KM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sp_km`
--

INSERT INTO `sp_km` (`SP_ID`, `KM_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `U_ID` int(11) NOT NULL,
  `U_EMAIL` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `U_PASSWORD` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `U_TEN` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `U_DIACHI` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `U_SDT` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`U_ID`, `U_EMAIL`, `U_PASSWORD`, `U_TEN`, `U_DIACHI`, `U_SDT`) VALUES
(1, 'admin@gmail.com', 'admin', 'Nguyễn Văn Huy', 'Cần Thơ', '01672462223');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`SP_ID`,`DH_ID`),
  ADD KEY `DH_ID` (`DH_ID`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`DH_ID`),
  ADD KEY `HTTT_ID` (`HTTT_ID`),
  ADD KEY `U_ID` (`U_ID`);

--
-- Indexes for table `htthanhtoan`
--
ALTER TABLE `htthanhtoan`
  ADD PRIMARY KEY (`HTTT_ID`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`KM_ID`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`LSP_ID`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`NSX_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`R_ID`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`U_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`SP_ID`),
  ADD KEY `LSP_ID` (`LSP_ID`),
  ADD KEY `NSX_ID` (`NSX_ID`);

--
-- Indexes for table `sp_km`
--
ALTER TABLE `sp_km`
  ADD PRIMARY KEY (`SP_ID`,`KM_ID`),
  ADD KEY `KM_ID` (`KM_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`U_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `DH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `htthanhtoan`
--
ALTER TABLE `htthanhtoan`
  MODIFY `HTTT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `KM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `LSP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `NSX_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `SP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cthd`
--
ALTER TABLE `cthd`
  ADD CONSTRAINT `cthd_ibfk_1` FOREIGN KEY (`SP_ID`) REFERENCES `sanpham` (`SP_ID`),
  ADD CONSTRAINT `cthd_ibfk_2` FOREIGN KEY (`DH_ID`) REFERENCES `donhang` (`DH_ID`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`HTTT_ID`) REFERENCES `htthanhtoan` (`HTTT_ID`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`U_ID`) REFERENCES `user` (`U_ID`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `user` (`U_ID`),
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`R_ID`) REFERENCES `role` (`R_ID`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`LSP_ID`) REFERENCES `loaisanpham` (`LSP_ID`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`NSX_ID`) REFERENCES `nhasanxuat` (`NSX_ID`);

--
-- Constraints for table `sp_km`
--
ALTER TABLE `sp_km`
  ADD CONSTRAINT `sp_km_ibfk_1` FOREIGN KEY (`KM_ID`) REFERENCES `khuyenmai` (`KM_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

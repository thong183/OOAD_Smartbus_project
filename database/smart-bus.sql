-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:47 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart-bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `IDKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TENKH` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `NGAYSINH` date NOT NULL,
  `GIOITINH` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SODUTK` int(11) NOT NULL,
  `SDT` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MATKHAU` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`IDKH`, `TENKH`, `NGAYSINH`, `GIOITINH`, `SODUTK`, `SDT`, `EMAIL`, `MATKHAU`) VALUES
('thib', 'Nguyễn Thị B', '1999-05-08', 'nữ', 200000, '0123456783', 'nguyenb@gmail.com', 'nguyenb123'),
('vana', 'Nguyễn Văn A', '1999-08-08', 'nam', 100000, '0789255147', 'nguyena@gmail.com', 'nguyena123'),
('vanc', 'Lê Văn C', '1998-10-11', 'nam', 500000, '0789564264', 'vanc@gmail.com', 'vanc123');

-- --------------------------------------------------------

--
-- Table structure for table `lich_su_di_chuyen`
--

CREATE TABLE `lich_su_di_chuyen` (
  `IDTUYEN` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IDKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CHIPHI` int(11) NOT NULL,
  `NGAYDI` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lich_su_di_chuyen`
--

INSERT INTO `lich_su_di_chuyen` (`IDTUYEN`, `IDKH`, `CHIPHI`, `NGAYDI`) VALUES
('BT-BXCL', 'vana', 5000, '2019-11-21'),
('BT-DS', 'thib', 5000, '2019-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `lo_trinh`
--

CREATE TABLE `lo_trinh` (
  `IDTRAM` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IDTUYEN` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `LUOT` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lo_trinh`
--

INSERT INTO `lo_trinh` (`IDTRAM`, `IDTUYEN`, `LUOT`) VALUES
('A01', 'BT-BXCL', ''),
('A02', 'BT-BXCL', ''),
('A03', 'BT-BXCL', ''),
('A04', 'BT-BXCL', ''),
('A05', 'BT-BXCL', ''),
('A06', 'BT-BXCL', ''),
('A07', 'BT-BXCL', ''),
('A08', 'BT-BXCL', ''),
('A08', 'BT-DS', ''),
('A09', 'BT-BXCL', ''),
('A10', 'BT-BXCL', ''),
('A11', 'BT-BXCL', ''),
('A12', 'BT-BXCL', ''),
('A13', 'BT-BXCL', ''),
('A14', 'BT-BXCL', ''),
('A15', 'BT-BXCL', ''),
('A16', 'BT-BXCL', ''),
('A17', 'BT-BXCL', ''),
('A18', 'BT-BXCL', ''),
('A19', 'BT-BXCL', ''),
('A20', 'BT-BXCL', ''),
('A21', 'BT-BXCL', ''),
('A22', 'BT-BXCL', ''),
('A23', 'BT-BXCL', ''),
('A24', 'BT-BXCL', ''),
('A25', 'BT-BXCL', ''),
('A26', 'BT-BXCL', ''),
('A27', 'BT-BXCL', ''),
('A28', 'BT-BXCL', ''),
('A29', 'BT-BXCL', ''),
('A30', 'BT-DS', ''),
('A31', 'BT-DS', ''),
('A32', 'BT-DS', ''),
('A33', 'BT-DS', ''),
('A34', 'BT-DS', ''),
('A35', 'BT-DS', ''),
('A36', 'BT-DS', ''),
('A37', 'BT-DS', ''),
('A38', 'BT-DS', ''),
('A39', 'BT-DS', ''),
('A40', 'BT-DS', ''),
('A41', 'BT-DS', ''),
('A42', 'BT-DS', ''),
('A43', 'BT-DS', ''),
('A44', 'BT-DS', ''),
('A45', 'BT-DS', ''),
('A46', 'BT-DS', ''),
('A47', 'BT-DS', ''),
('A48', 'BT-DS', ''),
('A49', 'BT-DS', ''),
('A50', 'BT-DS', ''),
('A51', 'BT-DS', ''),
('A52', 'BT-DS', ''),
('A53', 'BT-DS', ''),
('A54', 'BT-DS', ''),
('A55', 'BT-DS', '');

-- --------------------------------------------------------

--
-- Table structure for table `quan_tri`
--

CREATE TABLE `quan_tri` (
  `IDQT` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TENQT` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quan_tri`
--

INSERT INTO `quan_tri` (`IDQT`, `TENQT`, `EMAIL`, `PASSWORD`) VALUES
('LQT', 'Lê Quốc Thống', 'thong1999@gmail.com', 'thong123'),
('NTT', 'Nguyễn Thành Trung', 'nguyenthanhtrung@gmail.com', 'trung123'),
('VYN', 'Võ Yến Nhi', 'voyennhi@gmail.com', 'nhi123');

-- --------------------------------------------------------

--
-- Table structure for table `thoi_gian_xe_den`
--

CREATE TABLE `thoi_gian_xe_den` (
  `IDTRAM` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IDBUS` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TGDEN` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thoi_gian_xe_den`
--

INSERT INTO `thoi_gian_xe_den` (`IDTRAM`, `IDBUS`, `TGDEN`) VALUES
('A01', 'B01', '00:00:00'),
('A02', 'B01', '00:00:00'),
('A03', 'B01', '00:00:00'),
('A04', 'B01', '00:00:00'),
('A05', 'B01', '00:00:00'),
('A06', 'B01', '00:00:00'),
('A07', 'B01', '00:00:00'),
('A08', 'B01', '00:00:00'),
('A08', 'B02', '00:00:00'),
('A09', 'B01', '00:00:00'),
('A10', 'B01', '00:00:00'),
('A11', 'B01', '00:00:00'),
('A12', 'B01', '00:00:00'),
('A13', 'B01', '00:00:00'),
('A14', 'B01', '00:00:00'),
('A15', 'B01', '00:00:00'),
('A16', 'B01', '00:00:00'),
('A17', 'B01', '00:00:00'),
('A18', 'B01', '00:00:00'),
('A19', 'B01', '00:00:00'),
('A20', 'B01', '00:00:00'),
('A21', 'B01', '00:00:00'),
('A22', 'B01', '00:00:00'),
('A23', 'B01', '00:00:00'),
('A24', 'B01', '00:00:00'),
('A25', 'B01', '00:00:00'),
('A26', 'B01', '00:00:00'),
('A27', 'B01', '00:00:00'),
('A28', 'B01', '00:00:00'),
('A29', 'B01', '00:00:00'),
('A30', 'B02', '00:00:00'),
('A31', 'B02', '00:00:00'),
('A32', 'B02', '00:00:00'),
('A33', 'B02', '00:00:00'),
('A34', 'B02', '00:00:00'),
('A35', 'B02', '00:00:00'),
('A36', 'B02', '00:00:00'),
('A37', 'B02', '00:00:00'),
('A38', 'B02', '00:00:00'),
('A39', 'B02', '00:00:00'),
('A40', 'B02', '00:00:00'),
('A41', 'B02', '00:00:00'),
('A42', 'B02', '00:00:00'),
('A43', 'B02', '00:00:00'),
('A44', 'B02', '00:00:00'),
('A45', 'B02', '00:00:00'),
('A46', 'B02', '00:00:00'),
('A47', 'B02', '00:00:00'),
('A48', 'B02', '00:00:00'),
('A49', 'B02', '00:00:00'),
('A50', 'B02', '00:00:00'),
('A51', 'B02', '00:00:00'),
('A52', 'B02', '00:00:00'),
('A53', 'B02', '00:00:00'),
('A54', 'B02', '00:00:00'),
('A55', 'B02', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tram_dung`
--

CREATE TABLE `tram_dung` (
  `IDTRAM` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TENTRAM` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tram_dung`
--

INSERT INTO `tram_dung` (`IDTRAM`, `TENTRAM`) VALUES
('A01', 'Công Trường Mê Linh'),
('A02', 'Bến Bạch Đằng'),
('A03', 'Cục hải quan thành phố'),
('A04', 'Chợ Cũ'),
('A05', 'Trường Cao Thắng'),
('A06', 'Công ty Đường Sắt'),
('A07', 'Bến Thành B'),
('A08', 'Trường Ernst Thalmann'),
('A09', 'KTX Trần Hưng Đạo'),
('A10', 'Rạp Hưng Đạo'),
('A11', 'Bệnh Viện Hàm Mặt'),
('A12', 'Trần Đình Xu'),
('A13', 'Tổng Cty Samco'),
('A14', 'Chợ Nanci'),
('A15', 'Nguyễn Biểu'),
('A16', 'Trường Cao đẳng kinh tế đối ngoại'),
('A17', 'Trần Bình Trọng'),
('A18', 'Bệnh viện chấn thương chỉnh hình'),
('A19', 'Rạp Đồng Tháp'),
('A20', 'Rạp Đống Đa'),
('A21', 'Đồng Khánh'),
('A22', 'Nhà văn hóa quận 5'),
('A23', 'Ngô Quyền'),
('A24', 'Tản Đà'),
('A25', 'Triệu Quang Phục'),
('A26', 'Bưu điện quận 5'),
('A27', 'Hải Thượng Lãn Ông'),
('A28', 'Chợ Kim Biên'),
('A29', 'Bến xe Chợ Lớn'),
('A30', 'Đầu Bến Hàm Nghi'),
('A31', 'Bến Thành C'),
('A32', 'Nguyễn Thị Nghĩa'),
('A33', 'Ngã 6 Phù Đổng'),
('A34', 'Tôn Thất Tùng'),
('A35', 'Nhà Thờ Huyện Sỹ'),
('A36', 'Chùa Lâm Tế'),
('A37', 'City Plaza'),
('A38', 'Nguyễn Trãi'),
('A39', 'Đại học Sư Phạm '),
('A40', 'Chùa Bàu Sen'),
('A41', 'Huỳnh Mẫn Đạt'),
('A42', 'Chợ An Đông'),
('A43', 'Bệnh viện Nguyễn Tri Phương'),
('A44', 'Công viên Văn Lang'),
('A45', 'Bệnh viện Phạm Ngọc Thạch'),
('A46', 'Hùng Vương Plaza'),
('A47', 'Bệnh viện răng Hàm Mặt'),
('A48', 'Đường 3/2'),
('A49', 'Cổng chào CV  Đầm Sen'),
('A50', 'Chợ Phú Thọ'),
('A51', 'CV Lãnh Binh Thăng'),
('A52', 'Nhà Văn hóa Quận 11'),
('A53', 'Chợ Lãnh Binh Thang'),
('A54', 'Tòa án nhân dân Quận 11'),
('A55', 'Bãi xe buýt Đầm Sen');

-- --------------------------------------------------------

--
-- Table structure for table `tuyen_xe`
--

CREATE TABLE `tuyen_xe` (
  `IDTUYEN` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TENTUYEN` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `SLTRAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuyen_xe`
--

INSERT INTO `tuyen_xe` (`IDTUYEN`, `TENTUYEN`, `SLTRAM`) VALUES
('BT-BXCL', 'Bến Thành- Chợ Lớn', 29),
('BT-DS', 'Bến Thành - Đầm Sen', 29),
('BXCL-DHNL', 'Bến Xe Chợ Lớn -Đại học nông lâm', 49);

-- --------------------------------------------------------

--
-- Table structure for table `xe_buyt`
--

CREATE TABLE `xe_buyt` (
  `IDBUS` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `BIENSO` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TUYENDI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TAIXE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SLKHACHTRENXE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xe_buyt`
--

INSERT INTO `xe_buyt` (`IDBUS`, `BIENSO`, `TUYENDI`, `TAIXE`, `SLKHACHTRENXE`) VALUES
('B01', 'XB-5102', 'BT-BXCL', 'TX1', 0),
('B02', 'XB-5210', 'BT-DS', 'TX2', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`IDKH`);

--
-- Indexes for table `lich_su_di_chuyen`
--
ALTER TABLE `lich_su_di_chuyen`
  ADD PRIMARY KEY (`IDTUYEN`,`IDKH`),
  ADD KEY `FK_IDKH` (`IDKH`);

--
-- Indexes for table `lo_trinh`
--
ALTER TABLE `lo_trinh`
  ADD PRIMARY KEY (`IDTRAM`,`IDTUYEN`),
  ADD KEY `FK_TUYENXE` (`IDTUYEN`);

--
-- Indexes for table `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`IDQT`);

--
-- Indexes for table `thoi_gian_xe_den`
--
ALTER TABLE `thoi_gian_xe_den`
  ADD PRIMARY KEY (`IDTRAM`,`IDBUS`),
  ADD KEY `FK_BUS` (`IDBUS`);

--
-- Indexes for table `tram_dung`
--
ALTER TABLE `tram_dung`
  ADD PRIMARY KEY (`IDTRAM`);

--
-- Indexes for table `tuyen_xe`
--
ALTER TABLE `tuyen_xe`
  ADD PRIMARY KEY (`IDTUYEN`);

--
-- Indexes for table `xe_buyt`
--
ALTER TABLE `xe_buyt`
  ADD PRIMARY KEY (`IDBUS`),
  ADD KEY `FK_TUYENDI` (`TUYENDI`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lich_su_di_chuyen`
--
ALTER TABLE `lich_su_di_chuyen`
  ADD CONSTRAINT `FK_IDKH` FOREIGN KEY (`IDKH`) REFERENCES `khach_hang` (`IDKH`),
  ADD CONSTRAINT `FK_TUYEN` FOREIGN KEY (`IDTUYEN`) REFERENCES `tuyen_xe` (`IDTUYEN`);

--
-- Constraints for table `lo_trinh`
--
ALTER TABLE `lo_trinh`
  ADD CONSTRAINT `FK_TRAMXE` FOREIGN KEY (`IDTRAM`) REFERENCES `tram_dung` (`IDTRAM`),
  ADD CONSTRAINT `FK_TUYENXE` FOREIGN KEY (`IDTUYEN`) REFERENCES `tuyen_xe` (`IDTUYEN`);

--
-- Constraints for table `thoi_gian_xe_den`
--
ALTER TABLE `thoi_gian_xe_den`
  ADD CONSTRAINT `FK_BUS` FOREIGN KEY (`IDBUS`) REFERENCES `xe_buyt` (`IDBUS`),
  ADD CONSTRAINT `FK_TRAM` FOREIGN KEY (`IDTRAM`) REFERENCES `tram_dung` (`IDTRAM`);

--
-- Constraints for table `xe_buyt`
--
ALTER TABLE `xe_buyt`
  ADD CONSTRAINT `FK_TUYENDI` FOREIGN KEY (`TUYENDI`) REFERENCES `tuyen_xe` (`IDTUYEN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

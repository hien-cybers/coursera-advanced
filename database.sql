-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3307
-- Thời gian đã tạo: Th5 28, 2026 lúc 03:07 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `coursera_advanced_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activation_tokens`
--

CREATE TABLE `activation_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `activation_tokens`
--

INSERT INTO `activation_tokens` (`id`, `token`, `course_id`, `is_used`, `created_at`) VALUES
(1, 'SEC-KALI-999X', 'course_1', 0, '2026-05-18 16:19:43'),
(2, 'SEC-PYMAL-888X', 'course_2', 0, '2026-05-18 16:19:44'),
(3, 'TOKEN-REDTEAM-2026', 'course_1', 0, '2026-05-20 17:03:18'),
(4, 'TOKEN-MALWARE-2026', 'course_2', 0, '2026-05-20 17:03:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `badge` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `title`, `original_price`, `price`, `badge`, `color`, `icon`) VALUES
('course_1', 'Red Teaming & Ethical Hacking Cơ Bản', 5500000.00, 499000.00, 'Bán chạy nhất', 'from-red-600 to-rose-900', '/coursera_php_backend/uploads/6a11ecb42d3d7_1.jpg'),
('course_10', 'Phân tích mã độc nâng cao (Malware Analysis)', 9500000.00, 899000.00, 'Chuyên gia VIP', 'from-purple-900 to-black', '/coursera_php_backend/uploads/6a11eedc66a06_2.jpg'),
('course_11', 'Vận hành giám sát an ninh mạng (CyberOps)', 6500000.00, 550000.00, 'Nghề HOT', 'from-blue-600 to-indigo-800', '/coursera_php_backend/uploads/6a11ef6b9d27c_3.jpg'),
('course_12', 'Triển khai hệ thống SIEM & Quản lý Log tập trung', 5800000.00, 499000.00, 'Hạ tầng SOC', 'from-indigo-700 to-blue-900', '/coursera_php_backend/uploads/6a126db2b0897_4.jpg'),
('course_13', 'Ứng cứu sự cố an ninh mạng (Incident Response)', 7200000.00, 650000.00, 'Phòng thủ khẩn', 'from-blue-800 to-cyan-900', '/coursera_php_backend/uploads/6a126e21da658_5.jpg'),
('course_14', 'Điều tra số phòng chống tội phạm mạng (Forensics)', 8500000.00, 750000.00, 'Chứng cứ số', 'from-slate-800 to-blue-950', '/coursera_php_backend/uploads/6a126e7002956_6.jpg'),
('course_15', 'Phòng thủ mạng doanh nghiệp nâng cao (Hardening)', 4800000.00, 399000.00, 'Cấu hình chuẩn', 'from-cyan-700 to-indigo-900', '/coursera_php_backend/uploads/6a126f02b72cf_7.jpg'),
('course_16', 'Threat Intelligence - Săn tìm mối đe dọa nâng cao', 6900000.00, 599000.00, 'Tình báo mạng', 'from-indigo-900 to-slate-900', '/coursera_php_backend/uploads/6a126f7840fca_8.jpg'),
('course_17', 'Bảo mật hệ thống phòng thủ Endpoint (EDR/XDR)', 5500000.00, 450000.00, 'An ninh thiết bị', 'from-blue-700 to-slate-800', '/coursera_php_backend/uploads/6a126fd46c7ee_9.jpg'),
('course_18', 'Xây dựng tường lửa Next-Gen Firewall (PaloAlto/Fortinet)', 6000000.00, 500000.00, 'Quản trị mạng', 'from-cyan-600 to-blue-800', '/coursera_php_backend/uploads/6a127041772cb_10.jpg'),
('course_19', 'Hệ thống phát hiện xâm nhập (IDS/IPS Snort)', 4100000.00, 320000.00, 'Gói tin', 'from-blue-900 to-teal-900', '/coursera_php_backend/uploads/6a1270c5a3886_11.jpg'),
('course_2', 'Coding Botnet & Backdoor In Python For Ethical Hacking', 6500000.00, 599000.00, 'Lập trình Malware', 'from-amber-600 to-orange-900', '/coursera_php_backend/uploads/6a12713e2bec0_12.jpg'),
('course_20', 'Quản lý rủi ro tuân thủ tiêu chuẩn ISO 27001', 5000000.00, 390000.00, 'Compliance', 'from-slate-700 to-indigo-950', '/coursera_php_backend/uploads/6a12718d8120f_13.jpg'),
('course_21', 'Kiến trúc phần mềm an toàn (Secure Architecture)', 6800000.00, 590000.00, 'Dành cho Dev', 'from-emerald-600 to-teal-800', '/coursera_php_backend/uploads/6a1271cce3605_14.jpg'),
('course_22', 'Lập trình Web Python Django/Flask bảo mật cao', 3900000.00, 299000.00, 'Python Sec', 'from-teal-700 to-green-900', '/coursera_php_backend/uploads/6a12721ad5b61_15.jpg'),
('course_23', 'Bảo mật ứng dụng Java Spring Boot Enterprise', 5500000.00, 499000.00, 'Backend Sec', 'from-green-700 to-emerald-900', '/coursera_php_backend/uploads/6a12733b513b6_16.jpg'),
('course_24', 'Lập trình Node.js & Cơ chế chống véc-tơ XSS/CSRF', 3400000.00, 250000.00, 'Fullstack Sec', 'from-emerald-800 to-cyan-900', 'fa-brands fa-node-js'),
('course_25', 'Kiểm thử mã nguồn tự động (SAST/DAST)', 6200000.00, 550000.00, 'Rà quét Code', 'from-teal-600 to-slate-900', 'fa-magnifying-glass'),
('course_26', 'Phát triển API an toàn với chuẩn OAuth2 & JWT', 4000000.00, 350000.00, 'Xác thực API', 'from-green-600 to-teal-900', 'fa-key'),
('course_27', 'Lập trình an toàn với ngôn ngữ C/C++ chống lỗi Memory', 5800000.00, 480000.00, 'Hệ thống nhúng', 'from-slate-700 to-emerald-900', 'fa-microchip'),
('course_28', 'Bảo mật ứng dụng Single Page App (React / Angular)', 3700000.00, 290000.00, 'SPA Security', 'from-teal-700 to-blue-800', 'fa-brands fa-react'),
('course_29', 'DevSecOps Foundation: Tích hợp bảo mật vào CI/CD', 7900000.00, 699000.00, 'Automation', 'from-emerald-900 to-gray-900', 'fa-infinity'),
('course_3', 'Advanced Web Penetration Testing (OWASP Top 10)', 4200000.00, 350000.00, 'Thực chiến Web', 'from-red-700 to-orange-800', 'fa-globe'),
('course_30', 'Phân tích thiết kế hệ thống thông tin an toàn', 4600000.00, 390000.00, 'System Design', 'from-green-800 to-slate-900', 'fa-diagram-project'),
('course_31', 'Bảo mật đám mây Amazon Web Services (AWS Security)', 7500000.00, 699000.00, 'AWS Cloud', 'from-orange-600 to-amber-900', 'fa-brands fa-aws'),
('course_32', 'Quản trị bảo mật hạ tầng Microsoft Azure', 7200000.00, 650000.00, 'Azure Cloud', 'from-blue-600 to-cyan-900', 'fa-cloud'),
('course_33', 'Bảo mật Container với Docker và Kubernetes', 6800000.00, 599000.00, 'Ảo hóa nhẹ', 'from-cyan-700 to-indigo-900', 'fa-brands fa-docker'),
('course_34', 'Quản trị mạng nâng cao Cisco CCNA Network', 4500000.00, 390000.00, 'Cisco Core', 'from-slate-600 to-blue-800', 'fa-network-wired'),
('course_35', 'Cấu hình và Quản trị hệ thống Linux Server', 3500000.00, 250000.00, 'Linux Admin', 'from-amber-700 to-stone-900', 'fa-terminal'),
('course_36', 'An ninh hệ thống mạng không dây IoT & SmartHome', 6000000.00, 450000.00, 'Hardware Sec', 'from-orange-700 to-red-950', 'fa-house-signal'),
('course_37', 'Kiến trúc mạng Zero Trust - Luôn luôn xác thực', 8200000.00, 750000.00, 'Zero Trust', 'from-stone-800 to-orange-900', 'fa-user-check'),
('course_38', 'Triển khai Hạ tầng dưới dạng mã an toàn (Terraform)', 6400000.00, 550000.00, 'IaC Security', 'from-amber-600 to-slate-900', 'fa-folder-tree'),
('course_39', 'Bảo mật hệ thống lưu trữ dữ liệu SAN/NAS Doanh nghiệp', 5100000.00, 420000.00, 'Data Center', 'from-orange-800 to-neutral-900', 'fa-hard-drive'),
('course_4', 'Wireless & Wi-Fi Hacking Kỹ thuật số', 3800000.00, 299000.00, 'Lab Wi-Fi', 'from-rose-600 to-red-900', 'fa-wifi'),
('course_40', 'Mật mã học ứng dụng & Cấu hình cặp khóa GnuPG PGP', 4200000.00, 299000.00, 'Cryptography', 'from-amber-700 to-teal-900', 'fa-key'),
('course_41', 'Kiến trúc và Bảo mật cơ sở dữ liệu chuyên sâu', 3500000.00, 350000.00, 'Database', 'from-purple-600 to-fuchsia-900', 'fa-database'),
('course_42', 'Ứng dụng Trí tuệ nhân tạo (AI) trong phát hiện mã độc', 8500000.00, 790000.00, 'Cyber AI', 'from-fuchsia-700 to-indigo-900', 'fa-brain'),
('course_43', 'Xây dựng mô hình Machine Learning chặn Phishing', 6900000.00, 599000.00, 'Học máy', 'from-indigo-700 to-purple-900', 'fa-robot'),
('course_44', 'Bảo mật hệ thống Big Data (Hadoop & Spark)', 7800000.00, 690000.00, 'Big Data Sec', 'from-purple-800 to-slate-950', 'fa-cubes'),
('course_45', 'Kỹ thuật đảo ngược phần mềm (Reverse với Ghidra)', 8990000.00, 890000.00, 'Malware RE', 'from-fuchsia-900 to-stone-900', 'fa-bug'),
('course_46', 'Phân tích dữ liệu nhật ký hệ thống bằng Deep Learning', 7200000.00, 650000.00, 'Deep Learning', 'from-indigo-800 to-fuchsia-900', 'fa-chart-line'),
('course_47', 'Bảo mật chuỗi khối Blockchain & Audit Smart Contract', 9900000.00, 950000.00, 'Web3 Sec', 'from-violet-700 to-purple-950', 'fa-link'),
('course_48', 'An toàn thông tin trong kỷ nguyên Điện toán lượng tử', 9000000.00, 850000.00, 'Quantum Sec', 'from-purple-700 to-black', 'fa-atom'),
('course_49', 'Lập trình hệ thống phân tán an toàn nâng cao', 5600000.00, 450000.00, 'Distributed', 'from-fuchsia-800 to-slate-900', 'fa-network-wired'),
('course_5', 'Social Engineering & Phishing Attack Frameworks', 3200000.00, 199000.00, 'Tâm lý tội phạm', 'from-pink-700 to-rose-900', 'fa-user-ninja'),
('course_50', 'Tổng quan về An toàn thông tin và Đạo đức Hacker', 2500000.00, 150000.00, 'Nhập môn', 'from-violet-600 to-indigo-900', 'fa-gavel'),
('course_6', 'Khai thác lỗ hổng Hệ điều hành Windows/Linux Kernel', 7500000.00, 699000.00, 'Chuyên sâu', 'from-purple-800 to-indigo-900', 'fa-brands fa-linux'),
('course_7', 'Metasploit Framework Nâng Cao & Tùy biến Payload', 4500000.00, 399000.00, 'Pentester Tool', 'from-red-800 to-slate-900', 'fa-terminal'),
('course_8', 'Active Directory Penetration Testing Doanh nghiệp', 8000000.00, 799000.00, 'Hạ tầng lớn', 'from-orange-700 to-red-900', 'fa-server'),
('course_9', 'Mobile App Hacking (Android & iOS Security)', 5200000.00, 450000.00, 'Mobile Sec', 'from-rose-700 to-pink-900', 'fa-mobile-screen'),
('course_redteam', 'Red Teaming & Ethical Hacking Cơ Bản', 2500000.00, 1200000.00, 'Khuyên dùng', 'from-blue-600 to-indigo-700', 'fa-shield-halved'),
('sec_001', 'Nhập môn An toàn thông tin', 500000.00, 300000.00, 'Cơ bản', 'from-gray-600 to-slate-800', 'fa-shield-halved'),
('sec_002', 'Lý thuyết Mật mã học', 800000.00, 600000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-key'),
('sec_003', 'Hacker Mũ trắng: Nhập môn', 1000000.00, 750000.00, 'Hot', 'from-gray-600 to-slate-800', 'fa-user-secret'),
('sec_004', 'Bảo mật mạng không dây', 900000.00, 700000.00, 'Nâng cao', 'from-gray-600 to-slate-800', 'fa-wifi'),
('sec_005', 'Phân tích mã độc cơ bản', 1200000.00, 900000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-virus'),
('sec_006', 'Penetration Testing với Kali Linux', 1500000.00, 1100000.00, 'Hot', 'from-gray-600 to-slate-800', 'fa-terminal'),
('sec_007', 'Bảo mật ứng dụng Web (OWASP Top 10)', 1500000.00, 1200000.00, 'Hot', 'from-gray-600 to-slate-800', 'fa-globe'),
('sec_008', 'Quản trị rủi ro thông tin', 1200000.00, 800000.00, 'Quản lý', 'from-gray-600 to-slate-800', 'fa-chart-pie'),
('sec_009', 'An ninh mạng trong môi trường Cloud', 1800000.00, 1400000.00, 'Nâng cao', 'from-gray-600 to-slate-800', 'fa-cloud'),
('sec_010', 'Điều tra số (Digital Forensics)', 2000000.00, 1500000.00, 'Chuyên gia', 'from-gray-600 to-slate-800', 'fa-magnifying-glass'),
('sec_011', 'An ninh IoT: Thách thức và Giải pháp', 1100000.00, 850000.00, 'Mới', 'from-gray-600 to-slate-800', 'fa-microchip'),
('sec_012', 'Social Engineering: Kỹ thuật thao túng', 700000.00, 500000.00, 'Cơ bản', 'from-gray-600 to-slate-800', 'fa-people-arrows'),
('sec_013', 'Xây dựng Firewall và IDS/IPS', 1300000.00, 1000000.00, 'Kỹ thuật', 'from-gray-600 to-slate-800', 'fa-firewall'),
('sec_014', 'Security Awareness cho doanh nghiệp', 400000.00, 200000.00, 'Cơ bản', 'from-gray-600 to-slate-800', 'fa-chalkboard-user'),
('sec_015', 'Khai thác lỗ hổng Buffer Overflow', 1600000.00, 1300000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-bolt'),
('sec_016', 'Bảo mật hệ điều hành Linux', 800000.00, 600000.00, 'Kỹ thuật', 'from-gray-600 to-slate-800', 'fa-linux'),
('sec_017', 'Bảo mật Active Directory', 1400000.00, 1100000.00, 'Nâng cao', 'from-gray-600 to-slate-800', 'fa-windows'),
('sec_018', 'Reverse Engineering cho người mới', 1900000.00, 1500000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-screwdriver-wrench'),
('sec_019', 'Phòng thủ trước tấn công DoS/DDoS', 1100000.00, 900000.00, 'Kỹ thuật', 'from-gray-600 to-slate-800', 'fa-network-wired'),
('sec_020', 'Tiêu chuẩn bảo mật ISO 27001', 1000000.00, 700000.00, 'Quản lý', 'from-gray-600 to-slate-800', 'fa-file-contract'),
('sec_021', 'Bảo mật cơ sở dữ liệu (SQL Injection)', 1200000.00, 950000.00, 'Hot', 'from-gray-600 to-slate-800', 'fa-database'),
('sec_022', 'Chiến lược ngăn chặn Data Leakage', 1300000.00, 1000000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-lock-open'),
('sec_023', 'An ninh Blockchain và Hợp đồng thông minh', 2000000.00, 1800000.00, 'Mới', 'from-gray-600 to-slate-800', 'fa-link'),
('sec_024', 'Giám sát bảo mật (SIEM) với Splunk', 1700000.00, 1300000.00, 'Chuyên gia', 'from-gray-600 to-slate-800', 'fa-eye'),
('sec_025', 'Ứng phó sự cố (Incident Response)', 1500000.00, 1200000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-truck-medical'),
('sec_026', 'Bảo mật thiết bị di động (Android/iOS)', 1100000.00, 900000.00, 'Mới', 'from-gray-600 to-slate-800', 'fa-mobile-screen'),
('sec_027', 'Bảo mật API RESTful', 1000000.00, 800000.00, 'Kỹ thuật', 'from-gray-600 to-slate-800', 'fa-code'),
('sec_028', 'Kiểm tra xâm nhập hệ thống ngân hàng', 2500000.00, 2000000.00, 'Chuyên gia', 'from-gray-600 to-slate-800', 'fa-money-bill-transfer'),
('sec_029', 'An ninh hệ thống nhúng (Embedded Security)', 1600000.00, 1300000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-microchip'),
('sec_030', 'Kỹ thuật giấu tin (Steganography)', 900000.00, 700000.00, 'Cơ bản', 'from-gray-600 to-slate-800', 'fa-eye-slash'),
('sec_031', 'Bảo mật mạng doanh nghiệp (Cisco ASA/Firepower)', 1800000.00, 1500000.00, 'Nâng cao', 'from-gray-600 to-slate-800', 'fa-router'),
('sec_032', 'Phát triển phần mềm an toàn (Secure Coding)', 1300000.00, 1000000.00, 'Kỹ thuật', 'from-gray-600 to-slate-800', 'fa-laptop-code'),
('sec_033', 'An ninh trí tuệ nhân tạo (AI Security)', 2200000.00, 1900000.00, 'Mới', 'from-gray-600 to-slate-800', 'fa-robot'),
('sec_034', 'Quản lý nhận dạng (Identity Management)', 1200000.00, 900000.00, 'Quản lý', 'from-gray-600 to-slate-800', 'fa-id-card'),
('sec_035', 'Bảo mật container (Docker & Kubernetes)', 1700000.00, 1400000.00, 'Nâng cao', 'from-gray-600 to-slate-800', 'fa-dharmachakra'),
('sec_036', 'Khôi phục dữ liệu từ thảm họa (Disaster Recovery)', 1400000.00, 1100000.00, 'Quản lý', 'from-gray-600 to-slate-800', 'fa-trash-arrow-up'),
('sec_037', 'Kỹ năng Pentest mạng nội bộ', 1600000.00, 1300000.00, 'Hot', 'from-gray-600 to-slate-800', 'fa-building-shield'),
('sec_038', 'An ninh dữ liệu trong Y tế (HIPAA)', 1900000.00, 1600000.00, 'Nâng cao', 'from-gray-600 to-slate-800', 'fa-hospital'),
('sec_039', 'Bảo mật giao thức truyền tin', 800000.00, 600000.00, 'Cơ bản', 'from-gray-600 to-slate-800', 'fa-envelope-open-text'),
('sec_040', 'Săn tìm mối đe dọa (Threat Hunting)', 2100000.00, 1800000.00, 'Chuyên gia', 'from-gray-600 to-slate-800', 'fa-crosshairs'),
('sec_041', 'Bảo mật các ứng dụng SaaS', 1500000.00, 1200000.00, 'Mới', 'from-gray-600 to-slate-800', 'fa-laptop'),
('sec_042', 'Phân tích lỗ hổng phần cứng', 1800000.00, 1500000.00, 'Chuyên sâu', 'from-gray-600 to-slate-800', 'fa-gears'),
('sec_043', 'Bảo mật hệ thống thanh toán điện tử', 2000000.00, 1700000.00, 'Chuyên gia', 'from-gray-600 to-slate-800', 'fa-credit-card'),
('sec_044', 'An ninh mạng trong môi trường Quân sự', 2500000.00, 2200000.00, 'Mới', 'from-gray-600 to-slate-800', 'fa-shield-dog'),
('sec_045', 'Bảo mật cơ sở hạ tầng trọng yếu (SCADA)', 2300000.00, 2000000.00, 'Chuyên gia', 'from-gray-600 to-slate-800', 'fa-industry'),
('sec_046', 'Phân tích logs và sự kiện (ELK Stack)', 1500000.00, 1200000.00, 'Kỹ thuật', 'from-gray-600 to-slate-800', 'fa-scroll'),
('sec_047', 'Quy định bảo mật GDPR', 900000.00, 700000.00, 'Quản lý', 'from-gray-600 to-slate-800', 'fa-gavel'),
('sec_048', 'Kiểm thử hộp đen (Black-box Testing)', 1600000.00, 1300000.00, 'Kỹ thuật', 'from-gray-600 to-slate-800', 'fa-box-open'),
('sec_049', 'An ninh đám mây Azure/AWS', 1800000.00, 1500000.00, 'Hot', 'from-gray-600 to-slate-800', 'fa-aws'),
('sec_050', 'Lãnh đạo và quản lý đội ngũ CISO', 3000000.00, 2500000.00, 'Chuyên gia', 'from-gray-600 to-slate-800', 'fa-user-tie');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_reviews`
--

CREATE TABLE `course_reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_weeks`
--

CREATE TABLE `course_weeks` (
  `id` int(11) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `week_number` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_weeks`
--

INSERT INTO `course_weeks` (`id`, `course_id`, `week_number`, `title`) VALUES
(1, 'course_1', 1, 'Lộ trình các khóa học về an ninh mạng'),
(2, 'course_1', 2, 'Giới thiệu về khóa học'),
(3, 'course_1', 3, 'Tìm hiểu về nghề kiểm thử xâm nhập hệ thống - System Pentesting'),
(4, 'course_1', 4, 'Cài đặt VirtualBox và import máy Kali Linux để làm Lab'),
(5, 'course_1', 5, 'Lập kế hoạch và xác định phạm vi pentest'),
(6, 'course_1', 6, 'Thu thập thông tin và dò quét lỗ hổng bảo mật'),
(7, 'course_1', 7, 'Tấn công sử dụng mánh khóe xã hội (Social engineering attacks)'),
(8, 'course_1', 8, 'Phát hiện lỗ hổng hệ thống mạng'),
(9, 'course_1', 9, 'Phát hiện lỗ hổng ứng dụng'),
(10, 'course_1', 10, 'Khai thác các phương pháp thực hành mã không an toàn'),
(11, 'course_1', 11, 'Module 7 Bảo mật đám mây, di động và IoT'),
(12, 'course_1', 12, 'Thực hiện các kỹ thuật sau khai thác lỗ hổng'),
(13, 'course_1', 13, 'Viết báo cáo kết quả pentest'),
(14, 'course_1', 14, 'Công cụ và phân tích mã'),
(15, 'course_1', 15, 'Kiểm thử bảo mật hệ thống mạng với AI'),
(16, 'course_2', 1, '01 Coding Advance & Undetectable Backdoor'),
(17, 'course_2', 2, '02 Implementing Keylogger To Our Backdoor'),
(18, 'course_2', 3, '03 Making a BOTNET Server'),
(19, 'course_2', 4, '04 Converted Code To Python3!'),
(20, 'course_3', 1, 'Chương 1: Phân tích lỗ hổng Web nâng cao'),
(21, 'course_4', 1, 'Chương 1: Tấn công bẻ khóa giao thức không dây'),
(22, 'course_5', 1, 'Chương 1: Kỹ nghệ xã hội và Framework lừa đảo'),
(23, 'course_6', 1, 'Chương 1: Khai thác lỗ hổng tầng Kernel hệ điều hành'),
(24, 'course_7', 1, 'Chương 1: Làm chủ Metasploit Console'),
(25, 'course_8', 1, 'Chương 1: Thâm nhập hạ tầng Active Directory'),
(26, 'course_9', 1, 'Chương 1: Reverse Engineering ứng dụng di động APK'),
(27, 'course_10', 1, 'Chương 1: Phân tích mã độc tĩnh chuyên sâu'),
(28, 'course_11', 1, 'Chương 1: Giám sát ATTT tổng thể trung tâm SOC'),
(29, 'course_12', 1, 'Chương 1: Thu thập và quản lý log mạng trung tâm'),
(30, 'course_13', 1, 'Chương 1: Quy trình xử lý sự cố mạng tiêu chuẩn NIST'),
(31, 'course_14', 1, 'Chương 1: Khôi phục và phân tích chứng cứ ổ đĩa'),
(32, 'course_15', 1, 'Chương 1: Thiết kế kiến trúc mạng phòng vệ DMZ'),
(33, 'course_16', 1, 'Chương 1: Ứng dụng khung ma trận MITRE ATT&CK'),
(34, 'course_17', 1, 'Chương 1: Triển khai giải pháp giám sát Endpoint XDR'),
(35, 'course_18', 1, 'Chương 1: Cấu hình phân vùng tường lửa doanh nghiệp'),
(36, 'course_19', 1, 'Chương 1: Phát hiện xâm nhập mạng với luật Snort'),
(37, 'course_20', 1, 'Chương 1: Tiêu chuẩn quản lý ATTT ISO 27001'),
(38, 'course_21', 1, 'Chương 1: Phân tích rủi ro phần mềm qua STRIDE'),
(39, 'course_22', 1, 'Chương 1: Lập trình Web an toàn với Python Django'),
(40, 'course_23', 1, 'Chương 1: Bảo mật Backend Spring Security'),
(41, 'course_24', 1, 'Chương 1: Phòng chống lỗ hổng XSS/CSRF Nodejs'),
(42, 'course_25', 1, 'Chương 1: Rà quét mã nguồn tự động SAST/DAST'),
(43, 'course_26', 1, 'Chương 1: Cơ chế bảo mật và xác thực chuỗi JWT'),
(44, 'course_27', 1, 'Chương 1: Phòng chống lỗi quản lý bộ nhớ C++'),
(45, 'course_28', 1, 'Chương 1: Bảo mật ứng dụng React Single Page'),
(46, 'course_29', 1, 'Chương 1: Quy trình tích hợp an toàn CI/CD pipeline'),
(47, 'course_30', 1, 'Chương 1: Thiết kế sơ đồ luồng dữ liệu bảo mật DFD'),
(48, 'course_31', 1, 'Chương 1: Chính sách IAM đặc quyền tối thiểu AWS'),
(49, 'course_32', 1, 'Chương 1: Quản lý định danh hạ tầng Azure AD'),
(50, 'course_33', 1, 'Chương 1: Cô lập tài nguyên an toàn với Docker'),
(51, 'course_34', 1, 'Chương 1: Thiết kế định tuyến Cisco CCNA Network'),
(52, 'course_35', 1, 'Chương 1: Cơ chế phân quyền nâng cao ACL Linux'),
(53, 'course_36', 1, 'Chương 1: Đánh giá điểm yếu thiết bị mạng IoT'),
(54, 'course_37', 1, 'Chương 1: Thiết kế mô hình an ninh Zero Trust'),
(55, 'course_38', 1, 'Chương 1: Quản lý hạ tầng an toàn với Terraform'),
(56, 'course_39', 1, 'Chương 1: Bảo mật hệ thống lưu trữ tệp tin NAS'),
(57, 'course_40', 1, 'Chương 1: Lý thuyết mã hóa khóa công khai RSA'),
(58, 'course_41', 1, 'Chương 1: Thiết kế mô hình ERD chuẩn hóa dữ liệu 3NF'),
(59, 'course_42', 1, 'Chương 1: Trí tuệ nhân tạo phân tích file mã độc'),
(60, 'course_43', 1, 'Chương 1: Học máy phát hiện đường link Phishing'),
(61, 'course_44', 1, 'Chương 1: Phân quyền bảo mật NoSQL MongoDB'),
(62, 'course_45', 1, 'Chương 1: Debug mã nguồn Assembly bằng GDB'),
(63, 'course_46', 1, 'Chương 1: Trực quan hóa log tập trung qua Kibana'),
(64, 'course_47', 1, 'Chương 1: Kiến trúc mã hóa khối SHA256 Blockchain'),
(65, 'course_48', 1, 'Chương 1: Nguy cơ an ninh từ máy tính lượng tử'),
(66, 'course_49', 1, 'Chương 1: Thuật toán đồng thuận phân tán Raft'),
(67, 'course_50', 1, 'Chương 1: Khung pháp luật và đạo đức an ninh mạng'),
(101, 'course_redteam', 1, 'Module 1: Trinh sát và Quét mạng (Recon & Enum)'),
(102, 'course_redteam', 2, 'Module 2: Khai thác lỗ hổng (Exploitation)'),
(103, 'course_redteam', 3, 'Module 3: Tấn công ứng dụng Web (Web Hacking)'),
(104, 'course_redteam', 4, 'Module 4: Leo thang đặc quyền & Hậu khai thác'),
(105, 'sec_001', 1, 'Cơ sở hạ tầng'),
(106, 'sec_001', 2, 'Thực hành nâng cao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount_rate` decimal(4,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `code`, `discount_rate`, `is_active`, `created_at`) VALUES
(1, 'SALE50', 0.50, 1, '2026-05-21 15:07:53'),
(2, 'FREE100', 1.00, 1, '2026-05-21 15:07:53'),
(3, 'ATTT20', 0.20, 1, '2026-05-21 15:07:53'),
(4, 'TET2026', 0.30, 1, '2026-05-21 15:07:53'),
(5, 'COURSERA_999', 0.75, 1, '2026-05-23 16:05:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessons`
--

CREATE TABLE `lessons` (
  `id` varchar(50) NOT NULL,
  `week_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT 'video',
  `title` varchar(255) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `video_url` text NOT NULL,
  `description` text DEFAULT NULL,
  `quiz_question` text DEFAULT NULL,
  `quiz_option_a` text DEFAULT NULL,
  `quiz_option_b` text DEFAULT NULL,
  `quiz_correct_answer` varchar(10) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lessons`
--

INSERT INTO `lessons` (`id`, `week_id`, `type`, `title`, `duration`, `video_url`, `description`, `quiz_question`, `quiz_option_a`, `quiz_option_b`, `quiz_correct_answer`, `flag`) VALUES
('1', 1, 'video', 'Bài 1: Cài đặt Kali Linux & Nmap Scanning', '15:20', 'http://localhost/coursera_php_backend/uploads/6a11daeb22855_1.mp4', 'Tìm hiểu cách thiết lập môi trường tấn công ảo hóa và quét mạng cơ bản với Nmap.', 'Nmap dùng để làm gì?', 'Quét cổng (Port Scanning)', 'Thiết kế giao diện', 'a', 'FLAG{nmap_stealth_scan_success}'),
('1001', 101, 'video', 'Bài 1: Thiết lập Lab & OSINT (Trinh sát nguồn mở)', '15:20', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Tìm hiểu cách thiết lập môi trường tấn công ảo hóa (Kali Linux, Metasploitable) và thu thập thông tin mục tiêu bằng các công cụ OSINT.', 'OSINT là viết tắt của từ gì?', 'Open-Source Intelligence', 'Operating System Interface', 'a', 'FLAG{osint_recon_done}'),
('1002', 101, 'video', 'Bài 2: Quét mạng và Dò tìm dịch vụ với Nmap', '22:15', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Sử dụng Nmap để quét các cổng đang mở, xác định hệ điều hành và các dịch vụ đang chạy trên máy chủ mục tiêu.', 'Tham số nào trong Nmap dùng để quét tàng hình (Stealth Scan)?', '-sS', '-sT', 'a', 'FLAG{nmap_stealth_scan}'),
('1003', 102, 'video', 'Bài 3: Đánh giá lỗ hổng với Nessus', '18:45', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Hướng dẫn cài đặt và cấu hình Nessus Vulnerability Scanner để quét và đánh giá các lỗ hổng bảo mật tự động trên hệ thống.', 'Nessus là công cụ chủ yếu dùng để làm gì?', 'Quét lỗ hổng bảo mật tự động', 'Tấn công từ chối dịch vụ (DDoS)', 'a', 'FLAG{nessus_vuln_found}'),
('1004', 102, 'video', 'Bài 4: Khai thác mục tiêu bằng Metasploit Framework', '30:00', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Làm quen với giao diện msfconsole, cách tìm kiếm exploit, thiết lập payload và tấn công chiếm quyền điều khiển (Reverse Shell).', 'Lệnh nào dùng để tìm kiếm mã khai thác trong msfconsole?', 'search', 'find', 'a', 'FLAG{msf_shell_popped}'),
('1005', 103, 'video', 'Bài 5: Khai thác SQL Injection (SQLi)', '25:10', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Hiểu bản chất của lỗ hổng SQL Injection, cách bypass khung đăng nhập quản trị và trích xuất dữ liệu bằng SQLmap.', 'Ký tự nào thường được dùng phổ biến nhất để test lỗi SQLi?', 'Dấu nháy đơn (\')', 'Dấu chấm phẩy (;)', 'a', 'FLAG{sqli_bypass_admin}'),
('1006', 103, 'video', 'Bài 6: Tấn công Cross-Site Scripting (XSS)', '20:30', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Phân biệt Reflected XSS, Stored XSS và thực hành kịch bản đánh cắp session cookie của người dùng hợp lệ.', 'Hàm Javascript nào thường được hacker dùng để kiểm tra lỗi XSS nhanh nhất?', 'alert()', 'console.log()', 'a', 'FLAG{xss_cookie_stolen}'),
('1007', 104, 'video', 'Bài 7: Leo thang đặc quyền trên Linux (Privilege Escalation)', '28:40', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Các kỹ thuật leo quyền từ user thường lên tài khoản root thông qua khai thác cờ SUID, Cronjobs và Kernel Exploit.', 'Lệnh nào dùng để tìm các file có cờ SUID trên hệ thống Linux?', 'find / -perm -4000', 'grep suid /', 'a', 'FLAG{root_privesc_linux}'),
('1008', 104, 'video', 'Bài 8: Xóa dấu vết và Báo cáo (Clearing Tracks & Reporting)', '15:50', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Cách xóa logs hệ thống trên Linux/Windows một cách an toàn và phương pháp viết báo cáo Pentest chuyên nghiệp bàn giao cho khách hàng.', 'Thư mục nào thường chứa các file logs hệ thống quan trọng trên Linux?', '/var/log', '/etc/logs', 'a', 'FLAG{logs_cleared_safely}'),
('2', 2, 'video', 'Bài 1: Dùng Ghidra phân tích file PE', '22:15', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Phân tích file thực thi (PE) trên Windows bằng công cụ Ghidra để tìm hành vi đáng ngờ.', 'Ghidra được phát triển bởi tổ chức nào?', 'NSA', 'CIA', 'a', 'FLAG{ghidra_decompile_done}'),
('3', 3, 'video', 'Bài 1: Khai thác SQL Injection qua URL', '18:45', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Kỹ thuật chèn mã SQL vào tham số URL để trích xuất dữ liệu từ Database.', 'Ký tự nào thường dùng để test lỗi SQLi?', 'Dấu nháy đơn (\')', 'Dấu chấm phẩy (;)', 'a', 'FLAG{sqli_bypass_admin}'),
('4', 4, 'video', 'Bài 1: Đọc mã Assembly cơ bản', '25:00', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Làm quen với các thanh ghi EAX, EBX và các tập lệnh PUSH, POP, MOV.', 'Thanh ghi nào dùng để chứa kết quả phép toán?', 'EAX', 'ESP', 'a', 'FLAG{asm_registers_pwned}'),
('5', 5, 'video', 'Bài 1: Bắt WPA Handshake với Aircrack-ng', '12:30', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Đưa card wifi về Monitor mode và dùng Aircrack-ng để bắt gói tin Handshake.', 'Công cụ nào dùng để deauth client?', 'Aireplay-ng', 'Airmon-ng', 'a', 'FLAG{wpa2_handshake_captured}'),
('6', 6, 'video', 'Bài 1: Hệ mật mã RSA & PGP', '20:10', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Cơ chế tạo khóa Public/Private key và cách thức mã hóa dữ liệu bất đối xứng.', 'RSA thuộc hệ mật mã nào?', 'Bất đối xứng', 'Đối xứng', 'a', 'FLAG{rsa_key_generated}'),
('7', 7, 'video', 'Bài 1: Dấu chân số & Google Dorks', '14:50', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Sử dụng Google Dorks để tìm kiếm các tệp tin nhạy cảm bị lộ trên Internet.', 'Dork nào dùng để tìm định dạng file?', 'filetype:', 'inurl:', 'a', 'FLAG{dork_found_conf_file}'),
('8', 8, 'video', 'Bài 1: Khai thác Misconfigured SUID trên Linux', '28:40', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Tìm và khai thác các tệp tin có cờ SUID cấu hình sai để lấy quyền root.', 'Lệnh nào tìm file có cờ SUID?', 'find / -perm -4000', 'ls -la', 'a', 'FLAG{root_shell_acquired}'),
('l_c10', 27, 'video', 'Bài 1: Nhận diện cấu trúc Header file PE (Portable Executable) trên Windows', '40 phút', 'https://www.w3schools.com/html/movie.mp4', 'Đọc bảng Import Address Table (IAT) để khoanh vùng các hàm API nguy hiểm mã độc gọi ra.', 'Phần nào trong file PE chứa danh sách các thư viện hàm (.dll) mà phần mềm import?', 'Thư mục .text section', 'Thư mục Import Address Table (IAT)', 'b', NULL),
('l_c11', 28, 'video', 'Bài 1: Quy trình phân tích mức độ cảnh báo sự cố (Alert Triage) trong SOC', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Định biên các bước phân loại cảnh báo thật, cảnh báo giả dựa trên chỉ số đe dọa.', 'Hành động đầu tiên khi phát hiện cảnh báo mã độc mã hóa (Critical Alert) là gì?', 'Cô lập máy tính nhiễm độc khỏi dải mạng LAN văn phòng ngay lập tức.', 'Xóa tệp tin log ghi nhận cảnh báo đó.', 'a', NULL),
('l_c12', 29, 'video', 'Bài 1: Viết cấu hình Logstash để chuẩn hóa dữ liệu Log thô về SIEM', '30 phút', 'https://www.w3schools.com/html/movie.mp4', 'Sử dụng bộ lọc mã Grok để phân tách chuỗi text log thành các trường IP, Timestamp có cấu trúc.', 'Thành phần nào trực tiếp làm nhiệm vụ đẩy log thô từ máy trạm về bộ lọc central?', 'Agent Beats (Filebeat/Winlogbeat)', 'Giao diện Kibana Dashboard', 'a', NULL),
('l_c13', 30, 'video', 'Bài 1: Các giai đoạn ứng cứu sự cố khẩn cấp theo khung tiêu chuẩn NIST', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Triển khai 6 bước từ Chuẩn bị, Phát hiện, Khoanh vùng cho đến Khôi phục sau thảm họa mã độc.', 'Giai đoạn khoanh vùng (Containment) nhằm mục đích cốt lõi gì?', 'Ngăn chặn mã độc lây lan diện rộng sang các hệ thống máy chủ dịch vụ lân cận.', 'Xóa sạch hoàn toàn dấu vết xâm nhập hệ thống.', 'a', NULL),
('l_c14', 31, 'video', 'Bài 1: Kỹ thuật File Carving khôi phục tệp bằng chữ ký ma thuật Magic Numbers', '35 phút', 'https://www.w3schools.com/html/movie.mp4', 'Tìm kiếm cấu trúc byte Header/Footer của định dạng tệp thô trên ổ đĩa đã bị xóa sạch bảng chỉ mục.', 'Kỹ thuật File Carving tái cấu trúc dữ liệu dựa trên yếu tố nào?', 'Dựa vào bảng FAT/NTFS cũ.', 'Dựa vào chữ ký cấu trúc định dạng file (File Signatures / Magic Numbers).', 'b', NULL),
('l_c15', 32, 'video', 'Bài 1: Phân tách vùng bảo vệ DMZ bảo vệ cơ sở dữ liệu nội bộ', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Thiết lập các luật tường lửa cho phép Web server kết nối ra ngoài nhưng cấm Database kết nối trực tiếp Internet.', 'Máy chủ nào bắt buộc phải đặt nằm trong vùng mạng công khai DMZ?', 'Web Server phục vụ khách hàng truy cập public.', 'Database Server lưu dữ liệu tài khoản mật khẩu.', 'a', NULL),
('l_c16', 33, 'video', 'Bài 1: Áp dụng kỹ thuật MITRE ATT&CK Mapping để săn tìm APT', '30 phút', 'https://www.w3schools.com/html/movie.mp4', 'Phân tích hành vi hacker theo chuỗi chiến thuật duy trì truy cập ngầm (Persistence) trên máy nạn nhân.', 'Trong MITRE ATT&CK, \"Persistence\" được hiểu là mục đích chiến thuật gì?', 'Cách thức tin tặc khai thác lỗ hổng ban đầu.', 'Các kỹ thuật giúp duy trì quyền kiểm soát máy tính kể cả khi khởi động lại.', 'b', NULL),
('l_c17', 34, 'video', 'Bài 1: Thu thập chỉ số hành vi tấn công IOA trên hệ thống Endpoint', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Ứng dụng các giải pháp phần mềm EDR theo dõi các tiến trình con được sinh ra từ các phần mềm lạ.', 'Điểm vượt trội của phần mềm giám sát EDR so với Antivirus truyền thống là gì?', 'Phân tích chuỗi hành vi động thời gian thực thay vì so khớp chữ ký tĩnh.', 'Tốc độ quét đĩa cứng nhanh hơn nhờ lưu cache cloud.', 'a', NULL),
('l_c18', 35, 'video', 'Bài 1: Quản trị traffic giữa vùng Inside và Outside trên Firewall', '30 phút', 'https://www.w3schools.com/html/movie.mp4', 'Xây dựng bảng trạng thái kết nối (Stateful Inspection) để kiểm soát dữ liệu mạng ra vào.', 'Mặc định, traffic từ vùng Inside (Nội bộ) đi ra vùng Outside (Internet) sẽ ra sao?', 'Được tự động cho phép đi qua và tạo dòng trạng thái.', 'Bị chặn hoàn toàn trừ khi mở cổng thủ công.', 'a', NULL),
('l_c19', 36, 'video', 'Bài 1: Viết Snort Rules phát hiện véc-tơ quét cổng Stealth SYN Scan', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Phân tích cờ flags và độ dài gói tin TCP để kích hoạt hệ thống cảnh báo IDS thời gian thực.', 'Từ khóa hành động đầu tiên bắt buộc phải có để viết một quy tắc Snort cảnh báo là gì?', 'Từ khóa alert', 'Từ khóa drop', 'a', NULL),
('l_c20', 37, 'video', 'Bài 1: Xây dựng tài liệu tuyên bố áp dụng SOA kiểm duyệt ISO 27001', '20 phút', 'https://www.w3schools.com/html/movie.mp4', 'Khảo sát và gán các mục tiêu kiểm soát an toàn thông tin vào hệ thống quy trình vận hành doanh nghiệp.', 'Chứng nhận ISO 27001 tập trung chuẩn hóa yếu tố nào của tổ chức?', 'Hệ thống Quản lý An toàn Thông tin tổng thể (Con người, Quy trình, Công nghệ).', 'Độ bảo mật mã hóa tuyệt đối của một hàm code.', 'a', NULL),
('l_c21', 38, 'video', 'Bài 1: Đánh giá hiểm họa rò rỉ dữ liệu (Information Disclosure) qua STRIDE', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Áp dụng mô hình tìm kiếm các điểm hở trong thiết kế phần mềm khiến lộ log cấu hình hệ thống.', 'Chữ I trong từ viết tắt mô hình STRIDE đại diện cho hiểm họa an ninh nào?', 'Information Disclosure (Rò rỉ tiết lộ thông tin)', 'Identity Theft (Mạo danh người dùng)', 'a', NULL),
('l_c22', 39, 'video', 'Bài 1: Triệt tiêu hoàn toàn nguy cơ Injection bằng Object-Relational Mapping (ORM)', '30 phút', 'https://www.w3schools.com/html/movie.mp4', 'Sử dụng kiến trúc phân tách tham số dữ liệu nhập vào tự động của thư viện lập trình Django Models.', 'Vì sao công cụ ORM có thể chặn đứng triệt để nguy cơ bị tấn công SQL Injection?', 'Vì ORM tự động tách biệt câu lệnh SQL gốc và dữ liệu nhập vào dạng tham số truyền.', 'Vì ORM tự động mã hóa database sang Hex.', 'a', NULL),
('l_c23', 40, 'video', 'Bài 1: Kiểm soát phân quyền dựa trên vai trò RBAC bằng Spring Security', '35 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Viết các bộ lọc antMatchers để chặn đứng truy cập trái phép cấp URL hệ thống backend Java.', 'Mô hình kiểm soát quyền truy cập RBAC phân quyền dựa trên thành phần nào?', 'Dựa trên vị trí chức vụ, quyền hạn của nhóm người dùng.', 'Dựa trên địa chỉ IP vật lý kết nối mạng.', 'a', NULL),
('l_c24', 41, 'video', 'Bài 1: Cấu hình thuộc tính cookie HttpOnly chống lỗ hổng Session Hijacking', '20 phút', 'https://www.w3schools.com/html/movie.mp4', 'Thiết lập các cờ bảo vệ chuỗi Session Token ngăn chặn mã độc JavaScript độc hại can thiệp lấy cắp.', 'Thuộc tính cookie nào ngăn cấm mã lệnh JavaScript truy cập chuỗi dữ liệu phiên đăng nhập?', 'Thuộc tính HttpOnly', 'Thuộc tính Secure Flag', 'a', NULL),
('l_c25', 42, 'video', 'Bài 1: Tích hợp công cụ SonarQube quét lỗ hổng code tĩnh (SAST) tự động', '30 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Viết mã script trong file cấu hình CI/CD để tự động chạy rà soát chất lượng code trước khi deploy.', 'Công cụ kiểm thử mã nguồn tĩnh SAST thực hiện rà quét lỗ hổng ở giai đoạn nào?', 'Quét trực tiếp trên tệp mã nguồn thô chưa biên dịch.', 'Quét khi ứng dụng đã chạy và đang phản hồi requests.', 'a', NULL),
('l_c26', 43, 'video', 'Bài 1: Cấu trúc 3 thành phần chuỗi ký tự định danh JWT (JSON Web Token)', '25 phút', 'https://www.w3schools.com/html/movie.mp4', 'Phân tích phần Header, Payload dữ liệu và phần chữ ký mã hóa mã băm Signature bảo vệ API.', 'Thành phần nào giúp máy chủ backend xác minh chuỗi dữ liệu JWT không bị sửa đổi dọc đường?', 'Mã băm thuật toán phần Header.', 'Phần mã hóa Chữ ký xác thực số (Signature) ở cuối chuỗi.', 'b', NULL),
('l_c27', 44, 'video', 'Bài 1: Lỗi quản lý giải phóng bộ nhớ nguy hiểm Use-After-Free trong C/C++', '30 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Nghiên cứu cơ chế CPU cấp phát ô nhớ và cách hacker ghi đè mã lệnh độc hại vào vùng con trỏ lạc.', 'Hậu quả nghiêm trọng nhất khi phần mềm dính lỗi bộ nhớ trong mã nguồn C là gì?', 'Ứng dụng bị sập (Crash) hoặc hacker chiếm quyền thực thi mã từ xa RCE.', 'Tệp mã nguồn bị tăng dung lượng trên ổ đĩa.', 'a', NULL),
('l_c28', 45, 'video', 'Bài 1: Cơ chế làm sạch chuỗi text đầu vào (Sanitization) chống lỗi DOM-XSS React', '20 phút', 'https://www.w3schools.com/html/movie.mp4', 'Sử dụng thuộc tính TextNode an toàn thay vì render trực tiếp chuỗi thô nguy hiểm lên DOM.', 'Thuộc tính nào an toàn khi cần chèn văn bản chữ vào giao diện trang web React?', 'Sử dụng thuộc tính textContent hoặc innerText.', 'Sử dụng hàm thực thi thô dangerouslySetInnerHTML.', 'a', NULL),
('l_c29', 46, 'video', 'Bài 1: Triết lý bảo mật Shift-Left trong vòng đời phát triển phần mềm DevSecOps', '35 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Phương pháp đưa các khâu kiểm thử bảo mật an ninh mạng vào ngay bước đầu tiên khảo sát thiết kế.', 'Lợi ích lớn nhất của việc áp dụng tư duy bảo mật Shift-Left là gì?', 'Phát hiện sửa lỗi hổng bảo mật sớm, giảm thiểu chi phí thiệt hại khi vận hành.', 'Tăng tốc độ tính toán phần cứng của máy chủ.', 'a', NULL),
('l_c3', 20, 'video', 'Bài 1: Khai thác nâng cao lỗ hổng Broken Access Control (OWASP #1)', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Nghiên cứu cách thức hacker bypass qua form kiểm tra phân quyền URL và thao túng ID để đọc dữ liệu trái phép.', 'Lỗ hổng nào xảy ra khi đổi tham số ID trên URL để xem thông tin user khác?', 'IDOR (Insecure Direct Object Reference)', 'XSS (Cross-Site Scripting)', 'a', NULL),
('l_c30', 47, 'video', 'Bài 1: Thiết kế ranh giới tin tưởng Trust Boundaries trên sơ đồ luồng dữ liệu DFD', '25 phút', 'https://www.w3schools.com/html/movie.mp4', 'Mô hình hóa các điểm kết nối giữa dải mạng ngoài công cộng và vùng lõi lưu trữ dữ liệu an toàn.', 'Thành phần nào biểu diễn ranh giới ngăn cách vùng an toàn cao và vùng rủi ro trên DFD?', 'Đường kẻ nét đứt biểu diễn Ranh giới tin tưởng (Trust Boundary).', 'Mũi tên chỉ hướng luân chuyển dữ liệu.', 'a', NULL),
('l_c31', 48, 'video', 'Bài 1: Viết chính sách phân quyền JSON Policy chuẩn Least Privilege AWS', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Giới hạn chặt chẽ các quyền Action và Resource để cô lập quyền truy cập thư mục Cloud.', 'Chính sách \"Principle of Least Privilege\" trong bảo mật đám mây nghĩa là gì?', 'Cấp cho người dùng vừa đủ quyền tối thiểu để làm việc, không thừa quyền.', 'Cấp toàn quyền Admin cho tất cả nhân sự.', 'a', NULL),
('l_c32', 49, 'video', 'Bài 1: Cấu hình luật Conditional Access kiểm soát đăng nhập Azure AD', '30 phút', 'https://www.w3schools.com/html/movie.mp4', 'Xác thực đa nhân tố MFA dựa trên các tín hiệu vị trí IP địa lý và độ tin cậy của thiết bị truy cập.', 'Tính năng Conditional Access dùng để làm gì?', 'Cho phép/chặn đăng nhập dựa trên tín hiệu IP, Thiết bị, Vị trí người dùng.', 'Tự động nâng cấu hình RAM/CPU máy ảo.', 'a', NULL),
('l_c33', 50, 'video', 'Bài 1: Cơ chế cô lập tài nguyên Linux Cgroups và Namespaces trong Docker', '30 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Ngăn chặn container chiếm quyền điều khiển máy chủ vật lý host thông qua lỗ hổng thoát ranh giới.', 'Thành phần nào của nhân Linux giúp giới hạn dung lượng phần cứng cấp cho một Container?', 'Cơ chế Linux Control Groups (cgroups)', 'Cơ chế bộ lọc Linux Namespaces', 'a', NULL),
('l_c34', 51, 'video', 'Bài 1: Thiết lập luật kiểm soát mạng Extended Access Control List trên Router Cisco', '35 phút', 'https://www.w3schools.com/html/movie.mp4', 'Viết kịch bản chặn traffic mạng dựa trên cả địa chỉ IP nguồn, IP đích và số hiệu cổng Port.', 'Luật ACL Extended có thể lọc gói tin dựa trên những yếu tố nâng cao nào?', 'Lọc dựa trên cả IP nguồn, IP đích, giao thức mạng và số hiệu cổng Port.', 'Chỉ lọc được duy nhất địa chỉ IP nguồn.', 'a', NULL),
('l_c35', 52, 'video', 'Bài 1: Phân quyền tệp tin hệ thống Linux nâng cao qua lệnh Setfacl', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Vượt qua cơ chế phân quyền rwx truyền thống để chỉ định quyền đọc ghi chi tiết cho từng tài khoản user.', 'Lệnh nào dùng để gán quyền đọc và ghi tệp cho một user cụ thể bằng Linux ACL?', 'setfacl -m u:username:rw filename', 'chmod 777 filename', 'a', NULL),
('l_c36', 53, 'video', 'Bài 1: Đánh giá nguy cơ tấn công Firmware thiết bị nhà thông minh IoT', '25 phút', 'https://www.w3schools.com/html/movie.mp4', 'Phân tích các lỗ hổng sử dụng cặp khóa mã hóa cứng gắn sâu trong chip vi điều khiển phần cứng.', 'Lý do hàng đầu khiến camera giám sát IoT dễ bị tin tặc xâm nhập là gì?', 'Thiết bị vẫn giữ nguyên mật khẩu quản trị mặc định của nhà sản xuất.', 'Tốc độ đường truyền Internet bị suy giảm.', 'a', NULL),
('l_c37', 54, 'video', 'Bài 1: 3 Cột mốc cốt lõi triển khai mô hình kiến trúc Zero Trust', '30 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Loại bỏ hoàn toàn ranh giới mạng an toàn, thực hiện xác thực liên tục trên mọi yêu cầu requests.', 'Triết lý cốt lõi của mô hình bảo mật an ninh mạng Zero Trust là gì?', 'Luôn luôn xác thực, không bao giờ tin tưởng dù kết nối đến từ mạng nội bộ.', 'Tin tưởng tuyệt đối mọi thiết bị nằm trong dải mạng LAN văn phòng.', 'a', NULL),
('l_c38', 55, 'video', 'Bài 1: Quản lý file trạng thái terraform.tfstate an toàn tránh lộ thông tin Cloud', '25 phút', 'https://www.w3schools.com/html/movie.mp4', 'Sử dụng các kho lưu trữ bảo mật từ xa (Remote Backends) kết hợp mã hóa dữ liệu đĩa cứng.', 'Vì sao tệp tin terraform.tfstate cần được bảo vệ và phân quyền chặt chẽ?', 'Vì tệp này chứa toàn bộ thông tin cấu hình hệ thống bao gồm cả mật khẩu văn bản thô.', 'Vì tệp này chứa mã nguồn nhị phân chạy web.', 'a', NULL),
('l_c39', 56, 'video', 'Bài 1: Cấu hình mã hóa phân vùng đĩa cứng và bảo mật giao thức tệp chia sẻ NFS', '30 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Triển khai tường lửa giới hạn dải IP máy trạm được phép mount ổ đĩa dữ liệu doanh nghiệp.', 'Giao thức nào thường được dùng để chia sẻ tệp an toàn trong môi trường mạng Linux?', 'Giao thức chia sẻ dữ liệu mạng NFS (Network File System).', 'Giao thức truyền siêu văn bản HTTP thô.', 'a', NULL),
('l_c4', 21, 'video', 'Bài 1: Phân tích cơ chế bắt tay 4 bước WPA 4-Way Handshake và lỗ hổng Krack', '20 phút', 'https://www.w3schools.com/html/movie.mp4', 'Bắt gói tin không lưu (handshake) và phân tích quá trình trao đổi mã hóa khóa ANonce và SNonce.', 'Thành phần nào được truyền công khai trong quá trình bắt tay sóng Wi-Fi?', 'Khóa mật mã PMK', 'Mã ngẫu nhiên ANonce và SNonce', 'b', NULL),
('l_c40', 57, 'video', 'Bài 1: Bản chất toán học bài toán phân tích thừa số nguyên tố lớn mã hóa RSA', '20 phút', 'https://www.w3schools.com/html/movie.mp4', 'Khảo sát hàm số Euler và cách tạo lập cặp khóa Public/Private Key bảo mật bất đối xứng.', 'Trong hệ mật mã bất đối xứng PGP, thành phần nào dùng để giải mã tệp tin mã hóa gửi đến?', 'Khóa bí mật (Private Key) được lưu giữ cẩn mật của chính bạn.', 'Khóa công khai (Public Key) được chia sẻ rộng rãi.', 'a', NULL),
('l_c41', 58, 'video', 'Bài 1: Các bước chuẩn hóa lược đồ bảng dữ liệu lên mức cấu trúc chuẩn 3NF', '30 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Tách bảng dữ liệu, xử lý phụ thuộc hàm bắc cầu để loại bỏ hiện tượng dư thừa thông tin database.', 'Mục tiêu chính lớn nhất của việc thực hiện chuẩn hóa dữ liệu lên mức 3NF là gì?', 'Loại bỏ trùng lặp dữ liệu và triệt tiêu các lỗi bất thường khi dữ liệu thay đổi.', 'Tăng dung lượng lưu trữ tối đa của file.', 'a', NULL),
('l_c42', 59, 'video', 'Bài 1: Chuyển đổi mã nhị phân file thực thi thành ảnh để mạng nơ-ron CNN phân tích', '25 phút', 'https://www.w3schools.com/html/movie.mp4', 'Biến đổi mảng bytes thành ma trận điểm ảnh xám để nhận diện chữ ký hành vi mã độc nhanh.', 'Vì sao việc đổi file nhị phân thành ảnh giúp ích cho mô hình Trí tuệ nhân tạo?', 'Mô hình AI áp dụng mạng nơ-ron cuộn CNN chuyên xử lý ảnh để nhận diện phân loại mã độc nhanh.', 'Giúp tệp tin độc hại không tự chạy được.', 'a', NULL),
('l_c43', 60, 'video', 'Bài 1: Trích xuất ma trận đặc trưng (Features) chuỗi URL phát hiện link lừa đảo', '35 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Sử dụng Python bóc tách độ dài link, số lượng chấm để làm sạch dữ liệu cấp cho mô hình học máy.', 'Dữ liệu đầu vào lý tưởng nhất cấp cho một thuật toán học máy ML phân tích là gì?', 'Mảng dữ liệu cấu trúc dạng số (Features Matrix) đã được chuẩn hóa.', 'Đoạn văn bản thô dài chưa qua xử lý.', 'a', NULL),
('l_c44', 61, 'video', 'Bài 1: Bật tính năng Authorization và bảo mật cổng truy cập NoSQL MongoDB', '25 phút', 'https://www.w3schools.com/html/movie.mp4', 'Cấu hình tệp tin mongod.conf chặn đứng kết nối ẩn danh không đi kèm chuỗi mật khẩu xác thực.', 'Mặc định khi vừa cài đặt xong, cơ sở dữ liệu MongoDB cho phép kết nối thế nào?', 'Mở cổng công khai và không yêu cầu mật khẩu đăng nhập (Cần phải cấu hình lại).', 'Bắt buộc người dùng phải có chứng chỉ số SSL.', 'a', NULL),
('l_c45', 62, 'video', 'Bài 1: Giám sát sự thay đổi của các thanh ghi EAX, EBX, EIP bằng trình gỡ lỗi GDB', '40 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Thiết lập các điểm dừng (Breakpoints) để bắt gói tin, theo dõi đỉnh bộ đệm stack.', 'Thanh ghi nào giữ địa chỉ đỉnh hiện tại của bộ nhớ vùng đệm Stack trên kiến trúc x86?', 'Thanh ghi ESP (Stack Pointer)', 'Thanh ghi EAX', 'a', NULL),
('l_c46', 63, 'video', 'Bài 1: Cấu hình bộ chỉ mục ElasticSearch hiển thị đồ thị cảnh báo tấn công', '30 phút', 'https://www.w3schools.com/html/movie.mp4', 'Kết nối dữ liệu luồng lớn hiển thị biểu đồ rà quét véc-tơ xâm nhập thời gian thực lên Kibana.', 'Hệ thống Kibana đóng vai trò gì trong kiến trúc xử lý Log tập trung dữ liệu lớn?', 'Giao diện hiển thị trực quan hóa biểu đồ phân tích dữ liệu cho kỹ sư SOC.', 'Hệ thống cơ sở dữ liệu phân tán lưu trữ file log.', 'a', NULL),
('l_c47', 64, 'video', 'Bài 1: Bản chất thuật toán đồng thuận toán học Proof of Work trong chuỗi khối', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Giải mã cơ chế tìm chuỗi số ngẫu nhiên Nonce tạo ra mã băm khối SHA256 nhỏ hơn mục tiêu.', 'Mục đích tối cao cốt lõi của thuật toán đồng thuận PoW trong Blockchain là gì?', 'Ngăn chặn giả mạo lịch sử giao dịch dữ liệu nhờ cơ chế toán học không thể đảo ngược.', 'Tăng tốc độ truyền tải dữ liệu gấp hàng nghìn lần.', 'a', NULL),
('l_c48', 65, 'video', 'Bài 1: Sức mạnh thuật toán lượng tử Grover phá vỡ hệ mật mã đối xứng AES', '35 phút', 'https://www.w3schools.com/html/movie.mp4', 'Đánh giá nguy cơ không gian khóa bị rút ngắn căn bậc hai trước sức mạnh tính toán lượng tử tương lai.', 'Để an toàn trước sức mạnh của máy tính lượng tử, độ dài khóa AES khuyến nghị là bao nhiêu?', 'Nâng cấp lên chuẩn AES-256 bits để đảm bảo không gian khóa đủ lớn an toàn.', 'Giữ nguyên ở mức AES-128 bits.', 'a', NULL),
('l_c49', 66, 'video', 'Bài 1: Triển khai mô hình đồng thuận phân tán Raft chống lỗi lệch trạng thái', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Xây dựng cơ chế bầu chọn máy chủ Leader điều phối dữ liệu đồng bộ giữa các node mạng.', 'Hiện tượng \"Split-Brain\" trong cụm máy chủ phân tán lớn xảy ra khi nào?', 'Khi cụm máy chủ bị cô lập làm 2 phần, và cả 2 phần đều tự nhận là máy chủ Leader.', 'Khi ổ đĩa cứng của máy chủ master bị hỏng vật lý.', 'a', NULL),
('l_c5', 22, 'video', 'Bài 1: Kỹ thuật xây dựng kịch bản Phishing đánh lừa bộ lọc Email', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Tận dụng tâm lý khẩn cấp và thiết lập các form nhập liệu giả mạo giống hệt trang đăng nhập doanh nghiệp.', 'Yếu tố tâm lý nào thường được tận dụng mạnh nhất trong Social Engineering?', 'Tạo ra sự khẩn cấp (Urgency) hoặc phần thưởng có giá trị.', 'Yêu cầu cập nhật thông số driver hệ thống.', 'a', NULL),
('l_c50', 67, 'video', 'Bài 1: Ranh giới pháp lý Luật an ninh mạng hiện hành đối với Chuyên gia Pentest', '15 phút', 'https://www.w3schools.com/html/movie.mp4', 'Phân tích các điều luật quy định về phạm vi cấp phép thử nghiệm xâm nhập hệ thống.', 'Yếu tố tiên quyết phân định một hành động thâm nhập mạng hợp pháp của Ethical Hacker là gì?', 'Văn bản chấp thuận đồng ý ký kết và ủy quyền chính thức từ chủ sở hữu hệ thống.', 'Việc hacker đó không lấy đi dữ liệu thô nào.', 'a', NULL),
('l_c6', 23, 'video', 'Bài 1: Cơ chế bảo vệ bộ nhớ ảo hóa Kernel và lỗi nguy hiểm Ring 0', '35 phút', 'https://www.w3schools.com/html/movie.mp4', 'Đào sâu không gian lõi hệ điều hành, cơ chế bảo vệ phân vùng ô nhớ chống can thiệp mã độc.', 'Hệ điều hành thực thi các câu lệnh driver cốt lõi ở tầng đặc quyền nào?', 'Tầng Ring 0 (Kernel Mode)', 'Tầng Ring 3 (User Mode)', 'a', NULL),
('l_c7', 24, 'video', 'Bài 1: Tạo và tối ưu hóa mã độc Meterpreter tránh máy quét chữ ký tĩnh', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Thực hành các câu lệnh msfvenom kết hợp kỹ thuật obfuscation mã nguồn bẻ gãy bộ nhận diện AV.', 'Cờ lệnh nào trong Msfvenom dùng để định dạng đuôi file đầu ra (exe/elf/raw)?', 'Cờ lệnh -p', 'Cờ lệnh -f (Format)', 'b', NULL),
('l_c8', 25, 'video', 'Bài 1: Tấn công Kerberoasting chiếm vé dịch vụ Domain Controller', '35 phút', 'https://www.w3schools.com/html/movie.mp4', 'Trích xuất vé cấp dịch vụ TGS từ bộ nhớ Active Directory để tiến hành bẻ khóa mật khẩu offline.', 'Vé nào được cấp đầu tiên bởi thành phần AS trong xác thực Kerberos?', 'Vé TGT (Ticket Granting Ticket)', 'Vé TGS (Ticket Granting Service)', 'a', NULL),
('l_c9', 26, 'video', 'Bài 1: Dịch ngược mã nguồn Android bằng Jadx và phân tích tệp Manifest', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Khảo sát file cấu hình AndroidManifest.xml để phát hiện các lỗ hổng phân quyền nhạy cảm ứng dụng.', 'Mã nguồn logic lớp của ứng dụng Android được biên dịch nằm trong file nào?', 'File classes.dex', 'File resources.arsc', 'a', NULL),
('py_c1_b1', 16, 'video', 'Bài 1.1: Kiến trúc kết nối Socket ngược (Reverse TCP Connection)', '30 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Lập trình mã Client kết nối từ máy nạn nhân ngược về máy Hacker để vượt qua bộ lọc Firewall.', 'Ưu điểm lớn nhất của Reverse Connection?', 'Vượt qua cơ chế chặn Inbound của Firewall nạn nhân', 'Tốc độ truyền dữ liệu nhanh hơn', 'a', 'FLAG{BYPASS_WINDOWS_DEFENDER_OK}'),
('py_c1_b2', 16, 'video', 'Bài 1.2: Kỹ thuật bypass Windows Defender và lẩn trốn AV', '25 phút', 'https://www.w3schools.com/html/movie.mp4', 'Sử dụng các phương pháp mã hóa Obfuscation mã nguồn Python để che mắt trình quét tĩnh.', 'Obfuscation nghĩa là gì?', 'Làm mờ, làm rối mã nguồn để tránh bị nhận diện chữ ký tĩnh', 'Biên dịch mã nguồn thành file ảnh', 'a', NULL),
('py_c2_b1', 17, 'video', 'Bài 2.1: Lắng nghe tín hiệu bàn phím với thư viện Pynput', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Xây dựng module Keylogger ngầm chạy ẩn dưới background của hệ thống.', 'Thư viện nào dùng để bắt phím bấm Python?', 'pynput', 'os', 'a', NULL),
('py_c2_b2', 17, 'video', 'Bài 2.2: Đồng bộ log bàn phím và gửi dữ liệu lén qua mạng', '20 phút', 'https://www.w3schools.com/html/movie.mp4', 'Thiết lập luồng gửi báo cáo phím bấm định kỳ về máy chủ điều khiển.', 'Dữ liệu phím bấm gửi về đâu?', 'Máy chủ C2 điều khiển của Hacker', 'Email công cộng của Google', 'a', NULL),
('py_c3_b1', 18, 'video', 'Bài 3.1: Xây dựng máy chủ CNC đa luồng (Multi-threading Server)', '40 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Lập trình socket đa luồng cho phép quản lý và ra lệnh đồng thời cho hàng loạt máy nạn nhân (Zombies).', 'Mục đích của cơ chế Multi-threading?', 'Quản lý nhiều kết nối botnet đồng thời cùng một lúc', 'Tự động bẻ khóa mật khẩu máy tính', 'a', NULL),
('py_c4_b1', 19, 'video', 'Bài 4.1: Chuẩn hóa cú pháp và tối ưu hóa xử lý chuỗi Bytes/Strings', '25 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Chuyển đổi toàn bộ kiến trúc mã nguồn sang Python 3 để tương thích với các nền tảng Linux/Windows hiện đại.', 'Cú pháp socket Python 3 bắt buộc truyền tải dữ liệu dạng gì?', 'Dạng chuỗi Bytes (qua hàm encode)', 'Dạng văn bản chuỗi Plaintext thô', 'a', NULL),
('rt_c1_b1', 1, 'video', 'Bài 1.1: Tổng quan về bức tranh toàn cảnh An ninh mạng', '15 phút', '/coursera_php_backend/uploads/6a13e7e974c3d_1.mp4', 'Định hướng tư duy bảo mật, phân tích sơ đồ bản đồ lộ trình học từ cơ bản đến các chuyên ngành chuyên sâu.', 'Lộ trình phát triển ATTT trong video chia làm mấy nhóm khóa học chính?', '2 nhóm (Nền tảng và Chuyên sâu)', '3 nhóm (Cơ bản, Trung cấp, Cao cấp)', 'a', 'FLAG{NMAP_STEALTH_SCAN_SUCCESS}'),
('rt_c1_b2', 1, 'video', 'Bài 1.2: Hướng dẫn nhận Chứng nhận hoàn thành từ Cisco Networking Academy', '4 phút', '/coursera_php_backend/uploads/6a13e7f174562_2.mp4', 'Hướng dẫn quy trình làm bài test cuối khóa và cách thức tải chứng nhận (Certificate) kỹ thuật số miễn phí trực tiếp từ hệ thống Cisco.', 'Chứng nhận hoàn thành khóa học (Certificate) của Cisco được cấp dưới hình thức nào?', 'Cấp hoàn toàn miễn phí sau khi vượt qua bài test cuối khóa ngay trên tài khoản học', 'Bắt buộc phải đóng lệ phí và đến thi trực tiếp tại trung tâm khảo thí', 'a', ''),
('rt_c1_b3', 1, 'video', 'Bài 1.3: Phân tích hệ thống Chứng chỉ Chuyên nghiệp Quốc tế (CCST, CyberOps, CCSK, CCNA)', '10 phút', '/coursera_php_backend/uploads/6a13e7fab5460_3.mp4', 'Đánh giá chuyên sâu về giá trị của hệ thống chứng chỉ quốc tế cấp hãng: CCST cho người mới, CyberOps cho trung tâm SOC, CCSK cho đám mây và CCNA cho hạ tầng mạng.', 'Chứng chỉ nào chứng minh năng lực chuyên môn trong mảng bảo mật Điện toán đám mây (Cloud Security)?', 'CCST Cybersecurity của Cisco', 'CCSK (Certificate of Cloud Security Knowledge) của tổ chức CSA', 'b', ''),
('rt_c1_b4', 1, 'video', 'Bài 1.4: Hướng dẫn thực hành Lab - Khảo sát thị trường việc làm và Định hướng nghề nghiệp', '15 phút', '/coursera_php_backend/uploads/6a13e80b65632_4.mp4', 'Video hướng dẫn chi tiết các bước thực hiện bài Lab Becoming a Defender. Thực hành khảo sát thực tế yêu cầu kỹ năng của nhà tuyển dụng trên VietnamWorks và Glassdoor.', 'Trong bài thực hành Lab Becoming a Defender, mục tiêu chính của Phân 2 là gì?', 'Nghiên cứu cấu trúc và yêu cầu thi của các chứng chỉ quốc tế cấp hãng.', 'Khảo sát các vị trí việc làm an ninh mạng thực tế và yêu cầu của nhà tuyển dụng.', 'b', ''),
('rt_c10_b1', 10, 'video', 'Bài 10.1: Phân tích lỗi tràn bộ đệm Buffer Overflow', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Lỗi bộ nhớ đệm.', 'Thanh ghi lưu con trỏ lệnh?', 'EIP', 'EAX', 'a', NULL),
('rt_c11_b1', 11, 'video', 'Bài 11.1: Lỗi cấu hình sai Public S3 Bucket Cloud', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Bảo mật đám mây.', 'S3 thuộc hãng nào?', 'AWS', 'Google', 'a', NULL),
('rt_c12_b1', 12, 'video', 'Bài 12.1: Leo thang đặc quyền root qua cấu hình SUID Linux', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Privilege Escalation.', 'Quyền cao nhất Linux?', 'root', 'guest', 'a', NULL),
('rt_c13_b1', 13, 'video', 'Bài 13.1: Tiêu chuẩn viết báo cáo Pentest chuyên nghiệp', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Hoàn thiện tài liệu kết quả.', 'Thang đo lỗ hổng?', 'CVSS', 'ISO', 'a', NULL),
('rt_c14_b1', 14, 'video', 'Bài 14.1: Sử dụng công cụ Ghidra phân tích file mã nhị phân', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Nghịch đảo mã nguồn.', 'Ghidra phát triển bởi ai?', 'NSA', 'Microsoft', 'a', NULL),
('rt_c15_b1', 15, 'video', 'Bài 15.1: Dùng mô hình học máy phân tích log mạng', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'AI Security.', 'Mục đích dùng AI?', 'Tự động hóa phát hiện tấn công', 'Tăng tốc độ mạng internet', 'a', NULL),
('rt_c2_b1', 2, 'video', 'Bài 2.1: Giới thiệu tổng quan và Định hướng mục tiêu khóa học', '10 phút', 'videos/5.mp4', 'Nội dung phần đầu của chương Giới thiệu khóa học: Phân tích tổng quan về cấu trúc giáo trình chuyên ngành, các tiêu chuẩn đầu ra kỹ thuật.', 'Trong phần đầu giới thiệu khóa học, yếu tố nào được nhấn mạnh để học viên đạt kết quả thực chiến tốt nhất?', 'Sự kết hợp chặt chẽ giữa việc nắm vững tư duy nền tảng và chủ động gõ lệnh thực hành.', 'Chỉ cần xem hết video bài giảng lý thuyết mà không cần trực tiếp thao tác.', 'a', NULL),
('rt_c2_b2', 2, 'video', 'Bài 2.2: Phương pháp nghiên cứu bảo mật và Kỷ luật phòng Lab', '12 phút', 'videos/6.mp4', 'Video hướng dẫn quy trình thiết lập tư duy phòng thủ/tấn công, phương pháp ghi chép tài liệu pentest và tuân thủ quy tắc đạo đức nghề nghiệp nghiêm ngặt.', 'Hành vi nào sau đây vi phạm quy tắc đạo đức của một Chuyên gia bảo mật (Ethical Hacker) khi làm Lab?', 'Thử nghiệm payload khai thác lỗi trên môi trường ảo hóa biệt lập (Sandbox).', 'Sử dụng công cụ dò quét tấn công vào mạng của cơ quan, tổ chức khác khi chưa được cấp văn bản cho phép.', 'b', NULL),
('rt_c2_b3', 2, 'video', 'Bài 2.3: Hướng dẫn cấu hình kiến trúc phòng LAB ảo hóa và Deploy máy ảo Kali Linux', '4 phút', 'videos/7.mp4', 'Hướng dẫn chi tiết quy trình truy cập bài thực hành, tìm hiểu sơ đồ mạng kiểm thử (Topology Lab) bao gồm máy tấn công Parrot/Kali Security và máy nạn nhân.', 'Trong sơ đồ phòng LAB kiểm thử tiêu chuẩn, các máy ảo kết nối với nhau thông qua thành phần nào để đảm bảo biệt lập?', 'Kết nối trực tiếp ra dải mạng Internet công cộng bên ngoài.', 'Kết nối thông qua một công tắc ảo nội bộ (Host-only Network / Virtual Switch).', 'b', NULL),
('rt_c2_b4', 2, 'video', 'Bài 2.4: Phân tích kịch bản giả lập cốt truyện Pentest và Xác thực cam kết đạo đức', '3 phút', 'videos/8.mp4', 'Tìm hiểu bối cảnh hạ tầng của các doanh nghiệp giả lập trong giáo trình và thực hiện đọc, ký xác nhận bản cam kết tuân thủ quy định an ninh mạng.', 'Mục đích cốt lõi của việc hệ thống yêu cầu học viên xác nhận bản Cam kết Ethical Hacking Statement là gì?', 'Ràng buộc học viên chỉ sử dụng kiến thức, payload và công cụ vào mục đích hợp pháp, an toàn.', 'Bắt buộc học viên phải cam kết đóng thêm lệ phí bản quyền công cụ cho nhà phát hành.', 'a', NULL),
('rt_c3_b1', 3, 'video', 'Bài 3.1: Phân biệt nhiệm vụ Red Team và Blue Team', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Phân tích vị trí việc làm.', 'Red Team làm gì?', 'Tấn công kiểm thử', 'Phòng thủ', 'a', NULL),
('rt_c4_b1', 4, 'video', 'Bài 4.1: Thực hành Import Kali Linux OVA', '10 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Cài đặt môi trường.', 'Dùng phần mềm nào?', 'VirtualBox', 'Excel', 'a', NULL),
('rt_c5_b1', 5, 'video', 'Bài 5.1: Xây dựng tài liệu phạm vi kiểm thử SoW', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Xác định giới hạn mục tiêu.', 'SoW viết tắt của gì?', 'Scope of Work', 'State of War', 'a', NULL),
('rt_c6_b1', 6, 'video', 'Bài 6.1: Dò quét thông tin dịch vụ với Nmap Network Scan', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Quét cổng.', 'Lệnh quét SYN?', 'nmap -sS', 'nmap -sU', 'a', NULL),
('rt_c7_b1', 7, 'video', 'Bài 7.1: Tấn công giả lập Phishing với SET Toolkit', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Social Engineering.', 'SET là gì?', 'Social Engineering Toolkit', 'Secure Email Transfer', 'a', NULL),
('rt_c8_b1', 8, 'video', 'Bài 8.1: Quét lỗ hổng hạ tầng tự động bằng Nessus', '15 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Vulnerability scanning.', 'Nessus dùng để làm gì?', 'Quét lỗ hổng hệ thống mạng', 'Lập trình ứng dụng web', 'a', NULL),
('rt_c9_b1', 9, 'video', 'Bài 9.1: Khai thác lỗi ứng dụng Web - Kỹ thuật SQLi', '20 phút', 'https://www.w3schools.com/html/mov_bbb.mp4', 'Tấn công ứng dụng web.', 'SQLi là gì?', 'SQL Injection', 'SQL Index', 'a', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `current_step` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `course_name`, `price`, `current_step`, `created_at`) VALUES
(14, 3, 'course_12', 499000, 3, '2026-05-20 17:07:07'),
(15, 3, 'course_10', 899000, 3, '2026-05-20 17:11:44'),
(17, 3, 'course_11', 550000, 3, '2026-05-20 17:17:39'),
(18, 3, 'course_14', 750000, 3, '2026-05-21 13:26:29'),
(19, 3, 'course_13', 162500, 3, '2026-05-21 13:35:48'),
(20, 3, 'course_15', 399000, 3, '2026-05-21 13:35:57'),
(21, 3, 'course_16', 599000, 3, '2026-05-21 13:40:13'),
(22, 3, 'course_37', 750000, 3, '2026-05-21 13:46:43'),
(23, 3, 'course_6', 699000, 4, '2026-05-21 13:47:47'),
(24, 3, 'course_29', 699000, 4, '2026-05-21 13:50:11'),
(25, 3, 'course_44', 690000, 4, '2026-05-21 13:53:28'),
(26, 3, 'course_50', 150000, 4, '2026-05-21 15:04:37'),
(27, 3, 'course_36', 450000, 3, '2026-05-23 16:08:15'),
(28, 3, 'course_1', 499000, 3, '2026-05-23 16:12:12'),
(29, 3, 'course_43', 599000, 3, '2026-05-23 17:17:27'),
(30, 3, 'sec_035', 1400000, 3, '2026-05-23 18:09:07'),
(31, 3, 'sec_036', 275000, 3, '2026-05-23 18:09:09'),
(32, 5, 'course_1', 499000, 3, '2026-05-24 04:58:39'),
(33, 5, 'course_11', 550000, 3, '2026-05-24 04:58:48'),
(34, 5, 'course_15', 399000, 3, '2026-05-24 05:00:25'),
(35, 5, 'course_16', 149750, 3, '2026-05-24 05:00:28'),
(36, 5, 'course_12', 124750, 3, '2026-05-24 05:01:13'),
(37, 5, 'course_14', 750000, 3, '2026-05-24 05:51:27'),
(38, 5, 'course_29', 699000, 3, '2026-05-24 05:51:27'),
(39, 5, 'course_3', 350000, 3, '2026-05-24 05:51:27'),
(40, 3, 'sec_037', 325000, 3, '2026-05-24 08:27:35'),
(41, 5, 'course_10', 899000, 3, '2026-05-25 05:57:37'),
(42, 5, 'course_20', 97500, 3, '2026-05-25 05:57:37'),
(43, 5, 'course_13', 162500, 4, '2026-05-27 00:52:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `otp_codes`
--

CREATE TABLE `otp_codes` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `otp_codes`
--

INSERT INTO `otp_codes` (`id`, `email`, `otp`, `expires_at`, `created_at`) VALUES
(1, 'myadmin@email.com', '219049', '2026-05-20 22:41:45', '2026-05-20 15:26:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT 'student',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password_hash`, `role`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Văn A', 'changhy113@gmail.com', '$2b$12$Nm2395gYcKEwQF.qbpOprOwTcCvPdkuvy86ok38t2E9PLYrNLK2Yq', 'teacher', '2026-05-18 13:37:51', '2026-05-21 01:35:16'),
(3, 'Nguyễn Đức Hiển', 'duchienn37@gmail.com', '$2b$12$ms3WsoVgMdmDkEU/LtbnE.McmEwHBRsTu3ZpNNKYtLhCAGdlCfIV.', 'admin', '2026-05-20 14:34:16', '2026-05-20 15:48:26'),
(5, 'Nguyễn Văn', 'dangchucna12@gmail.com', '$2y$10$t1VxrYXZ7BBbDZLRd5Q8OOclLVPyKboI0pY/3u/mR4W/gTP4N5wbu', 'student', '2026-05-24 04:58:28', '2026-05-24 05:03:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_progress`
--

CREATE TABLE `user_progress` (
  `user_id` int(11) NOT NULL,
  `lesson_id` varchar(50) NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_progress`
--

INSERT INTO `user_progress` (`user_id`, `lesson_id`, `completed_at`) VALUES
(2, '1', '2026-05-21 01:42:20'),
(2, 'rt_c1_b1', '2026-05-21 01:42:28'),
(2, 'rt_c1_b2', '2026-05-21 01:42:32'),
(3, '1', '2026-05-20 17:04:59'),
(3, '2', '2026-05-23 16:51:16'),
(3, 'l_c10', '2026-05-21 13:27:09'),
(3, 'l_c11', '2026-05-21 15:34:45'),
(3, 'l_c12', '2026-05-21 13:39:50'),
(3, 'l_c15', '2026-05-21 13:46:11'),
(3, 'l_c16', '2026-05-21 13:52:41'),
(3, 'rt_c1_b1', '2026-05-20 15:11:37'),
(3, 'rt_c1_b2', '2026-05-20 15:11:38'),
(3, 'rt_c1_b3', '2026-05-20 15:11:38'),
(3, 'rt_c1_b4', '2026-05-20 15:11:40'),
(5, '1', '2026-05-24 04:59:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activation_tokens`
--
ALTER TABLE `activation_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `course_weeks`
--
ALTER TABLE `course_weeks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `week_id` (`week_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `user_progress`
--
ALTER TABLE `user_progress`
  ADD PRIMARY KEY (`user_id`,`lesson_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activation_tokens`
--
ALTER TABLE `activation_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `course_reviews`
--
ALTER TABLE `course_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `course_weeks`
--
ALTER TABLE `course_weeks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `otp_codes`
--
ALTER TABLE `otp_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD CONSTRAINT `course_reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `course_weeks`
--
ALTER TABLE `course_weeks`
  ADD CONSTRAINT `course_weeks_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`week_id`) REFERENCES `course_weeks` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_progress`
--
ALTER TABLE `user_progress`
  ADD CONSTRAINT `user_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_progress_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

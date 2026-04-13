-- bảng MON_HOC (COURSE)
CREATE TABLE MON_HOC (
    Mamon NUMBER(8, 0) NOT NULL PRIMARY KEY,
    Tenmon VARCHAR2(50),
    Hocphi NUMBER(9,2),
    Montienquyet NUMBER(8, 0),
    Nguoitao VARCHAR2(30) NOT NULL,
    Ngaytao DATE NOT NULL,
    Nguoisua VARCHAR2(30) NOT NULL,
    Ngaysua DATE NOT NULL,
    CONSTRAINT FK_Montienquyet FOREIGN KEY (Montienquyet) REFERENCES MON_HOC(Mamon)
);
-- bảng LOP_HOC (CLASS)
CREATE TABLE LOP_HOC (
    MalopID NUMBER(8,0) NOT NULL PRIMARY KEY,
    Mamon NUMBER(8,0) NOT NULL,
    Malop NUMBER(3) NOT NULL,
    Thoigianbatdau DATE,
    Phonghoc VARCHAR2(50),
    Magv NUMBER(8,0) NOT NULL,
    Sisotoida NUMBER(3,0),
    Nguoitao VARCHAR2(30) NOT NULL,
    Ngaytao DATE NOT NULL,
    Nguoisua VARCHAR2(30) NOT NULL,
    Ngaysua DATE NOT NULL,
    CONSTRAINT FK_Lophoc_Monhoc FOREIGN KEY (MaMon) REFERENCES MON_HOC(MaMon),
    CONSTRAINT FK_Lophoc_Giaovien FOREIGN KEY (MaGV) REFERENCES GIAO_VIEN(MaGV)
);
-- bảng SINH_VIEN (STUDENT)
CREATE TABLE SINH_VIEN (
    MaSV NUMBER(8,0) NOT NULL PRIMARY KEY,
    Danhxung VARCHAR2(5),
    Ten VARCHAR2(25),
    Ho VARCHAR2(25) NOT NULL,
    Diachi VARCHAR2(50),
    Sdt VARCHAR2(15),
    Congty VARCHAR2(50),
    Ngaydangky DATE NOT NULL,
    Nguoitao VARCHAR2(30) NOT NULL,
    Ngaytao DATE NOT NULL,
    Nguoisua VARCHAR2(30) NOT NULL,
    Ngaysua DATE NOT NULL
);
-- bảng DANG_KY_HOC (ENROLLMENT)
CREATE TABLE DANG_KY_HOC (
    MaSV NUMBER(8,0) NOT NULL,
    MalopID NUMBER(8,0) NOT NULL,
    NgayDK DATE NOT NULL,
    Diemtongket NUMBER(3,0),
    Nguoitao VARCHAR2(30) NOT NULL,
    Ngaytao DATE NOT NULL,
    Nguoisua VARCHAR2(30) NOT NULL,
    Ngaysua DATE NOT NULL,
    PRIMARY KEY (MaSV, MaLopID),
    CONSTRAINT FK_DKHoc_Sinhvien FOREIGN KEY (MaSV) REFERENCES SINH_VIEN(MaSV),
    CONSTRAINT FK_DKHoc_Lophoc FOREIGN KEY (MaLopID) REFERENCES LOP_HOC(MaLopID)
);
-- bảng GIAO_VIEN (INSTRUCTOR)
CREATE TABLE GIAO_VIEN (
    MaGV NUMBER(8,0) NOT NULL PRIMARY KEY,
    Danhxung VARCHAR2(5),
    Ten VARCHAR2(25),
    Ho VARCHAR2(25),
    Diachi VARCHAR2(50),
    Sdt VARCHAR2(15),
    Nguoitao VARCHAR2(30) NOT NULL,
    Ngaytao DATE NOT NULL,
    Nguoisua VARCHAR2(30) NOT NULL,
    Ngaysua DATE NOT NULL
);
-- bảng DIEM_SO (GRADE)
CREATE TABLE DIEM_SO (
    MaSV NUMBER(8,0) NOT NULL,
    MalopID NUMBER(8,0) NOT NULL,
    Diem NUMBER(3) NOT NULL,
    Nhanxet VARCHAR2(2000),
    Nguoitao VARCHAR2(30) NOT NULL,
    Ngaytao DATE NOT NULL,
    Nguoisua VARCHAR2(30) NOT NULL,
    Ngaysua DATE NOT NULL,
    PRIMARY KEY (MaSV, MaLopID),
    CONSTRAINT FK_Diemso_Dangky FOREIGN KEY (MaSV, MaLopID) REFERENCES DANG_KY_HOC(MaSV, MaLopID)
);

-- dữ liệu Môn học
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (101, 'Nhap mon Lap trinh', 500000, NULL, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (107, 'Mang may tinh', 600000, NULL, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (114, 'Kien truc may tinh', 600000, NULL, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (119, 'Toan roi rac', 450000, NULL, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (120, 'Giai tich', 450000, NULL, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (102, 'Ky thuat Lap trinh', 550000, 101, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (104, 'Co so du lieu', 650000, 101, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (108, 'He dieu hanh', 650000, 107, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (103, 'Cau truc du lieu', 600000, 102, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (106, 'Lap trinh Huong doi tuong', 650000, 102, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (109, 'Lap trinh Web', 700000, 102, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (105, 'He quan tri CSDL', 700000, 104, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (116, 'Phan tich thiet ke he thong', 650000, 104, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (110, 'Phat trien Web Nang cao', 750000, 109, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (111, 'Lap trinh Mobile', 700000, 106, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (112, 'Tri tue nhan tao', 800000, 103, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (115, 'Bao mat thong tin', 750000, 107, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (117, 'Cong nghe Phan mem', 700000, 116, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (113, 'Hoc may (Machine Learning)', 850000, 112, USER, SYSDATE, USER, SYSDATE);
INSERT INTO MON_HOC (Mamon, Tenmon, Hocphi, Montienquyet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (118, 'Kiem thu phan mem', 650000, 117, USER, SYSDATE, USER, SYSDATE);

-- dữ liệu Lớp học
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1, 101, 1, SYSDATE+10, 'Phong 101', 1, 30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (2, 102, 1, SYSDATE+11, 'Phong 102', 2, 30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (3, 103, 1, SYSDATE+12, 'Phong 103', 3, 25, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (4, 104, 1, SYSDATE+13, 'Phong 104', 4, 30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (5, 105, 1, SYSDATE+14, 'Phong 105', 5, 20, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (6, 106, 1, SYSDATE+15, 'Phong 201', 6, 25, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (7, 107, 1, SYSDATE+16, 'Phong 202', 7, 35, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (8, 108, 1, SYSDATE+17, 'Phong 203', 8, 30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (9, 109, 1, SYSDATE+18, 'Phong 204', 9, 25, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (10, 110, 1, SYSDATE+19, 'Phong 205', 10, 20, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (11, 111, 1, SYSDATE+20, 'Phong 301', 11, 30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (12, 112, 1, SYSDATE+21, 'Phong 302', 12, 20, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (13, 113, 1, SYSDATE+22, 'Phong 303', 13, 20, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (14, 114, 1, SYSDATE+23, 'Phong 304', 14, 35, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (15, 115, 1, SYSDATE+24, 'Phong 305', 15, 25, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (16, 116, 1, SYSDATE+25, 'Phong 401', 16, 30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (17, 117, 1, SYSDATE+26, 'Phong 402', 17, 30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (18, 118, 1, SYSDATE+27, 'Phong 403', 18, 35, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (19, 119, 1, SYSDATE+28, 'Phong 404', 19, 40, USER, SYSDATE, USER, SYSDATE);
INSERT INTO LOP_HOC (MalopID, Mamon, Malop, Thoigianbatdau, Phonghoc, Magv, Sisotoida, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (20, 120, 1, SYSDATE+29, 'Phong 405', 20, 40, USER, SYSDATE, USER, SYSDATE);

-- dữ liệu sinh viên
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1001, 'Mr.', 'Tuan', 'Phan', 'Q1, HCM', '0911000001', 'FPT Software', SYSDATE-100, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1002, 'Ms.', 'Hoa', 'Nguyen', 'Q2, HCM', '0911000002', 'VNG', SYSDATE-95, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1003, 'Mr.', 'Khang', 'Le', 'Q3, HCM', '0911000003', NULL, SYSDATE-90, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1004, 'Ms.', 'Lan', 'Tran', 'Q4, HCM', '0911000004', 'Tiki', SYSDATE-85, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1005, 'Mr.', 'Dat', 'Pham', 'Q5, HCM', '0911000005', NULL, SYSDATE-80, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1006, 'Ms.', 'Mai', 'Hoang', 'Q6, HCM', '0911000006', 'Shopee', SYSDATE-75, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1007, 'Mr.', 'Phong', 'Vu', 'Q7, HCM', '0911000007', NULL, SYSDATE-70, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1008, 'Ms.', 'Ngoc', 'Vo', 'Q8, HCM', '0911000008', 'KMS Tech', SYSDATE-65, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1009, 'Mr.', 'Khoa', 'Bui', 'Q9, HCM', '0911000009', NULL, SYSDATE-60, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1010, 'Ms.', 'Trang', 'Do', 'Q10, HCM', '0911000010', 'Grab', SYSDATE-55, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1011, 'Mr.', 'Phuc', 'Truong', 'Q11, HCM', '0911000011', NULL, SYSDATE-50, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1012, 'Ms.', 'Ha', 'Ly', 'Q12, HCM', '0911000012', 'Momo', SYSDATE-45, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1013, 'Mr.', 'Tai', 'Dang', 'Binh Thanh', '0911000013', NULL, SYSDATE-40, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1014, 'Ms.', 'Thy', 'Ngo', 'Go Vap', '0911000014', 'Zalo', SYSDATE-35, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1015, 'Mr.', 'Bao', 'Duong', 'Tan Binh', '0911000015', NULL, SYSDATE-30, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1016, 'Ms.', 'Quynh', 'Dinh', 'Tan Phu', '0911000016', 'VNPT', SYSDATE-25, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1017, 'Mr.', 'Duc', 'Phan', 'Binh Tan', '0911000017', NULL, SYSDATE-20, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1018, 'Ms.', 'Lien', 'Nguyen', 'Phu Nhuan', '0911000018', 'Viettel', SYSDATE-15, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1019, 'Mr.', 'Hung', 'Tran', 'Thu Duc', '0911000019', NULL, SYSDATE-10, USER, SYSDATE, USER, SYSDATE);
INSERT INTO SINH_VIEN (MaSV, Danhxung, Ten, Ho, Diachi, Sdt, Congty, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1020, 'Ms.', 'Anh', 'Le', 'Nha Be', '0911000020', 'NashTech', SYSDATE-5, USER, SYSDATE, USER, SYSDATE);
-- dữ liệu đăng ký học
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1001, 1, SYSDATE-5, 85, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1002, 2, SYSDATE-5, 90, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1003, 3, SYSDATE-4, 75, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1004, 4, SYSDATE-4, 60, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1005, 5, SYSDATE-3, 95, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1006, 6, SYSDATE-3, 80, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1007, 7, SYSDATE-2, 70, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1008, 8, SYSDATE-2, 88, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1009, 9, SYSDATE-1, 55, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1010, 10, SYSDATE-1, 92, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1011, 11, SYSDATE, 85, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1012, 12, SYSDATE, 78, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1013, 13, SYSDATE, 65, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1014, 14, SYSDATE, 82, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1015, 15, SYSDATE, 91, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1016, 16, SYSDATE, 73, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1017, 17, SYSDATE, 89, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1018, 18, SYSDATE, 68, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1019, 19, SYSDATE, 94, USER, SYSDATE, USER, SYSDATE);
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Diemtongket, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1020, 20, SYSDATE, 81, USER, SYSDATE, USER, SYSDATE);

-- dữ liệu giáo viên
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1, 'ThS', 'An', 'Nguyen Van', 'Q1, HCM', '0901000001', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (2, 'TS', 'Binh', 'Le Thi', 'Q2, HCM', '0901000002', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (3, 'GS', 'Cuong', 'Tran', 'Q3, HCM', '0901000003', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (4, 'ThS', 'Dung', 'Pham', 'Q4, HCM', '0901000004', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (5, 'TS', 'Em', 'Hoang', 'Q5, HCM', '0901000005', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (6, 'ThS', 'Giang', 'Vu', 'Q6, HCM', '0901000006', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (7, 'TS', 'Hien', 'Vo', 'Q7, HCM', '0901000007', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (8, 'ThS', 'Linh', 'Bui', 'Q8, HCM', '0901000008', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (9, 'TS', 'Minh', 'Do', 'Q9, HCM', '0901000009', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (10, 'PGS', 'Nam', 'Truong', 'Q10, HCM', '0901000010', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (11, 'ThS', 'Oanh', 'Ly', 'Q11, HCM', '0901000011', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (12, 'TS', 'Phuc', 'Dang', 'Q12, HCM', '0901000012', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (13, 'ThS', 'Quoc', 'Ngo', 'Binh Thanh', '0901000013', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (14, 'TS', 'Son', 'Duong', 'Go Vap', '0901000014', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (15, 'ThS', 'Tuan', 'Dinh', 'Tan Binh', '0901000015', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (16, 'TS', 'Uy', 'Phan', 'Tan Phu', '0901000016', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (17, 'ThS', 'Vy', 'Nguyen', 'Binh Tan', '0901000017', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (18, 'TS', 'Xuan', 'Tran', 'Phu Nhuan', '0901000018', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (19, 'ThS', 'Yen', 'Le', 'Thu Duc', '0901000019', USER, SYSDATE, USER, SYSDATE);
INSERT INTO GIAO_VIEN (MaGV, Danhxung, Ten, Ho, Diachi, Sdt, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (20, 'TS', 'Anh', 'Hoang', 'Nha Be', '0901000020', USER, SYSDATE, USER, SYSDATE);

-- dữ liệu điểm sô
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1001, 1, 85, 'Kha tot', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1002, 2, 90, 'Xuat sac', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1003, 3, 75, 'Kha', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1004, 4, 60, 'Trung binh', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1005, 5, 95, 'Xuat sac', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1006, 6, 80, 'Gioi', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1007, 7, 70, 'Kha', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1008, 8, 88, 'Gioi', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1009, 9, 55, 'Can co gang', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1010, 10, 92, 'Xuat sac', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1011, 11, 85, 'Kha tot', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1012, 12, 78, 'Kha', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1013, 13, 65, 'Trung binh', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1014, 14, 82, 'Gioi', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1015, 15, 91, 'Xuat sac', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1016, 16, 73, 'Kha', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1017, 17, 89, 'Gioi', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1018, 18, 68, 'Trung binh', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1019, 19, 94, 'Xuat sac', USER, SYSDATE, USER, SYSDATE);
INSERT INTO DIEM_SO (MaSV, MalopID, Diem, Nhanxet, Nguoitao, Ngaytao, Nguoisua, Ngaysua) VALUES (1020, 20, 81, 'Gioi', USER, SYSDATE, USER, SYSDATE);

-- cau 1.a
CREATE TABLE Cau1 (
    ID NUMBER,
    NAME VARCHAR2(20)
);
-- cau 1.b
CREATE SEQUENCE Cau1Seq
    START WITH 5
    INCREMENT BY 5;
-- cau 1.c,d,e,f,g,h,i,j
SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(50);
    v_id   NUMBER;
BEGIN
    -- [d] Them sinh vien dang ki nhieu mon nhat
    SELECT Ten || ' ' || Ho
    INTO v_name
    FROM SINH_VIEN
    WHERE MaSV = (
        SELECT MaSV FROM DANG_KY_HOC
        GROUP BY MaSV
        HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM DANG_KY_HOC GROUP BY MaSV)
        FETCH FIRST 1 ROWS ONLY
    );

    INSERT INTO Cau1 (ID, NAME)
    VALUES (Cau1Seq.NEXTVAL, v_name);
    SAVEPOINT sp_a; -- Savepoint A

    -- [e] Them sinh vien dang ki it mon nhat
    SELECT Ten || ' ' || Ho
    INTO v_name
    FROM SINH_VIEN
    WHERE MaSV = (
        SELECT MaSV FROM DANG_KY_HOC
        GROUP BY MaSV
        HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM DANG_KY_HOC GROUP BY MaSV)
        FETCH FIRST 1 ROWS ONLY
    );

    INSERT INTO Cau1 (ID, NAME)
    VALUES (Cau1Seq.NEXTVAL, v_name);
    SAVEPOINT sp_b; -- Savepoint B

    -- [f] Them giao vien day nhieu lop nhat
    SELECT i.Ten || ' ' || i.Ho
    INTO v_name
    FROM GIAO_VIEN i
    WHERE i.Magv = (
        SELECT Magv FROM LOP_HOC
        GROUP BY Magv
        HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM LOP_HOC GROUP BY Magv)
        FETCH FIRST 1 ROWS ONLY
    );

    INSERT INTO Cau1 (ID, NAME)
    VALUES (Cau1Seq.NEXTVAL, v_name);
    SAVEPOINT sp_c; -- Savepoint C

    -- [g] SELECT INTO: lay ID cua giao vien vua them vao bien v_id
    SELECT ID INTO v_id
    FROM Cau1
    WHERE NAME = v_name;

    DBMS_OUTPUT.PUT_LINE('ID giao vien nhieu lop: ' || v_id);

    -- [h] Rollback giao vien nhieu lop (ve Savepoint B)
    ROLLBACK TO sp_b;

    -- [i] Them giao vien it lop nhat, dung v_id da luu
    SELECT i.Ten || ' ' || i.Ho
    INTO v_name
    FROM GIAO_VIEN i
    WHERE i.Magv = (
        SELECT Magv FROM LOP_HOC
        GROUP BY Magv
        HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM LOP_HOC GROUP BY Magv)
        FETCH FIRST 1 ROWS ONLY
    );

    INSERT INTO Cau1 (ID, NAME)
    VALUES (v_id, v_name); -- Dung v_id (khong phai sequence)

    -- [j] Them lai giao vien nhieu lop, dung sequence
    SELECT i.Ten || ' ' || i.Ho
    INTO v_name
    FROM GIAO_VIEN i
    WHERE i.Magv = (
        SELECT Magv FROM LOP_HOC
        GROUP BY Magv
        HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM LOP_HOC GROUP BY Magv)
        FETCH FIRST 1 ROWS ONLY
    );

    INSERT INTO Cau1 (ID, NAME)
    VALUES (Cau1Seq.NEXTVAL, v_name); -- Dung sequence

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Hoan tat! Kiem tra: SELECT * FROM Cau1;');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Loi: Khong tim thay du lieu!');
        ROLLBACK;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Loi: ' || SQLERRM);
        ROLLBACK;
END;
/

SET SERVEROUTPUT ON;

DECLARE
    v_sid NUMBER := &ma_sinh_vien;
    v_fname VARCHAR2(25) := '&ten_sinh_vien';
    v_lname VARCHAR2(25) := '&ho_sinh_vien';
    v_addr VARCHAR2(50) := '&dia_chi';
    v_found VARCHAR2(50);
    v_classes NUMBER;
BEGIN
    -- Thu tim sinh vien theo ma vua nhap
    SELECT Ten || ' ' || Ho
    INTO v_found
    FROM SINH_VIEN
    WHERE MaSV = v_sid;

    -- Neu tim thay: dem so lop dang hoc
    SELECT COUNT(*)
    INTO v_classes
    FROM DANG_KY_HOC
    WHERE MaSV = v_sid;

    DBMS_OUTPUT.PUT_LINE('Ho ten: ' || v_found);
    DBMS_OUTPUT.PUT_LINE('So lop dang hoc: ' || v_classes);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Sinh vien chua ton tai: them moi
        DBMS_OUTPUT.PUT_LINE('Sinh vien chua ton tai. Dang them moi...');
        INSERT INTO SINH_VIEN (MaSV, Ten, Ho, Diachi, Ngaydangky, Nguoitao, Ngaytao, Nguoisua, Ngaysua)
        VALUES (v_sid, v_fname, v_lname, v_addr, SYSDATE, USER, SYSDATE, USER, SYSDATE);
        
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Da them sinh vien moi: ' || v_lname || ' ' || v_fname);
END;
/
-- bai 2.1
SET SERVEROUTPUT ON;

DECLARE
    v_instructor_id NUMBER := &ma_giao_vien;
    v_so_lop NUMBER;
BEGIN
    -- Dem so lop giao vien dang day
    SELECT COUNT(*)
    INTO v_so_lop
    FROM LOP_HOC
    WHERE Magv = v_instructor_id;

    -- Phan nhanh theo ket qua
    IF v_so_lop >= 5 THEN
        DBMS_OUTPUT.PUT_LINE('Giao vien nay nen nghi ngoi!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('So lop giao vien dang day: ' || v_so_lop);
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Khong tim thay giao vien co ma: ' || v_instructor_id);
END;
/
-- bai 2.2
SET SERVEROUTPUT ON;

DECLARE
    v_sid NUMBER := &ma_sinh_vien;
    v_cid NUMBER := &ma_lop;
    v_score NUMBER;
    v_grade VARCHAR2(2);
    v_check NUMBER;
BEGIN
    -- Kiem tra sinh vien ton tai
    SELECT COUNT(*) INTO v_check
    FROM SINH_VIEN WHERE MaSV = v_sid;
    
    IF v_check = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Loi: Ma sinh vien ' || v_sid || ' khong ton tai!');
        RETURN;
    END IF;

    -- Kiem tra lop ton tai
    SELECT COUNT(*) INTO v_check
    FROM LOP_HOC WHERE MalopID = v_cid;
    
    IF v_check = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Loi: Ma lop ' || v_cid || ' khong ton tai!');
        RETURN;
    END IF;

    -- Lay diem cua sinh vien trong lop
    SELECT Diemtongket
    INTO v_score
    FROM DANG_KY_HOC
    WHERE MaSV = v_sid AND MalopID = v_cid;

    -- Quy doi diem so sang diem chu bang CASE
    CASE
        WHEN v_score >= 90 THEN v_grade := 'A';
        WHEN v_score >= 80 THEN v_grade := 'B';
        WHEN v_score >= 70 THEN v_grade := 'C';
        WHEN v_score >= 50 THEN v_grade := 'D';
        ELSE v_grade := 'F';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Diem so: ' || v_score || ' -> Diem chu: ' || v_grade);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Sinh vien chua dang ky lop nay hoac chua co diem!');
END;
/

-- bai 3
SET SERVEROUTPUT ON;

DECLARE
    -- Cursor 1: Duyet tung mon hoc
    CURSOR cur_course IS
        SELECT Mamon, Tenmon
        FROM MON_HOC
        ORDER BY Mamon;

    -- Cursor 2: Lay lop hoc cua mot mon (co doi so)
    CURSOR cur_class (p_courseno NUMBER) IS
        SELECT c.Malop, COUNT(e.MaSV) AS so_sv
        FROM LOP_HOC c
        LEFT JOIN DANG_KY_HOC e ON c.MalopID = e.MalopID
        WHERE c.Mamon = p_courseno
        GROUP BY c.Malop
        ORDER BY c.Malop;

    v_courseno MON_HOC.Mamon%TYPE;
    v_desc     MON_HOC.Tenmon%TYPE;
    v_classno  LOP_HOC.Malop%TYPE;
    v_count    NUMBER;
BEGIN
    -- Duyet cursor ngoai: tung mon hoc
    OPEN cur_course;
    LOOP
        FETCH cur_course INTO v_courseno, v_desc;
        EXIT WHEN cur_course%NOTFOUND;

        -- In ten mon hoc
        DBMS_OUTPUT.PUT_LINE(v_courseno || ' ' || v_desc);

        -- Mo cursor trong voi doi so la ma mon hoc hien tai
        OPEN cur_class(v_courseno);
        LOOP
            FETCH cur_class INTO v_classno, v_count;
            EXIT WHEN cur_class%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE('Lop: ' || v_classno || ' co so luong sinh vien dang ki: ' || v_count);
        END LOOP;
        CLOSE cur_class;
    END LOOP;
    CLOSE cur_course;

EXCEPTION
    WHEN OTHERS THEN
        IF cur_course%ISOPEN THEN CLOSE cur_course; END IF;
        IF cur_class%ISOPEN THEN CLOSE cur_class; END IF;
        DBMS_OUTPUT.PUT_LINE('Loi: ' || SQLERRM);
END;
/

-- bai 4.1.a
CREATE OR REPLACE PROCEDURE find_sname
(
    i_student_id IN SINH_VIEN.MaSV%TYPE,
    o_first_name OUT SINH_VIEN.Ten%TYPE,
    o_last_name OUT SINH_VIEN.Ho%TYPE
)
IS
BEGIN
    SELECT Ten, Ho
    INTO o_first_name, o_last_name
    FROM SINH_VIEN
    WHERE MaSV = i_student_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        o_first_name := NULL;
        o_last_name := NULL;
        DBMS_OUTPUT.PUT_LINE('Khong tim thay sinh vien ID: ' || i_student_id);
END find_sname;
/
-- bai 4.1.b
CREATE OR REPLACE PROCEDURE print_student_name
(i_student_id IN SINH_VIEN.MaSV%TYPE)
IS
    v_first SINH_VIEN.Ten%TYPE;
    v_last SINH_VIEN.Ho%TYPE;
BEGIN
    -- Goi thu tuc find_sname da co san
    find_sname(i_student_id, v_first, v_last);

    IF v_first IS NOT NULL OR v_last IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Ho ten sinh vien: ' || v_first || ' ' || v_last);
    END IF;
END print_student_name;
/
BEGIN
    print_student_name(1001);
END;
/
-- bai 4.2
CREATE OR REPLACE PROCEDURE Discount
IS
BEGIN
    FOR rec IN (
        SELECT c.Mamon, c.Tenmon, c.Hocphi
        FROM MON_HOC c
        WHERE (
            SELECT COUNT(*) FROM DANG_KY_HOC e
            JOIN LOP_HOC cl ON e.MalopID = cl.MalopID
            WHERE cl.Mamon = c.Mamon
        ) > 15
    ) LOOP
        -- Giam gia 5%
        UPDATE MON_HOC
        SET Hocphi = Hocphi * 0.95
        WHERE Mamon = rec.Mamon;

        DBMS_OUTPUT.PUT_LINE('Da giam gia mon hoc: ' || rec.Tenmon || 
        ' | Gia cu: ' || rec.Hocphi || 
        ' | Gia moi: ' || ROUND(rec.Hocphi * 0.95, 2));
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Hoan tat giam gia.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Loi: ' || SQLERRM);
END Discount;
/
BEGIN Discount; END;
/

-- bai 4.3
CREATE OR REPLACE FUNCTION Total_cost_for_student
(p_student_id IN SINH_VIEN.MaSV%TYPE)
RETURN NUMBER
IS
    v_total NUMBER;
    v_check NUMBER;
BEGIN
    -- Kiem tra sinh vien co ton tai khong
    SELECT COUNT(*) INTO v_check
    FROM SINH_VIEN WHERE MaSV = p_student_id;
    
    IF v_check = 0 THEN
        RETURN NULL; -- Sinh vien khong ton tai
    END IF;

    -- Tinh tong chi phi: sum(cost cua tung mon da dang ky)
    SELECT NVL(SUM(co.Hocphi), 0)
    INTO v_total
    FROM DANG_KY_HOC e
    JOIN LOP_HOC cl ON e.MalopID = cl.MalopID
    JOIN MON_HOC co ON cl.Mamon = co.Mamon
    WHERE e.MaSV = p_student_id;

    RETURN v_total;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL;
END Total_cost_for_student;
/
SELECT Total_cost_for_student(1001) AS "Tong chi phi" FROM DUAL;

-- bai 5.1
-- bảng MON_HOC
CREATE OR REPLACE TRIGGER trg_monhoc_audit
BEFORE INSERT OR UPDATE ON MON_HOC
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        :NEW.Nguoitao := USER;
        :NEW.Ngaytao := SYSDATE;
    END IF;
    -- Luon cap nhat modified (ca khi INSERT lan UPDATE)
    :NEW.Nguoisua := USER;
    :NEW.Ngaysua := SYSDATE;
END trg_monhoc_audit;
/
-- bảng LOP_HOC
CREATE OR REPLACE TRIGGER trg_lophoc_audit
BEFORE INSERT OR UPDATE ON LOP_HOC
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        :NEW.Nguoitao := USER;
        :NEW.Ngaytao := SYSDATE;
    END IF;
    :NEW.Nguoisua := USER;
    :NEW.Ngaysua := SYSDATE;
END trg_lophoc_audit;
/
-- bảng SINH_VIEN
CREATE OR REPLACE TRIGGER trg_lophoc_audit
BEFORE INSERT OR UPDATE ON LOP_HOC
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        :NEW.Nguoitao := USER;
        :NEW.Ngaytao := SYSDATE;
    END IF;
    :NEW.Nguoisua := USER;
    :NEW.Ngaysua := SYSDATE;
END trg_lophoc_audit;
/
-- bảng DANG_KY_HOC
CREATE OR REPLACE TRIGGER trg_dangkyhoc_audit
BEFORE INSERT OR UPDATE ON DANG_KY_HOC FOR EACH ROW
BEGIN
    IF INSERTING THEN :NEW.Nguoitao := USER; :NEW.Ngaytao := SYSDATE; END IF;
    :NEW.Nguoisua := USER; :NEW.Ngaysua := SYSDATE;
END;
/
-- bảng GIAO_VIEN
CREATE OR REPLACE TRIGGER trg_giaovien_audit
BEFORE INSERT OR UPDATE ON GIAO_VIEN FOR EACH ROW
BEGIN
    IF INSERTING THEN :NEW.Nguoitao := USER; :NEW.Ngaytao := SYSDATE; END IF;
    :NEW.Nguoisua := USER; :NEW.Ngaysua := SYSDATE;
END;
/
-- bảng DIEM_SO
CREATE OR REPLACE TRIGGER trg_diemso_audit
BEFORE INSERT OR UPDATE ON DIEM_SO FOR EACH ROW
BEGIN
    IF INSERTING THEN :NEW.Nguoitao := USER; :NEW.Ngaytao := SYSDATE; END IF;
    :NEW.Nguoisua := USER; :NEW.Ngaysua := SYSDATE;
END;
/
-- bai 5.2
CREATE OR REPLACE TRIGGER trg_max_enrollment
BEFORE INSERT ON DANG_KY_HOC
FOR EACH ROW
DECLARE
    v_so_lop NUMBER;
BEGIN
    -- Dem so lop sinh vien nay dang dang ky
    SELECT COUNT(*)
    INTO v_so_lop
    FROM DANG_KY_HOC
    WHERE MaSV = :NEW.MaSV;

    -- Neu da co 3 lop tro len thi tu choi
    IF v_so_lop >= 3 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Sinh vien ' || :NEW.MaSV || ' da dang ky du 3 lop! Khong the dang ky them.'
        );
    END IF;
END trg_max_enrollment;
/
INSERT INTO DANG_KY_HOC (MaSV, MalopID, NgayDK, Nguoitao, Ngaytao, Nguoisua, Ngaysua)
VALUES (1001, 5, SYSDATE, USER, SYSDATE, USER, SYSDATE);
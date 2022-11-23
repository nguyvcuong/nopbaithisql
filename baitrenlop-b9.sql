create table nguoimua (
ten nvarchar(100)not null,
diachi ntext not null,
dienthoai varchar(15) primary key
);

create table tsanpham (
ten nvarchar(250)not null,
mota nvarchar(250),
donvi nvarchar(50)not null,
gia int not null check (gia >=0) default 0,
id int primary key identity(1,1)
);

create table DonHang (
ma varchar(20) primary key,
ngaydat date not null check(ngaydat<= getdate() ) default getdate(),
tongtien decimal(12,4) not null check(tongtien>=0),
dienthoai varchar(15) not null foreign key references nguoimua(dienthoai)
);

create table DonHangSanPham (
ma varchar(20) not null foreign key references DonHang(ma),
id int not null  foreign key references tsanpham(id),
thanhtien decimal(12,4)not null check (thanhtien >=0),
soluong int not null check(soluong > 0)
);

--drop table DonHangSanPham;
--drop table DonHang;
--drop table SanPham;
--drop table KhachHang;
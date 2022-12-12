CREATE DATABASE EmoteHelp

USE EmoteHelp

CREATE TABLE Pegawai(
    nip int (10) PRIMARY KEY not null,
    nama_pegawai char (50) not null,
    j_kel varchar(50),
        type ENUM ('Laki-laki', 'Perempuan') not null,
    alamat varchar(50) not null,
    e_mail varchar(50) not null,
    no_hp varchar(16) not null,
    jdw_kerja char(16) not null,
        SCHEDULE ENUM ('Pagi', 'Siang', 'Sore') not null,
    kode_book varchar(20) not null,
        FOREIGN KEY fk_Transaksi(kode_book)
        REFERENCES Transaksi(kode_book)
)

create table Pelanggan(
    uname_plg varchar(10) PRIMARY KEY not null,
    nama_plg char(50) not null,
    j_kel varchar(50),
        type ENUM ('Laki-laki', 'Perempuan') not null,
    alamat varchar(50) not null,
    no_hp varchar(16) not null,
    jenis_ply varchar(20) not null,
        FOREIGN KEY fk_Pelayanan(jenis_ply)
        REFERENCES Pelayanan(jenis_ply)
    kode_book varchar(20) not null,
        FOREIGN KEY fk_Transaksi(kode_book)
        REFERENCES Transaksi(kode_book)
)

CREATE TABLE Pelayanan(
    jenis_ply varchar(20) PRIMARY KEY not null,
    harga decimal (10,2) not null
)

create table Transaksi(
    kode_book varchar(10) PRIMARY KEY not null,
    nip int(10) not null, /*automatic jd 1 staff kasir bisa buat beberapa customer*/
        FOREIGN KEY fk_Pegawai(nip)
        REFERENCES Pegawai(nip)
    tgl_book datetime not null,
    tgl_ply datetime not null,
    tgl_byr datetime not null,
    total_byr decimal (10,2) not null 
)
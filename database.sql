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
        SCHEDULE ENUM ('Pagi', 'Siang', 'Sore') not null
)

CREATE TABLE Pelanggan(
    kode_book varchar(10) PRIMARY KEY not null,
    tgl_book datetime not null,
    tgl_bayar datetime not null,
    nama_plg char(50) not null,
    j_kel varchar(50),
        type ENUM ('Laki-laki', 'Perempuan') not null,
    alamat varchar(50) not null,
    no_hp varchar(16) not null,
    jenis_ply varchar(20) not null, 
    	FOREIGN KEY fk_Pel(jenis_ply)
    	REFERENCES Pelayanan(jenis_ply)
)

CREATE TABLE Pelayanan(
    jenis_ply varchar(20) PRIMARY KEY not null,
    harga decimal (10,2) not null
)

CREATE TABLE Transaksi(
    no_urut int(5) PRIMARY KEY not null,
    kode_book varchar(10) not null,
    	FOREIGN KEY fk_Pelanggan(kode_book)
    	REFERENCES Pelanggan(kode_book)
)
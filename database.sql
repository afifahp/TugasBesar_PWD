create database EmoteHelp

use EmoteHelp

create table Pegawai(
    nip int (10) PRIMARY KEY not null,
    nama_pegawai char (50) not null,
    j_kel varchar(50),
        type ENUM ('Laki-laki', 'Perempuan') not null,
    alamat varchar(50) not null,
    e_mail varchar(50) not null,
    no_hp varchar(16) not null,
    jdw_kerja char(16) not null,
        type ENUM ('Pagi', 'Siang', 'Sore') not null,
);

create table Pelanggan(
    kode_book varchar(10) PRIMARY KEY not null,
    tgl_book datetime not null,
    tgl_bayar datetime not null,
    nama_plg char(50) not null,
    j_kel varchar(50),
        type ENUM ('Laki-laki', 'Perempuan') not null,
    alamat varchar(50) not null,
    no_hp varchar(16) not null,
    jenis_ply varchar(20) constraint cektype check (jenis_ply in ('Coret', 'Mewarnai', 'Hancurkan')),
        FOREIGN KEY REFERENCES Pelayanan(jenis_ply) not null
;)

create table Pelayanan(
    jenis_ply varchar(20) PRIMARY KEY not null,
    harga decimal not null,
);

create table Transaksi(
    no_urut int(5) PRIMARY KEY not null,
    kode_book varchar(10) FOREIGN KEY REFERENCES Pelanggan(kode_book) not null
)
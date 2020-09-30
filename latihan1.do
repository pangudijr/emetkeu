/*Do File untuk belajar dasar STATA: Kelas Asistensi Ekonometrika Keuangan*/


clear all	/*untuk membersihkan semua proses data yang tersimpan dalam memori sementara STATA, dipakai untuk menjalankan do file pertama kali*/
capture log close	/*untuk menutup semua file log yang terbuka*/
set more off	/*memberitahu STATA agar menunggu kamu menekan tombol log/pesan yang sedang ditampilkan sebelum melanjutkan running do file*/


cd "D:\Kelas Asisten Emetkeu"	/*Pengaturan untuk lokasi default semua aktifitas/proses yang dilakukan STATA*/


import excel Tahun	Consumption	Income	Internet using latihan1.xlsx, sheet("Sheet1") cellrange(A2) /*import file excel kamu*/

*Memulai olah data di STATA: Variabel Kontinu
gen Incomesqua = Income^2
ren Incomesqua Incomesquare

save "latihan1.dta", replace

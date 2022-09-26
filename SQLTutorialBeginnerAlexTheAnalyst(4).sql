select *
from EmployeeDemographics;

select gender
from EmployeeDemographics
group by gender;
-- group by untuk mengatur data yang bersifat identik

select gender, count(gender) as Total 
from EmployeeDemographics
group by gender;
-- disini group by dapat digabungkan dengan beberapa fungsi seperti count
-- sehingga group by dapat meng groupkan data yang identik menjadi satu bagian

select gender, age, count(gender)
from EmployeeDemographics
group by gender, age;
-- kenapa pada group by count(gender) tidak masuk, karena merupakan kolom baru yang diperoleh
-- diperoleh dari perhitungan bukan asli dari tabel yang ada

select gender, count(gender) as Total 
from EmployeeDemographics
where age > 31
group by gender;
-- group by bisa digunakan sebelum perintah where
-- menghitung total gender laki-laki dan perempuan dengan umur lebih 31

select gender, count(gender) as Total 
from EmployeeDemographics
where age > 31
group by gender
order by count(gender) desc;
-- order by digunakan untuk mengurutkan dari terbesar atau terkecil
-- menghitung total gender laki-laki dan perempuan dengan umur lebih 31 dari besar ke terkecil jumlahnya

select *
from EmployeeDemographics
order by age asc;
-- mengurutkan data berdasarkan umur yang terkecil ke terbesar

select *
from EmployeeDemographics
order by age, gender asc;
-- mengurutkan data berdasarkan umur yang terkecil ke terbesar 
-- dan gender dari alfabet asc

select *
from EmployeeDemographics
order by age desc, gender asc;
-- mengurutkan data berdasarkan umur desc 
-- dan gender dari alfabet asc
-- nama kolom bisa diganti dengan nomor 
-- misal employee id (1), first_name (2) dst



1. Data - bu malumotlar ,ular faktlar, raqamlar, matn yoki har qanday axborot bo‘lib, uni kompyuter saqlaydi va qayta ishlaydi.
   Database- bu ma’lumotlar bazasi bo‘lib, u tartibli shaklda saqlanadi, boshqariladi va tezkor qidirish uchun qulaydir.
   Relational Database - bu bu ma’lumotlar jadval  shaklida saqlanadigan bazadir. Har bir jadval ustunlardan va qatorlardan iborat bo‘ladi. 
   Table – bu ma’lumotlar bazasidagi strukturadir, unda ma’lumotlar satr va ustun  ko‘rinishida saqlanadi.

2. High Security – ma’lumotlarni xavfsiz saqlash imkoniyati bor.
   Data Management Tools – katta hajmdagi ma’lumotlarni boshqarish oson.
   High Performance – tez ishlash uchun optimallashtirilgan.
   Integration with BI tools – Power BI, Excel bilan ishlaydi.
   Backup and Restore – ma’lumotlarni zahiralash va tiklash imkoniyati mavjud.

3.SQL Server’da ikkita asosiy authentication mode mavjud:
 Windows Authentication – foydalanuvchi Windows tizimidagi login orqali kiradi.
 SQL Server Authentication – foydalanuvchi SQL login username va password orqali kiradi..
 


4.create database schooldb

5.use schooldb  create table  students ( studentid int primary key , name varchar (50) , age int )

6.SQL Server - bu  ma’lumotlar bazasini boshqaruvchi server ma’lumotlarni saqlaydi, boshqaradi, tahlil qiladi.
 SQL Server Management Studio - bu  SQL Server bilan ishlash uchun  interfeys , SSMS  sql kod yozip jadval yaratsa buladi.
 

7.DQL (Data Query Language)  - bu ma’lumotlarni ko‘rish yoki qidirish uchun ishlatiladi. 
  DML  (Data Manipulation Language) - bu jadvaldagi ma’lumotlarni o‘zgartirish yani qo‘shish, yangilash, o‘chirish.  
  DDL  (Data Definition Language)  - bu ma’lumotlar bazasining strukturasi bilan ishlaydi jadval yaratadi, o‘zgartiradi yoki o‘chiradi.
  DCL (Data Control Language) - bu huquqlarni boshqaradi.   
  TCL  (Transaction Control Language ) - bu  ma’lumotlarni xatolik bo‘lmasdan saqlash yoki bekor qilish uchun ishlatiladi.  
8.insert into students values ( 1, 'bexruz', 24 ), (2, 'muhammadqodir', 24 ) , ( 3, 'sanjar', 24 ) , ( 4, 'abbos', 24)
  select * from students

9. Mening kompyuterimga kiramiz va uning ichidagi C diskka kiramiz, u yerdan Program Files nomli papkani topib o'sha papkani ichiga kiramiz. U yerdan Microsoft SQL Sever nomli papkaga kiramiz. MSSQL16.MSSQLSERVER nomli papkaga kiramiz va uning ichidagi MSSQL papkasiga kiramiz va nihoyat oxirigi papka Backup papkasiga kiramiz va u yerdan AdventureWorksDW2022 nomli fileni topishimiz mumkin

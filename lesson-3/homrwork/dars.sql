
1. BULK INSERT — bu SQL Serverda katta hajmdagi malumotlarni bir vaqtning ozida jadvalga yuklash uchun ishlatiladigan T-SQL buyrugidir, Katta hajmdagi ma’lumotlarni tezkor va samarali import qilish.

2. CSV , TXT , XML , JSON 

3. create table products (productid int primary key identity (1,1) , productname VARCHAR(50) , price decimal (10,2) )

4. INSERT INTO products ( productName, price)
VALUES 
('phone', 1200.50),
( 'laptop', 125.75),
( 'watch', 45.00);

5. NULL -  ustun qiymati bosh yoki malumot kiritilmasa boladi.
   NOT NULL  - ustun qiymati majburiy. Qiymat kiritilmasa, xato chiqadi.

 6.  ALTER TABLE products
ADD CONSTRAINT Unique_productName 
UNIQUE (productName);

7. "--" belgisi bilan boshlangan satr bir qatorli izoh hisoblanadi.
   "/* ... */" orasidagi matn esa bir nechta qatorli izoh bo‘lishi mumkin.

8. alter table  products
    add categoryid int

	select * from products



9.CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);

10. IDENTITY ustuni SQL Serverda avtomatik raqam berish uchun ishlatiladi.
Har yangi satr qoshilganda SQL Server oz-ozidan qiymat oshiradi.

11. BULK INSERT Products
FROM 'C:\Data\Products.txt'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',    
    FIRSTROW = 2 );

12. ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);

13. PRIMARY KEY  - jadvaldagi har bir satrni yagona identifikator sifatida belgilaydi. Qiymatlar takrorlanmas va NOT NULL bolishi kerak. 
UNIQUE KEY  - ustundagi qiymatlar takrorlanmasligini taminlaydi, lekin NULL bolishi mumkin. Bir jadvalda bir nechta UNIQUE cheklov bolishi mumkin.

14.ALTER TABLE Products
ADD CONSTRAINT CHK_Price 
CHECK (Price > 0);

15. alter table Products
add   stock int not null default (0)

16. UPDATE Products
SET Price = ISNULL(Price, 0);

17. FOREIGN KEY -  bir jadvaldagi ustunni boshqa jadvaldagi PRIMARY KEY yoki UNIQUE ustun bilan boglaydi , malumotlarning yaxlitligini  taminlash.

18. CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,        
    CustomerName VARCHAR(50) NOT NULL,
    Age INT,  CONSTRAINT CHK_Age CHECK (Age >= 18) );

19.CREATE TABLE companys (
    ID INT IDENTITY(100,10) PRIMARY KEY, 
    Name VARCHAR(50)
);

20. CREATE TABLE OrderDetails (
    ID INT IDENTITY(1,1) PRIMARY KEY,   
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2)
);

21. ISNULL - agar qiymat NULL bolsa, uni replacement bilan almashtiradi faqat 2 qiymat.
COALESCE - birinchi NULL bolmagan qiymatni qaytaradi bir nechta qiymat bilan ishlaydi.

22.CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,           
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE      
);

23. ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;

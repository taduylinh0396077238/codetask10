IF EXISTS (SELECT*FROM sys.databases WHERE name = 'BTTask10')
	DROP DATABASE BTTask10
CREATE DATABASE BTTask10
USE BTTask10
--Tạo bảng 
CREATE TABLE Toyz (
	ProductCode VARCHAR(5) PRIMARY KEY,--ProductCode là khóa duy nhất cho mỗi sản phẩm
	Name VARCHAR(30), --Tên đồ chơi 
	Category VARCHAR(30), -- Tên các loại đồ chơi 
	Manufacturer VARCHAR(40),-- Tên nhà sản xuất 
	AgeRange VARCHAR(15), --Lứa tuổi trẻ phù hợp với đồ chơi 
	UnitPrice MONEY, --Gía của đồ chơi 
	Netweight INT, -- TRọng lượng đồ chơi tính bằng  gam 
	QtyOnHand INT --Số lượng đồ chơi conf trong cửa hàng 

)
INSERT INTO dbo.Toyz
(
    ProductCode,
    Name,
    Category,
    Manufacturer,
    AgeRange,
    UnitPrice,
    Netweight,
    QtyOnHand
)
VALUES
(   '1',   -- ProductCode - varchar(5)
    N'Búa Thor', -- Name - varchar(30)
    'Mao Hiem', -- Category - varchar(30)
    'Duy Linh', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    200, -- UnitPrice - money
    20, -- Netweight - int
    25  -- QtyOnHand - int
    ),
(   '2',   -- ProductCode - varchar(5)
    N'Súng', -- Name - varchar(30)
    'De Ban', -- Category - varchar(30)
    'Duy Linh', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    300, -- UnitPrice - money
    5, -- Netweight - int
    30  -- QtyOnHand - int
    ),
(   '3',   -- ProductCode - varchar(5)
    N'Điện THoại', -- Name - varchar(30)
    'Dien Tu', -- Category - varchar(30)
    'Duy Linh', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    400, -- UnitPrice - money
    2, -- Netweight - int
    100  -- QtyOnHand - int
    ),
(   '4',   -- ProductCode - varchar(5)
    N'Máy Tính ', -- Name - varchar(30)
    'Dien Tu ', -- Category - varchar(30)
    'Duy Linh', -- Manufacturer - varchar(40)
    '20', -- AgeRange - varchar(15)
    500, -- UnitPrice - money
    6, -- Netweight - int
    29 -- QtyOnHand - int
    ),
(   '5',   -- ProductCode - varchar(5)
    N'Bóng ', -- Name - varchar(30)
    'Giai Tri', -- Category - varchar(30)
    'Viet Quy', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    600, -- UnitPrice - money
    1, -- Netweight - int
    100  -- QtyOnHand - int
    ),
(   '6',   -- ProductCode - varchar(5)
    N'Cầu Lông', -- Name - varchar(30)
    'Gia Tri', -- Category - varchar(30)
    'Viet Quy', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    700, -- UnitPrice - money
    1, -- Netweight - int
    99 -- QtyOnHand - int
    ),
(   '7',   -- ProductCode - varchar(5)
    N'Chuột', -- Name - varchar(30)
    'Dap ', -- Category - varchar(30)
    'Viet Quy', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    800, -- UnitPrice - money
    2, -- Netweight - int
    88 -- QtyOnHand - int
    ),
(   '8',   -- ProductCode - varchar(5)
    N'Máy Bay', -- Name - varchar(30)
    'Du Lich', -- Category - varchar(30)
    'Viet Quy', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    900, -- UnitPrice - money
    3, -- Netweight - int
    96  -- QtyOnHand - int
    ),
(   '9',   -- ProductCode - varchar(5)
    N'Oto', -- Name - varchar(30)
    'Du Lich', -- Category - varchar(30)
    'Viet Quy', -- Manufacturer - varchar(40)
    '18', -- AgeRange - varchar(15)
    1000, -- UnitPrice - money
    30, -- Netweight - int
    40  -- QtyOnHand - int
    ),
(   '10',   -- ProductCode - varchar(5)
    N' giấy', -- Name - varchar(30)
    'Lap Ghep', -- Category - varchar(30)
    'Quang Anh', -- Manufacturer - varchar(40)
    '22', -- AgeRange - varchar(15)
    100, -- UnitPrice - money
    1, -- Netweight - int
    99 -- QtyOnHand - int
    ),
(   '11',   -- ProductCode - varchar(5)
    N'Sách', -- Name - varchar(30)
    'Doc', -- Category - varchar(30)
    'Quang Anh', -- Manufacturer - varchar(40)
    '22', -- AgeRange - varchar(15)
    150, -- UnitPrice - money
    2, -- Netweight - int
    77  -- QtyOnHand - int
    ),
(   '12',   -- ProductCode - varchar(5)
    N'Bảng ', -- Name - varchar(30)
    'Hoc', -- Category - varchar(30)
    'Quang Anh', -- Manufacturer - varchar(40)
    '22', -- AgeRange - varchar(15)
    199, -- UnitPrice - money
    12, -- Netweight - int
    88  -- QtyOnHand - int
    ),
(   '13',   -- ProductCode - varchar(5)
    N'Cờ', -- Name - varchar(30)
    'Giai Tri', -- Category - varchar(30)
    'Quang Anh', -- Manufacturer - varchar(40)
    '22', -- AgeRange - varchar(15)
    299, -- UnitPrice - money
    2, -- Netweight - int
    66 -- QtyOnHand - int
    ),
(   '14',   -- ProductCode - varchar(5)
    N'Bạn Gái ', -- Name - varchar(30)
    'Yeu Thuong', -- Category - varchar(30)
    'Quang Anh', -- Manufacturer - varchar(40)
    '22', -- AgeRange - varchar(15)
    2000000, -- UnitPrice - money
    49, -- Netweight - int
    21 -- QtyOnHand - int
    ),
(   '15',   -- ProductCode - varchar(5)
    N'Bạn TRai', -- Name - varchar(30)
    'Yeu Thuong', -- Category - varchar(30)
    'Quang', -- Manufacturer - varchar(40)
    '22', -- AgeRange - varchar(15)
    0, -- UnitPrice - money
    80, -- Netweight - int
    20  -- QtyOnHand - int
    )
GO
--2 Viết câu lệnh tạo Thủ tục lưu trữ có tên là HeavyToys cho phép liệt kê tất cả các loại đồ chơi có trọng lượng lớn hơn 500g.
CREATE PROCEDURE HeavyToys

AS
SELECT * FROM dbo.Toyz
WHERE Netweight >= 40
GO

--3 Viết câu lệnh tạo Thủ tục lưu trữ có tên là PriceIncreasecho phép tăng giá của tất cả các loại đồ chơi lên thêm 10 đơn vị giá.
CREATE PROCEDURE PriceIncrease
AS
UPDATE dbo.Toyz
SET UnitPrice += 10
GO

--4 Viết câu lệnh tạo Thủ tục lưu trữ có tên là QtyOnHand làm giảm số lượng đồ chơi còn trong của hàng mỗi thứ 5 đơn vị.
CREATE PROCEDURE QtyOnHand
AS
UPDATE dbo.Toyz
SET QtyOnHand -=5
--5 Thực thi 3 thủ tục lưu trữ trên.
EXECUTE dbo.HeavyToys 
EXECUTE dbo.PriceIncrease
EXECUTE dbo.QtyOnHand
--BT3 
-- Thủ tục lưu trữ hệ thống sp_helptext
EXECUTE sys.sp_helptext N'HeavyToys'   
--Khung nhìn hệ thống sys.sql_modules
SELECT definition FROM sys.sql_modules
WHERE
object_id=OBJECT_ID('HeavyToys')
GO
-- Hàm OBJECT_DEFINITION()
SELECT
OBJECT_DEFINITION(OBJECT_ID('HeavyToys')) AS DEFINITION
GO

--Viết câu lệnh hiển thị các đối tượng phụ thuộc của mỗi thủ tục lưu trữ trênViết câu lệnh hiển thị các đối tượng phụ thuộc của mỗi thủ tục lưu trữ trên
sp_depends 'HeavyToys'
GO

USE BTTask10
GO
--Chỉnh sửa thủ tục PriceIncrease và QtyOnHandthêm câu lệnh cho phép hiển thị giá trị mới đã được cập nhật của các trường (UnitPrice,QtyOnHand).
ALTER PROCEDURE dbo.PriceIncrease
AS
BEGIN
	SELECT  UnitPrice FROM dbo.Toyz

END
GO
-- Viết câu lệnh tạo thủ tục lưu trữ có tên là SpecificPriceIncrease thực hiện cộng thêm tổng số sản phẩm (giá trị trường QtyOnHand)vào giá của sản phẩm đồ chơi tương ứng.
CREATE PROCEDURE SpecificPriceIncrease
AS 
UPDATE dbo.Toyz
SET UnitPrice += QtyOnHand
GO
-- Chỉnh sửa thủ tục lưu trữ SpecificPriceIncrease cho thêm tính năng trả lại tổng số các bản ghi được cập nhật.

ALTER PROCEDURE SpecificPriceIncrease
AS
BEGIN
  SELECT UnitPrice FROM dbo.Toyz
END
GO
-- Chỉnh sửa thủ tục lưu trữ SpecificPriceIncrease cho phép gọi thủ tục HeavyToysbên trong nó
ALTER PROCEDURE SpecificPriceIncrease
AS
BEGIN
EXECUTE HeavyToys
END 
--Thực hiện điều khiển xử lý lỗi cho tất cả các thủ tục lưu trữ được tạo ra.
--Xóa bỏ tất cả các thủ tục lưu trữ đã được tạo ra 
DROP PROCEDURE dbo.HeavyToys

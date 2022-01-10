USE AdventureWorks2019
GO
--Tạo 1 thủ tục lưu trữ lấy ra toàn bộ nhân viên vào làm theo năm có tham số đầu vào là 1 năm 
CREATE PROCEDURE sp_DisplayEmployeesHirevear
  @HireYear INT
AS
SELECT* FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
GO
--Để chạy thủ tục này cần phải truyền tham số vào là năm mà nhân viên vào làm 
EXECUTE sp_DisplayEmployeesHirevear 2009
GO
--Tạo thủ tục lưu trữ đếm số người vào làm trong một năm xác định có tham số đầu vào là 1 năm , tham số đầu ra là số người vào làm trong năm 
CREATE PROCEDURE sp_EmployeeshireYearCount
	@HireYear INT,
	@Count INT OUTPUT
AS
SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
GO 
-- Chạy thủ tục lưu trữ cần phải truyền vào 1 tham số đầu vào và một tham số đầu ra 
DECLARE @Number INT
EXECUTE sp_EmployeeshireYearCount 2009, @Number OUTPUT
PRINT @Number
go
----Tạo thủ tục lưu trữ đến số người vào làm trong một năm xác định có tham số đầu vào là một năm, hàm trả về số người vào làm năm đó
CREATE PROCEDURE sp_EmployeeshireYearCount2
	@HireYear INT
AS
DECLARE @Count INT
SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)= @HireYear
RETURN @Count
GO

----Chạy thủ tục lưu trữ cần phải truyền vào 1 than số đầu và lấy về số người làm trong năm đó.
DECLARE @Number INT
EXECUTE @Number = dbo.sp_EmployeeshireYearCount2 2009
PRINT @Number
go
--Tạo bảng tạm #Students
CREATE TABLE #Students
(
	RollNo VARCHAR(6) CONSTRAINT PK_Student PRIMARY KEY,
	FullName NVARCHAR(100),
	Birthday DATETIME CONSTRAINT DF_StudentsBirthday DEFAULT
DATEADD(YY, -18, GETDATE())
)
GO
--Tạo Thủ tục lưu trữ tạm để chèn dữ liệu vào bảng tạm 
CREATE PROCEDURE #spInsertStudents
	@rollNo VARCHAR(6),
	@fullName NVARCHAR(100),
	@birthday DATETIME
AS BEGIN
	IF(@birthday IS NULL)
		SET @birthday=DATEADD(YY, -18, GETDATE())
	INSERT INTO #Students
	(
	    RollNo,
	    FullName,
	    Birthday
	)
	VALUES
	(   'magic',     -- RollNo - varchar(6)
	    N'ảo ma ',   -- FullName - nvarchar(100)
	    '20220110' -- Birthday - datetime
	    )
END
GO
-- Sử dụng thủ tục lưu trữ để chèn dữ liệu vào bảng tạm 
EXEC #spStudents 'A12345', 'abc', NULL
EXEC #spStudents 'A54321', 'abc', '10/01/2022'
SELECT*FROM #Students
--Tạo thủ tục lưu trữ tạm để xóa dữ liệu từ bảng theo RollNo

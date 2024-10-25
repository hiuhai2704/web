-- Tạo cơ sở dữ liệu nếu chưa tồn tại
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'UserManagement')
BEGIN
    CREATE DATABASE UserManagement;
END
GO

-- Sử dụng cơ sở dữ liệu đã tạo
USE UserManagement;
GO

-- Tạo bảng Users
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Users' AND xtype='U')
BEGIN
    CREATE TABLE Users (
        UserID INT IDENTITY(1,1) PRIMARY KEY,
        Username NVARCHAR(50) NOT NULL UNIQUE,
        Password NVARCHAR(255) NOT NULL,
        Email NVARCHAR(100) NOT NULL,
        CreatedAt DATETIME DEFAULT GETDATE(),
        UpdatedAt DATETIME DEFAULT GETDATE()
    );
END
GO

-- Thêm người dùng mới
-- Bạn có thể gọi câu lệnh này với thông tin người dùng cụ thể
INSERT INTO Users (Username, Password, Email) 
VALUES ('example_user', 'hashed_password', 'example@example.com');
GO

-- Sửa đổi thông tin người dùng
-- Ví dụ: cập nhật địa chỉ email của người dùng với UserID = 1
UPDATE Users
SET Email = 'new_email@example.com', UpdatedAt = GETDATE()
WHERE UserID = 1;
GO

-- Xóa người dùng
-- Ví dụ: xóa người dùng với UserID = 1
DELETE FROM Users
WHERE UserID = 1;
GO

-- Truy vấn để lấy tất cả người dùng
SELECT * FROM Users;
GO

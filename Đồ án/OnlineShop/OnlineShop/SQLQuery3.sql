-- Tạo cơ sở dữ liệu OnlineShop
CREATE DATABASE OnlineShop;
GO

-- Sử dụng cơ sở dữ liệu OnlineShop
USE OnlineShop;
GO

-- Tạo bảng Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1), -- Tự động tăng
    Name NVARCHAR(100) NOT NULL,
    Price DECIMAL(18, 2) NOT NULL,
    Image NVARCHAR(255) NOT NULL,
    Quantity INT NOT NULL DEFAULT 50 -- Thêm cột Quantity với giá trị mặc định là 50
);
GO

-- Thêm dữ liệu mẫu vào bảng Products
INSERT INTO Products (Name, Price, Image, Quantity) VALUES
('Laptop ASUS VivoBook', 14500000, 'https://cdn.tgdd.vn/Products/Images/44/325477/asus-asus-vivobook-15-oled-a1505za-i5-ma415w-thumb-600x600.jpg', 50),
('Laptop Dell Inspiron 15 3520', 16490000, 'https://cdn.tgdd.vn/Products/Images/44/321192/dell-inspiron-15-3520-i5-25p231-250424-020344-600x600.jpg', 50),
('Laptop HP 15', 16790000, 'https://cdn.tgdd.vn/Products/Images/44/323920/hp-15-fd0234tu-i5-9q969pa-thumb-1-600x600.jpg', 50),
('Microsoft Surface Laptop Go', 12490000, 'https://surfacecity.vn/wp-content/uploads/Surface-Lap-Go-back-pl-500x500.jpg', 50),
('Asus Vivobook X415E', 9500000, 'https://nhatminhlaptop.com/upload/products/2024-07-09-19-31-45/asus-vivobook-x415e-1.jpg', 50),
('Dell Latitude', 20000000, 'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/page/category/laptop/xps/fy24-family-launch/prod-312204-apjc-laptop-xps-16-9640-14-9440-13-9340-800x620-pl-gr.png', 50),
('Laptop Acer Aspire 5', 18990000, 'https://cdn.tgdd.vn/Products/Images/44/314630/acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-170923-015941-600x600.jpg', 50),
('Laptop Dell XPS 9510', 26990000, 'https://bizweb.dktcdn.net/thumb/grande/100/512/769/products/dell-xps-9510-laptop-k1-1.jpg?v=1714385196703', 50),
('Laptop Dell Inspiron 14 7430', 27640000, 'https://hanoicomputercdn.com/media/lib/07-06-2024/laptop-dell-inspiron-14-7430-t7430-i7u165w11slu-i7-1355u-16gb-ram-512gb-ssd-142.jpg', 50),
('DELL XPS 15 9530', 30900000, 'https://mac24h.vn/images/detailed/93/Dell-XPS-9530-2023-Mac24h_gzo1-sb.png', 50);
GO

-- Chèn thêm 40 sản phẩm khác với tên và giá ngẫu nhiên
DECLARE @i INT = 1;

WHILE @i <= 40
BEGIN
    INSERT INTO Products (Name, Image, Price, Quantity)
    VALUES (
        CONCAT('Laptop Model ', @i + 10), -- Tên sản phẩm khác nhau
        CONCAT('https://example.com/image', @i + 10, '.jpg'), -- Đường dẫn hình ảnh mẫu
        CAST((RAND() * (3000000) + 1000000) AS DECIMAL(18, 2)), -- Giá ngẫu nhiên từ 1,000,000 đến 4,000,000
        50 -- Số lượng cố định là 50
    );

    SET @i = @i + 1;
END;
GO

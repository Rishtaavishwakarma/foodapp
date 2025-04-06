create database handyman;
use handyman;


CREATE TABLE admin (
    admin_id INT AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (admin_id)
);

INSERT INTO admin (email, password) VALUES('digitalrhombus@example.com', '$2a$10$kIxbJIcMpKYpD0CUz.nZXeNnJqRPyoV2dFdFXnIYMzL5QPkHyzexm')

________________________________________________________________________________________________________________________________________________________
--category ENUM('haircut', 'painting', 'cleaning') NOT NULL,

CREATE TABLE services (
    service_id INT AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,  
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (service_id)
);


Alter table services add column image longblob
Alter table services add column super_category varchar(50)
Alter table services add column rating varchar(50)

INSERT INTO services (service_id, title, description, category, price, image) VALUES
(1, 'Men\'s Haircut', 'A stylish and professional haircut for men.', 'Men\'s Haircut', 20.00, NULL),
(2, 'Women\'s Haircut', 'A trendy haircut for women, customized to your style.', 'Women\'s Haircut', 30.00, NULL),
(3, 'Hair Coloring', 'Professional hair coloring services with high-quality dyes.', 'Hair Coloring', 50.00, NULL),
(4, 'Hair Styling', 'Hair styling for special occasions and everyday looks.', 'Hair Styling', 25.00, NULL),
(5, 'Facial Treatment', 'Deep cleansing and rejuvenating facial treatments.', 'Facial Treatment', 40.00, NULL),
(6, 'Massage', 'Relaxing full-body or targeted massage therapy.', 'Massage', 60.00, NULL),
(7, 'Manicure', 'Professional manicure service for clean and polished nails.', 'Manicure', 15.00, NULL),
(8, 'Pedicure', 'Relaxing pedicure to keep your feet healthy and soft.', 'Pedicure', 20.00, NULL),
(9, 'Painting', 'High-quality interior and exterior painting services.', 'Painting', 200.00, NULL),
(10, 'Plumbing', 'Expert plumbing repair and installation services.', 'Plumbing', 150.00, NULL),
(11, 'Electrical Work', 'Professional electrical installation and repair.', 'Electrical Work', 180.00, NULL),
(12, 'Flooring', 'Floor installation and repair services for all types of floors.', 'Flooring', 250.00, NULL),
(13, 'House Cleaning', 'Comprehensive house cleaning services for all home sizes.', 'House Cleaning', 80.00, NULL),
(14, 'Carpet Cleaning', 'Deep carpet cleaning for a fresh and hygienic home.', 'Carpet Cleaning', 100.00, NULL),
(15, 'Window Washing', 'Interior and exterior window washing services.', 'Window Washing', 90.00, NULL),
(16, 'Lawn Mowing', 'Regular lawn mowing and maintenance services.', 'Lawn Mowing', 50.00, NULL),
(17, 'Gardening', 'Garden maintenance and landscaping services.', 'Gardening', 120.00, NULL),
(18, 'Pressure Washing', 'High-pressure washing for driveways, patios, and more.', 'Pressure Washing', 130.00, NULL),
(19, 'Furniture Assembly', 'Professional furniture assembly for all types of furniture.', 'Furniture Assembly', 60.00, NULL);


UPDATE services 
SET image = LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\waxing.png') 
WHERE service_id = 47;

________________________________________________________________________________________________________________________________________________________

CREATE TABLE location_service_provider ( 
    sp_location_id INT AUTO_INCREMENT,
    latitude DECIMAL(10, 7) NOT NULL,
    longitude DECIMAL(10, 7) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (sp_location_id)
);

INSERT INTO location_service_provider (latitude, longitude, address, city, state, country) VALUES
(43.651070, -79.347015, '100 King St W', 'Toronto', 'Ontario', 'Canada'),
(45.501690, -73.567253, '200 Rue Sainte-Catherine Ouest', 'Montreal', 'Quebec', 'Canada'),
(49.282730, -123.120735, '300 Granville St', 'Vancouver', 'British Columbia', 'Canada'),
(51.044733, -114.071883, '400 9 Ave SW', 'Calgary', 'Alberta', 'Canada'),
(53.546125, -113.493823, '500 Jasper Ave', 'Edmonton', 'Alberta', 'Canada');

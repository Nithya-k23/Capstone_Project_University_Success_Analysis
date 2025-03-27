CREATE TABLE gdp_data (
    country_id INT PRIMARY KEY,
    gdp DECIMAL(20, 2),
    FOREIGN KEY (country_id) REFERENCES country(id)
);

INSERT INTO gdp_data (country_id, gdp) VALUES
(1, 450.00),   -- Argentina
(2, 1400.00),  -- Australia
(3, 450.00),   -- Austria
(4, 300.00),   -- Bangladesh
(5, 60.00),    -- Belarus
(6, 550.00),   -- Belgium
(7, 1800.00),  -- Brazil
(8, 70.00),    -- Bulgaria
(9, 1700.00),  -- Canada
(10, 300.00),  -- Chile
(11, 14000.00),-- China
(12, 300.00),  -- Colombia
(13, 60.00),   -- Croatia
(14, 25.00),   -- Cyprus
(15, 250.00),  -- Czech Republic
(16, 350.00),  -- Denmark
(17, 400.00),  -- Egypt
(18, 30.00),   -- Estonia
(19, 270.00),  -- Finland
(20, 2800.00), -- France
(21, 3800.00), -- Germany
(22, 70.00),   -- Ghana
(23, 200.00),  -- Greece
(24, 350.00),  -- Hong Kong
(25, 160.00),  -- Hungary
(26, 25.00),   -- Iceland
(27, 2900.00), -- India
(28, 1100.00), -- Indonesia
(29, 400.00),  -- Iran
(30, 400.00),  -- Ireland
(31, 400.00),  -- Israel
(32, 2000.00), -- Italy
(33, 5000.00), -- Japan
(34, 45.00),   -- Jordan
(35, 100.00),  -- Kenya
(36, 35.00),   -- Latvia
(37, 55.00),   -- Lebanon
(38, 55.00),   -- Lithuania
(39, 70.00),   -- Luxembourg
(40, 50.00),   -- Macau
(41, 350.00),  -- Malaysia
(42, 1200.00), -- Mexico
(43, 120.00),  -- Morocco
(44, 900.00),  -- Netherlands
(45, 200.00),  -- New Zealand
(46, 450.00),  -- Nigeria
(47, 400.00),  -- Norway
(48, 80.00),   -- Oman
(49, 300.00),  -- Pakistan
(50, 600.00),  -- Poland
(51, 250.00),  -- Portugal
(52, 100.00),  -- Puerto Rico
(53, 200.00),  -- Qatar
(54, 250.00),  -- Romania
(55, 1600.00), -- Russia
(56, 800.00),  -- Saudi Arabia
(57, 50.00),   -- Serbia
(58, 350.00),  -- Singapore
(59, 100.00),  -- Slovakia
(60, 55.00),   -- Slovenia
(61, 350.00),  -- South Africa
(62, 1600.00), -- South Korea
(63, 1400.00), -- Spain
(64, 550.00),  -- Sweden
(65, 700.00),  -- Switzerland
(66, 600.00),  -- Taiwan
(67, 500.00),  -- Thailand
(68, 800.00),  -- Turkey
(69, 40.00),   -- Uganda
(70, 150.00),  -- Ukraine
(71, 400.00),  -- United Arab Emirates
(72, 2800.00), -- United Kingdom
(73, 21000.00),-- United States of America
(74, 60.00);   -- Uruguay

SELECT * FROM gdp_data;
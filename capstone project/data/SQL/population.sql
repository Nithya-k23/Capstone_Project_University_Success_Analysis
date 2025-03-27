-- Create the population table
CREATE TABLE population (
    country_id INT PRIMARY KEY,
    population_millions DECIMAL(10, 2)
);

-- Insert population data into the table 
INSERT INTO population (country_id, population_millions) VALUES
(1, 45.69),   -- Argentina
(2, 26.7),   -- Australia
(3, 9.1),    -- Austria
(4, 173.56),  -- Bangladesh
(5, 9.05),    -- Belarus
(6, 11.73),   -- Belgium
(7, 211.99),  -- Brazil
(8, 6.75),    -- Bulgaria
(9, 39.74),   -- Canada
(10, 19.76),  -- Chile
(11, 1419.32), -- China
(12, 52.88),  -- Colombia
(13, 3.9),   -- Croatia
(14, 1.32),   -- Cyprus
(15, 10.73),  -- Czech Republic
(16, 5.97),   -- Denmark
(17, 116.53), -- Egypt
(18, 1.36),   -- Estonia
(19, 5.61),   -- Finland
(20, 66.54),  -- France
(21, 84.55),  -- Germany
(22, 34.42),  -- Ghana
(23, 10.04),  -- Greece
(24, 7.41),   -- Hong Kong
(25, 9.67),   -- Hungary
(26, 0.39),   -- Iceland
(27, 1450.93), -- India
(28, 283.48), -- Indonesia
(29, 91.567),  -- Iran
(30, 5.25),   -- Ireland
(31, 9.38),   -- Israel
(32, 59.34),  -- Italy
(33, 123.75), -- Japan
(34, 11.55),  -- Jordan
(35, 56.43),  -- Kenya
(36, 1.87),   -- Latvia
(37, 5.80),   -- Lebanon
(38, 2.85),   -- Lithuania
(39, 0.67),   -- Luxembourg
(40, 0.72),   -- Macau
(41, 32.7),  -- Malaysia
(42, 130.86), -- Mexico
(43, 38.08),  -- Morocco
(44, 18.22),  -- Netherlands
(45, 5.21),   -- New Zealand
(46, 232.67), -- Nigeria
(47, 5.57),   -- Norway
(48, 5.28),   -- Oman
(49, 251.26), -- Pakistan
(50, 38.53),  -- Poland
(51, 10.42),  -- Portugal
(52, 3.24),   -- Puerto Rico
(53, 3.04),   -- Qatar
(54, 19.01),  -- Romania
(55, 144.82), -- Russia
(56, 33.96),  -- Saudi Arabia
(57, 6.73),   -- Serbia
(58, 5.83),   -- Singapore
(59, 55.50),   -- Slovakia
(60, 2.11),   -- Slovenia
(61, 64.00),  -- South Africa
(62, 51.71),  -- South Korea
(63, 47.91),  -- Spain
(64, 10.60),  -- Sweden
(65, 8.92),   -- Switzerland
(66, 23.21),  -- Taiwan
(67, 71.66),  -- Thailand
(68, 87.47),  -- Turkey
(69, 50.01),  -- Uganda
(70, 37.86),  -- Ukraine
(71, 11.02),   -- United Arab Emirates
(72, 69.13),  -- United Kingdom
(73, 345.42), -- United States of America
(74, 3.38);   -- Uruguay
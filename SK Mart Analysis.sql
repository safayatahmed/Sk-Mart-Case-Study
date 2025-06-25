
-- Customers
CREATE TABLE customers (
    id INT PRIMARY KEY,
    full_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address JSON,
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Stores
CREATE TABLE stores (
    id INT PRIMARY KEY,
    store_name VARCHAR(100),
    location_address JSON,
    contact_number VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Categories
CREATE TABLE categories (
    id INT PRIMARY KEY,
    category_name VARCHAR(100),
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Products
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    category_id INT,
    price DECIMAL(10,2),
    description TEXT,
    discount_percent DECIMAL(5,2),
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Marketing Campaigns
CREATE TABLE marketing_campaigns (
    id INT PRIMARY KEY,
    campaign_name VARCHAR(255),
    platform ENUM('facebook', 'google', 'sms', 'email', 'offline_banner', 'youtube', 'tiktok'),
    budget DECIMAL(12,2),
    start_date DATE,
    end_date DATE,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Orders
CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    store_id INT,
    marketing_id INT NULL,
    order_type ENUM('online', 'offline'),
    order_date DATETIME,
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Order Items
CREATE TABLE order_items (
    id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Inventory
CREATE TABLE inventory (
    id INT PRIMARY KEY,
    store_id INT,
    product_id INT,
    quantity INT,
    created_at DATETIME,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Data Inserts
INSERT INTO customers (id, full_name, phone, email, address, created_at, updated_at) VALUES
(1, 'Vanya Garde', '+8801334824185', 'bhardwajkavya@shetty.net', '{"street": "100 Dave Nagar", "area": "Mirpur", "city": "Dhaka", "postal_code": "1209", "country": "Bangladesh"}', '2024-08-03 09:42:23', '2024-10-18 06:53:11'),
(2, 'Sahil Zachariah', '+8801928963920', 'edwinnishith@jha-sidhu.com', '{"street": "100 Gopal Street", "area": "Badda", "city": "Dhaka", "postal_code": "1212", "country": "Bangladesh"}', '2024-10-06 23:45:37', '2025-04-06 14:58:32'),
(3, 'Anvi Mallick', '+8801785141628', 'zmagar@gmail.com', '{"street": "8 Bail Street", "area": "Badda", "city": "Dhaka", "postal_code": "1219", "country": "Bangladesh"}', '2024-08-27 11:16:27', '2025-03-07 02:17:56'),
(4, 'Jayan Bhat', '+8801813081728', 'khoslaarhaan@rastogi.com', '{"street": "72 Iyer Circle", "area": "Farmgate", "city": "Dhaka", "postal_code": "1204", "country": "Bangladesh"}', '2024-11-07 17:06:49', '2025-05-23 22:08:01'),
(5, 'Kiara Soni', '+8801695931487', 'hmandal@buch-wali.net', '{"street": "16 Chaudhuri Chowk", "area": "Farmgate", "city": "Dhaka", "postal_code": "1224", "country": "Bangladesh"}', '2025-04-16 14:04:09', '2025-04-05 09:46:14'),
(6, 'Ojas Suresh', '+8801614096369', 'jiya56@mani.info', '{"street": "83 Hayre", "area": "Farmgate", "city": "Dhaka", "postal_code": "1205", "country": "Bangladesh"}', '2024-09-27 22:28:42', '2024-09-24 07:51:59'),
(7, 'Aaryahi Agrawal', '+8801838978527', 'tarachand@mallick.info', '{"street": "40 Andra Nagar", "area": "Mirpur", "city": "Dhaka", "postal_code": "1216", "country": "Bangladesh"}', '2024-10-03 13:21:58', '2024-06-30 04:12:13'),
(8, 'Jayesh Lall', '+8801739581231', 'shayak12@gmail.com', '{"street": "42 Sangha Street", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1220", "country": "Bangladesh"}', '2024-07-31 11:43:47', '2025-03-10 09:40:19'),
(9, 'Dharmajan Sengupta', '+8801479821206', 'rohan54@gmail.com', '{"street": "18 Devi Marg", "area": "Dhanmondi", "city": "Dhaka", "postal_code": "1226", "country": "Bangladesh"}', '2024-12-22 10:07:29', '2024-12-10 04:10:07'),
(10, 'Nirvi Venkatesh', '+8801948211978', 'vigpriyansh@johal-bhatti.info', '{"street": "1 Sachar Path", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1230", "country": "Bangladesh"}', '2025-03-13 22:28:49', '2024-06-06 14:40:36'),
(11, 'Taimur Chada', '+8801699064587', 'rdate@gmail.com', '{"street": "16 Contractor Nagar", "area": "Banani", "city": "Dhaka", "postal_code": "1228", "country": "Bangladesh"}', '2025-05-02 15:31:26', '2025-03-06 18:52:43'),
(12, 'Bhavin Khosla', '+8801886003182', 'sara83@gmail.com', '{"street": "79 Mangat Nagar", "area": "Badda", "city": "Dhaka", "postal_code": "1210", "country": "Bangladesh"}', '2024-10-22 07:23:03', '2024-12-13 19:46:38'),
(13, 'Hridaan Yohannan', '+8801383719381', 'vivaanloke@rout.com', '{"street": "19 Venkatesh Zila", "area": "Badda", "city": "Dhaka", "postal_code": "1218", "country": "Bangladesh"}', '2024-09-08 11:34:14', '2024-10-07 23:32:36'),
(14, 'Kimaya Bose', '+8801958146877', 'yakshitkibe@desai.net', '{"street": "70 Krishna Path", "area": "Banani", "city": "Dhaka", "postal_code": "1213", "country": "Bangladesh"}', '2025-02-27 22:41:15', '2024-07-08 09:15:45'),
(15, 'Aarush Batta', '+8801845707089', 'senemir@hotmail.com', '{"street": "12 Kothari Marg", "area": "Badda", "city": "Dhaka", "postal_code": "1218", "country": "Bangladesh"}', '2025-01-22 06:54:19', '2025-04-24 14:36:22'),
(16, 'Oorja Bhatti', '+8801656267189', 'stuvanbansal@bhattacharyya.net', '{"street": "53 Maharaj Street", "area": "Gulshan", "city": "Dhaka", "postal_code": "1229", "country": "Bangladesh"}', '2025-03-07 18:17:31', '2025-03-06 14:46:36'),
(17, 'Gokul Dani', '+8801939075869', 'jivikakar@thakur.org', '{"street": "2 Shroff Ganj", "area": "Farmgate", "city": "Dhaka", "postal_code": "1225", "country": "Bangladesh"}', '2024-12-01 18:10:16', '2025-01-13 00:56:39'),
(18, 'Dishani Buch', '+8801623187264', 'heer55@barad.com', '{"street": "87 Roy", "area": "Banani", "city": "Dhaka", "postal_code": "1224", "country": "Bangladesh"}', '2024-11-18 22:43:27', '2024-07-02 00:01:13'),
(19, 'Kismat Butala', '+8801480934691', 'dganesh@sarin-varughese.com', '{"street": "41 Chand Road", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1229", "country": "Bangladesh"}', '2024-09-23 18:54:27', '2025-01-03 15:21:49'),
(20, 'Miraan Manne', '+8801926131083', 'veerbhattacharyya@yahoo.com', '{"street": "33 Baral", "area": "Mirpur", "city": "Dhaka", "postal_code": "1224", "country": "Bangladesh"}', '2024-12-17 11:47:28', '2025-05-25 03:42:13'),
(21, 'Rania Banerjee', '+8801563508647', 'neysa97@kar.biz', '{"street": "70 Khatri Chowk", "area": "Banani", "city": "Dhaka", "postal_code": "1207", "country": "Bangladesh"}', '2024-08-05 09:32:41', '2025-05-08 03:23:12'),
(22, 'Rohan Chandran', '+8801751707179', 'mohanlalwagle@yahoo.com', '{"street": "66 Rastogi Road", "area": "Uttara", "city": "Dhaka", "postal_code": "1220", "country": "Bangladesh"}', '2025-05-13 21:57:34', '2024-11-26 06:01:41'),
(23, 'Ivan Ramakrishnan', '+8801313953262', 'anika15@yahoo.com', '{"street": "22 Choudhury Road", "area": "Farmgate", "city": "Dhaka", "postal_code": "1224", "country": "Bangladesh"}', '2025-05-12 23:30:34', '2024-12-18 00:48:07'),
(24, 'Indranil Rana', '+8801410131289', 'purabloke@andra.com', '{"street": "1 Keer Road", "area": "Badda", "city": "Dhaka", "postal_code": "1219", "country": "Bangladesh"}', '2025-01-11 08:47:20', '2025-05-01 06:10:56'),
(25, 'Badal Rattan', '+8801662249121', 'manderreyansh@rama.biz', '{"street": "9 Khurana Path", "area": "Dhanmondi", "city": "Dhaka", "postal_code": "1203", "country": "Bangladesh"}', '2024-08-27 05:23:55', '2024-12-02 05:57:43'),
(26, 'Gokul Dhawan', '+8801961967417', 'shalder@thaman.com', '{"street": "65 Rajan Road", "area": "Mirpur", "city": "Dhaka", "postal_code": "1202", "country": "Bangladesh"}', '2024-07-29 09:12:02', '2025-05-24 01:17:40'),
(27, 'Madhup Jhaveri', '+8801399699727', 'rajantara@sekhon.com', '{"street": "25 Sane Zila", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1226", "country": "Bangladesh"}', '2024-10-06 15:03:31', '2024-07-27 06:06:42'),
(28, 'Nakul Bhagat', '+8801913420583', 'lchanda@dugal-bali.com', '{"street": "7 Verma Chowk", "area": "Gulshan", "city": "Dhaka", "postal_code": "1212", "country": "Bangladesh"}', '2024-10-05 03:22:14', '2024-11-10 04:45:07'),
(29, 'Aayush Ravel', '+8801717514347', 'gokul93@gala.net', '{"street": "79 Kapur Road", "area": "Uttara", "city": "Dhaka", "postal_code": "1202", "country": "Bangladesh"}', '2025-04-06 18:49:29', '2024-09-26 13:31:58'),
(30, 'Indranil Mani', '+8801594538649', 'mannat66@khosla.com', '{"street": "78 Dash Path", "area": "Gulshan", "city": "Dhaka", "postal_code": "1227", "country": "Bangladesh"}', '2025-04-30 19:56:06', '2025-01-16 18:46:34'),
(31, 'Vritika Chad', '+8801853136609', 'ksodhi@dora.com', '{"street": "7 Gaba Marg", "area": "Farmgate", "city": "Dhaka", "postal_code": "1213", "country": "Bangladesh"}', '2024-06-03 18:33:18', '2024-06-16 05:49:33'),
(32, 'Hridaan Ramakrishnan', '+8801933781932', 'sarrafmyra@kalita.info', '{"street": "81 Bandi Marg", "area": "Mirpur", "city": "Dhaka", "postal_code": "1227", "country": "Bangladesh"}', '2025-05-01 11:02:28', '2025-04-22 03:46:17'),
(33, 'Romil Bora', '+8801769500546', 'vdash@hotmail.com', '{"street": "83 Dutt Path", "area": "Badda", "city": "Dhaka", "postal_code": "1220", "country": "Bangladesh"}', '2024-09-08 13:21:32', '2025-02-10 10:55:15'),
(34, 'Riya Dhar', '+8801416751040', 'gatikiyer@koshy.com', '{"street": "94 Kant Marg", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1207", "country": "Bangladesh"}', '2024-10-18 21:33:51', '2025-04-10 18:48:13'),
(35, 'Kaira Chowdhury', '+8801847554150', 'mehul96@andra.com', '{"street": "35 Venkatesh", "area": "Dhanmondi", "city": "Dhaka", "postal_code": "1228", "country": "Bangladesh"}', '2024-08-09 19:33:16', '2025-04-02 22:09:02'),
(36, 'Jayant Kunda', '+8801669142981', 'shamikkari@gmail.com', '{"street": "57 Thaker Ganj", "area": "Uttara", "city": "Dhaka", "postal_code": "1212", "country": "Bangladesh"}', '2025-04-05 15:00:49', '2025-04-16 10:36:42'),
(37, 'Madhup Dasgupta', '+8801417809055', 'rdada@dash-rau.com', '{"street": "92 Chana Nagar", "area": "Farmgate", "city": "Dhaka", "postal_code": "1228", "country": "Bangladesh"}', '2024-08-27 23:33:28', '2024-11-10 23:21:36'),
(38, 'Divyansh Uppal', '+8801464119168', 'ritviksibal@date-apte.org', '{"street": "98 Grover Circle", "area": "Badda", "city": "Dhaka", "postal_code": "1221", "country": "Bangladesh"}', '2024-08-12 18:52:59', '2025-03-04 04:08:20'),
(39, 'Indranil Bala', '+8801490035643', 'shraybains@bansal-iyengar.com', '{"street": "18 Dash Street", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1200", "country": "Bangladesh"}', '2025-04-14 16:42:21', '2024-07-20 22:44:56'),
(40, 'Divit Tank', '+8801722357361', 'fsathe@gokhale-gaba.net', '{"street": "96 Bala Chowk", "area": "Farmgate", "city": "Dhaka", "postal_code": "1223", "country": "Bangladesh"}', '2025-04-07 21:20:13', '2025-01-13 22:05:02'),
(41, 'Myra Sarkar', '+8801873637906', 'indrajit24@hegde-dua.com', '{"street": "50 Rajagopalan Zila", "area": "Dhanmondi", "city": "Dhaka", "postal_code": "1205", "country": "Bangladesh"}', '2025-01-26 16:39:08', '2024-07-30 08:18:48'),
(42, 'Umang Varty', '+8801790771986', 'samarthdada@suresh.info', '{"street": "9 Barad Circle", "area": "Uttara", "city": "Dhaka", "postal_code": "1200", "country": "Bangladesh"}', '2025-01-13 09:15:29', '2024-07-05 01:11:55'),
(43, 'Sana Wali', '+8801680327598', 'ghoshsaanvi@hotmail.com', '{"street": "87 Sethi Ganj", "area": "Uttara", "city": "Dhaka", "postal_code": "1202", "country": "Bangladesh"}', '2025-02-22 01:50:23', '2024-09-28 01:44:55'),
(44, 'Tarini Banerjee', '+8801436634065', 'ganesanrania@yahoo.com', '{"street": "26 Gola Path", "area": "Farmgate", "city": "Dhaka", "postal_code": "1207", "country": "Bangladesh"}', '2024-12-09 08:29:15', '2024-07-16 18:09:19'),
(45, 'Adah Sur', '+8801327806084', 'drishyaraval@bhatti.com', '{"street": "41 Trivedi Nagar", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1222", "country": "Bangladesh"}', '2025-03-31 01:38:20', '2024-11-13 21:06:13'),
(46, 'Shanaya Jha', '+8801437195004', 'sampathoorja@saha.biz', '{"street": "45 Dugar Ganj", "area": "Badda", "city": "Dhaka", "postal_code": "1203", "country": "Bangladesh"}', '2024-07-20 16:43:50', '2024-06-03 06:04:07'),
(47, 'Amira Kamdar', '+8801683106438', 'arnav42@dugar.net', '{"street": "11 Krishna Marg", "area": "Farmgate", "city": "Dhaka", "postal_code": "1200", "country": "Bangladesh"}', '2025-04-09 17:10:49', '2024-10-16 21:13:58'),
(48, 'Kimaya Kapoor', '+8801432048331', 'duakanav@hotmail.com', '{"street": "87 Saraf Ganj", "area": "Gulshan", "city": "Dhaka", "postal_code": "1202", "country": "Bangladesh"}', '2024-11-10 17:22:21', '2024-06-08 23:16:27'),
(49, 'Shanaya Singhal', '+8801731928870', 'bainsdhanush@singhal-shroff.biz', '{"street": "1 Vala Zila", "area": "Badda", "city": "Dhaka", "postal_code": "1203", "country": "Bangladesh"}', '2024-06-19 02:19:28', '2025-03-11 04:50:42'),
(50, 'Kismat Borde', '+8801466626400', 'luthrakimaya@gmail.com', '{"street": "31 Dey Nagar", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1204", "country": "Bangladesh"}', '2025-04-06 01:18:51', '2025-05-13 13:31:43'),
(51, 'Nirvi Bhandari', '+8801676538181', 'ivanalal@gmail.com', '{"street": "70 Kumar Marg", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1212", "country": "Bangladesh"}', '2024-11-30 09:41:17', '2025-03-01 12:13:10'),
(52, 'Dhruv Lalla', '+8801335553337', 'craju@yahoo.com', '{"street": "28 Sahota Nagar", "area": "Farmgate", "city": "Dhaka", "postal_code": "1202", "country": "Bangladesh"}', '2025-01-15 06:16:20', '2024-10-25 22:29:55'),
(53, 'Yakshit Sibal', '+8801883174001', 'lkhatri@badal.com', '{"street": "38 Brar Chowk", "area": "Uttara", "city": "Dhaka", "postal_code": "1208", "country": "Bangladesh"}', '2025-04-15 17:09:01', '2024-05-31 08:20:42'),
(54, 'Pari Sami', '+8801716601392', 'obrahmbhatt@gmail.com', '{"street": "93 Cheema Chowk", "area": "Banani", "city": "Dhaka", "postal_code": "1227", "country": "Bangladesh"}', '2024-10-14 05:54:14', '2024-11-09 18:13:37'),
(55, 'Advik Kaul', '+8801753355368', 'lokemadhup@sodhi.org', '{"street": "7 Wagle Chowk", "area": "Banani", "city": "Dhaka", "postal_code": "1227", "country": "Bangladesh"}', '2024-12-18 18:31:30', '2025-03-21 21:40:51'),
(56, 'Ehsaan Rege', '+8801649462227', 'raunak98@gmail.com', '{"street": "66 Kashyap Marg", "area": "Dhanmondi", "city": "Dhaka", "postal_code": "1226", "country": "Bangladesh"}', '2025-05-11 23:00:41', '2024-06-30 12:07:31'),
(57, 'Vidur Khosla', '+8801367869281', 'kallavaibhav@hotmail.com', '{"street": "36 Sengupta Circle", "area": "Uttara", "city": "Dhaka", "postal_code": "1201", "country": "Bangladesh"}', '2024-11-08 22:28:47', '2024-11-21 04:51:52'),
(58, 'Darshit Vig', '+8801470631334', 'gwarrior@gmail.com', '{"street": "27 Doshi Marg", "area": "Uttara", "city": "Dhaka", "postal_code": "1226", "country": "Bangladesh"}', '2024-10-15 06:18:37', '2024-11-14 01:59:17'),
(59, 'Stuvan Sami', '+8801363466917', 'tchawla@gmail.com', '{"street": "61 Krishnamurthy Zila", "area": "Gulshan", "city": "Dhaka", "postal_code": "1229", "country": "Bangladesh"}', '2024-06-18 14:45:39', '2025-05-21 10:29:39'),
(60, 'Lakshay Raja', '+8801472170333', 'semarhaan@ghosh.com', '{"street": "95 Gandhi Marg", "area": "Farmgate", "city": "Dhaka", "postal_code": "1221", "country": "Bangladesh"}', '2025-03-21 04:46:46', '2025-04-02 20:29:52'),
(61, 'Nakul Solanki', '+8801732859720', 'ykhosla@gmail.com', '{"street": "24 Sandhu Nagar", "area": "Gulshan", "city": "Dhaka", "postal_code": "1200", "country": "Bangladesh"}', '2024-08-16 08:29:52', '2024-07-08 06:27:13'),
(62, 'Bhamini Sankaran', '+8801931673067', 'rajagopalanvardaniya@gmail.com', '{"street": "82 Bhagat Marg", "area": "Gulshan", "city": "Dhaka", "postal_code": "1228", "country": "Bangladesh"}', '2024-10-21 19:23:37', '2024-09-17 15:07:28'),
(63, 'Pari Bose', '+8801689053312', 'boraprerak@balakrishnan.com', '{"street": "69 Dyal Path", "area": "Banani", "city": "Dhaka", "postal_code": "1203", "country": "Bangladesh"}', '2024-06-08 21:22:35', '2025-02-10 06:29:53'),
(64, 'Shlok Divan', '+8801835955748', 'salvijivika@maharaj.org', '{"street": "34 Iyer Chowk", "area": "Badda", "city": "Dhaka", "postal_code": "1205", "country": "Bangladesh"}', '2025-01-30 18:01:50', '2024-11-24 14:57:15'),
(65, 'Elakshi Kumer', '+8801783299666', 'sahilgulati@gmail.com', '{"street": "44 Chhabra Marg", "area": "Farmgate", "city": "Dhaka", "postal_code": "1225", "country": "Bangladesh"}', '2024-06-04 18:42:45', '2024-08-17 04:23:51'),
(66, 'Nishith Lall', '+8801891402258', 'atwalaniruddh@baral.com', '{"street": "57 Rana Street", "area": "Mirpur", "city": "Dhaka", "postal_code": "1224", "country": "Bangladesh"}', '2024-09-26 23:12:47', '2025-01-25 20:15:14'),
(67, 'Advik Korpal', '+8801641088690', 'kandajiya@hotmail.com', '{"street": "70 Dugar Marg", "area": "Mirpur", "city": "Dhaka", "postal_code": "1228", "country": "Bangladesh"}', '2024-09-13 02:03:33', '2024-11-07 04:07:35'),
(68, 'Indrans Kunda', '+8801379162437', 'taimurbedi@hotmail.com', '{"street": "23 Sur", "area": "Mohammadpur", "city": "Dhaka", "postal_code": "1213", "country": "Bangladesh"}', '2024-10-24 07:11:24', '2024-07-30 12:54:24'),
(69, 'Shayak Brahmbhatt', '+8801355428845', 'mohanlal60@gmail.com', '{"street": "30 Bhatt Street", "area": "Farmgate", "city": "Dhaka", "postal_code": "1230", "country": "Bangladesh"}', '2024-09-04 16:11:25', '2024-06-14 03:57:01'),
(70, 'Mamooty Yadav', '+8801813076093', 'grewalvaibhav@hotmail.com', '{"street": "64 Kara Chowk", "area": "Badda", "city": "Dhaka", "postal_code": "1212", "country": "Bangladesh"}', '2025-04-26 23:23:22', '2025-04-24 23:46:25'),
(71, 'Kabir Gole', '+8801825971233', 'ela90@behl-kuruvilla.com', '{"street": "59 Wadhwa Circle", "area": "Farmgate", "city": "Dhaka", "postal_code": "1222", "country": "Bangladesh"}', '2025-05-18 08:57:41', '2024-06-04 07:22:02'),
(72, 'Darshit Jhaveri', '+8801364044021', 'tbains@hotmail.com', '{"street": "64 Varghese Zila", "area": "Mirpur", "city": "Dhaka", "postal_code": "1228", "country": "Bangladesh"}', '2024-08-08 10:38:06', '2024-08-23 03:06:56'),
(73, 'Aradhya Lall', '+8801679562011', 'aradhya90@hotmail.com', '{"street": "100 Halder Circle", "area": "Banani", "city": "Dhaka", "postal_code": "1227", "country": "Bangladesh"}', '2025-04-06 05:07:25', '2024-08-13 21:12:01'),
(74, 'Dharmajan Gade', '+8801912075251', 'nhayre@thakkar-majumdar.com', '{"street": "47 Doshi Road", "area": "Dhanmondi", "city": "Dhaka", "postal_code": "1212", "country": "Bangladesh"}', '2024-07-29 23:12:36', '2024-06-05 09:50:43'),
(75, 'Indranil Sura', '+8801729277622', 'ojasloyal@hotmail.com', '{"street": "11 Chandran Marg", "area": "Banani", "city": "Dhaka", "postal_code": "1205", "country": "Bangladesh"}', '2025-03-07 21:41:16', '2024-06-27 00:51:09');

INSERT INTO stores (id, store_name, location_address, contact_number, created_at, updated_at) VALUES
(1, 'SK Mart Wari', '{"street": "87 Thakur Road", "area": "Wari", "city": "Dhaka", "postal_code": "1208", "country": "Bangladesh"}', '+8801558196283', '2025-03-21 20:21:14', '2024-08-03 12:23:40'),
(2, 'SK Mart Tejgaon', '{"street": "75 Borra Path", "area": "Tejgaon", "city": "Dhaka", "postal_code": "1203", "country": "Bangladesh"}', '+8801614973489', '2024-10-26 15:03:44', '2025-02-12 04:27:33'),
(3, 'SK Mart Uttara', '{"street": "17 Singh", "area": "Uttara", "city": "Dhaka", "postal_code": "1203", "country": "Bangladesh"}', '+8801799578903', '2025-03-14 19:45:37', '2024-09-07 19:48:03'),
(4, 'SK Mart Baridhara', '{"street": "15 Bala Street", "area": "Baridhara", "city": "Dhaka", "postal_code": "1230", "country": "Bangladesh"}', '+8801788039848', '2024-09-16 21:35:00', '2024-07-02 01:01:16'),
(5, 'SK Mart Dhanmondi', '{"street": "12 Dhar Marg", "area": "Dhanmondi", "city": "Dhaka", "postal_code": "1225", "country": "Bangladesh"}', '+8801682543688', '2024-07-13 13:08:53', '2024-10-13 06:50:31'),
(6, 'SK Mart Gulshan', '{"street": "52 Kannan Ganj", "area": "Gulshan", "city": "Dhaka", "postal_code": "1223", "country": "Bangladesh"}', '+8801781921995', '2024-09-20 22:53:31', '2024-06-14 22:37:13'),
(7, 'SK Mart Paltan', '{"street": "53 Batra Path", "area": "Paltan", "city": "Dhaka", "postal_code": "1215", "country": "Bangladesh"}', '+8801767439802', '2025-05-15 08:43:17', '2025-05-14 10:29:20'),
(8, 'SK Mart Banani', '{"street": "66 Dar Ganj", "area": "Banani", "city": "Dhaka", "postal_code": "1204", "country": "Bangladesh"}', '+8801472224542', '2024-11-24 18:11:19', '2025-05-29 17:21:23'),
(9, 'SK Mart Azimpur', '{"street": "49 Sinha", "area": "Azimpur", "city": "Dhaka", "postal_code": "1229", "country": "Bangladesh"}', '+8801377135692', '2024-08-27 21:27:51', '2025-05-02 21:54:58'),
(10, 'SK Mart Lalmatia', '{"street": "68 Subramanian Chowk", "area": "Lalmatia", "city": "Dhaka", "postal_code": "1209", "country": "Bangladesh"}', '+8801644737951', '2024-11-11 05:28:54', '2025-04-04 21:10:43');

INSERT INTO categories (id, category_name, created_at, updated_at) VALUES
(1, 'Rice', '2024-12-22 13:41:14', '2024-10-02 00:40:56'),
(2, 'Oil', '2024-10-11 01:36:55', '2024-12-09 10:44:30'),
(3, 'Sugar', '2025-03-24 11:12:48', '2024-07-03 23:53:51'),
(4, 'Snacks', '2025-04-09 14:08:23', '2025-04-04 16:31:05'),
(5, 'Vegetables', '2024-11-24 10:58:08', '2024-09-24 15:06:16'),
(6, 'Spices', '2025-01-18 04:18:49', '2025-02-09 22:23:20'),
(7, 'Drinks', '2024-06-17 16:38:32', '2025-04-06 07:53:02'),
(8, 'Dairy', '2024-10-18 16:54:25', '2024-12-18 23:39:43'),
(9, 'Bakery', '2024-09-23 12:02:15', '2025-01-24 15:38:44'),
(10, 'Cleaning Supplies', '2025-03-07 16:14:21', '2024-10-29 12:09:54');

INSERT INTO products (id, name, category_id, price, description, discount_percent, created_at, updated_at) VALUES
(1, 'Miniket Rice', 1, 112.01, 'Magni eius nihil alias animi veritatis reiciendis.', 5, '2024-12-12 03:09:33', '2024-11-02 07:20:33'),
(2, 'Chinigura Rice', 1, 98.9, 'Eligendi aliquid explicabo ducimus.', 0, '2024-10-06 02:16:23', '2024-06-10 01:47:46'),
(3, 'Atop Rice', 1, 195.81, 'Nulla nam distinctio ea quisquam et voluptate.', 0, '2025-03-12 17:52:31', '2025-01-15 05:56:59'),
(4, 'Soybean Oil', 2, 122.94, 'Atque blanditiis porro animi.', 15, '2025-02-26 22:57:50', '2024-12-17 20:45:18'),
(5, 'Mustard Oil', 2, 72.48, 'Reiciendis similique vitae dolorum perspiciatis tempore.', 5, '2025-01-22 10:37:15', '2024-12-31 18:39:59'),
(6, 'Sunflower Oil', 2, 35.44, 'Nisi repellendus asperiores explicabo nemo blanditiis.', 10, '2025-02-13 07:33:54', '2024-08-20 01:56:46'),
(7, 'Brown Sugar', 3, 27.85, 'Reprehenderit iste possimus.', 15, '2025-02-07 10:07:57', '2024-09-14 11:05:09'),
(8, 'White Sugar', 3, 122.83, 'Ab quis suscipit corporis similique eaque expedita.', 5, '2024-12-09 00:49:14', '2025-02-12 00:42:26'),
(9, 'Gura Chini', 3, 90.75, 'Ab sed eos repudiandae.', 5, '2025-04-15 03:26:21', '2025-01-08 18:08:39'),
(10, 'Chanachur', 4, 170.05, 'Sit unde ullam molestias aut non voluptas.', 10, '2025-04-27 06:30:59', '2025-03-21 07:28:37'),
(11, 'Potato Chips', 4, 196.34, 'Iusto placeat non molestiae ipsum.', 10, '2024-10-27 19:15:23', '2024-06-01 13:46:22'),
(12, 'Nimki', 4, 117.26, 'Cupiditate dolorum iste aut quam.', 15, '2025-05-22 12:13:39', '2024-09-05 13:22:43'),
(13, 'Tomato', 5, 68.68, 'Voluptates sunt aspernatur inventore itaque libero modi.', 0, '2025-04-09 17:17:14', '2024-09-13 01:46:11'),
(14, 'Potato', 5, 110.75, 'Reiciendis numquam tempore incidunt sint saepe.', 0, '2025-01-26 07:41:31', '2025-05-22 18:07:04'),
(15, 'Onion', 5, 60.32, 'Maxime nulla nihil molestiae itaque iusto eos.', 15, '2024-10-05 14:02:53', '2024-12-15 18:49:22'),
(16, 'Carrot', 5, 77.34, 'Sunt quis vitae doloremque a.', 15, '2025-05-22 04:55:25', '2025-01-22 17:02:21'),
(17, 'Green Chili', 5, 53.75, 'Quam neque porro distinctio.', 0, '2025-05-11 12:10:28', '2025-05-21 18:24:33'),
(18, 'Cumin', 6, 50.27, 'Porro vitae ipsa.', 5, '2025-02-24 17:19:22', '2024-11-22 20:30:21'),
(19, 'Coriander', 6, 55.87, 'Optio aperiam praesentium distinctio fugiat dolorum.', 15, '2025-01-19 18:31:06', '2024-06-10 05:34:55'),
(20, 'Turmeric Powder', 6, 143.54, 'Corrupti eius voluptate enim.', 5, '2024-09-22 01:50:34', '2024-12-02 12:01:05'),
(21, 'Chili Powder', 6, 175.92, 'Doloribus quaerat pariatur illum ullam architecto facere mollitia.', 10, '2024-11-02 19:24:51', '2024-07-22 12:29:22'),
(22, 'Coca Cola', 7, 182.48, 'Praesentium dolores tempore vitae.', 0, '2025-04-10 18:37:08', '2024-11-27 09:08:36'),
(23, 'Sprite', 7, 178.16, 'Omnis excepturi dolorum.', 5, '2024-06-11 09:55:21', '2025-05-02 03:14:49'),
(24, 'Frooti', 7, 20.36, 'Voluptas aut alias provident ipsum unde.', 0, '2024-09-01 08:44:19', '2024-09-04 00:09:01'),
(25, 'Mountain Dew', 7, 23.27, 'Distinctio ipsam perferendis.', 15, '2025-04-09 14:59:43', '2025-05-09 08:15:58'),
(26, 'Milk', 8, 64.76, 'Architecto impedit officiis eligendi itaque soluta in.', 10, '2025-04-30 06:24:00', '2024-06-23 23:38:33'),
(27, 'Cheese', 8, 153.88, 'Consectetur asperiores molestiae accusamus.', 15, '2024-12-28 03:18:40', '2025-04-24 18:35:30'),
(28, 'Butter', 8, 101.62, 'Nam laborum quis aliquid.', 0, '2024-10-31 02:26:54', '2024-11-08 07:08:53'),
(29, 'Yogurt', 8, 130.19, 'Eum sunt expedita similique.', 0, '2024-10-06 08:07:40', '2024-12-16 03:00:36'),
(30, 'Bread', 9, 112.91, 'Fugiat explicabo eveniet rerum aspernatur ut.', 0, '2024-08-02 20:07:59', '2025-01-29 17:45:46'),
(31, 'Biscuit', 9, 41.84, 'Perspiciatis debitis consequuntur vel totam minima molestiae.', 0, '2024-11-14 17:49:24', '2025-01-12 11:11:16'),
(32, 'Cake', 9, 93.11, 'Tenetur et veritatis.', 0, '2024-09-13 11:53:00', '2024-10-29 04:02:08'),
(33, 'Bun', 9, 24.17, 'Ullam non quis cupiditate magnam culpa possimus minus.', 0, '2024-09-18 22:50:05', '2024-11-21 00:58:11'),
(34, 'Detergent', 10, 89.21, 'Eveniet aliquid aspernatur.', 5, '2024-08-24 04:30:32', '2025-04-21 18:48:52'),
(35, 'Dishwasher', 10, 167.67, 'Repellendus molestiae sint itaque.', 5, '2025-04-03 12:07:49', '2025-03-11 13:26:20'),
(36, 'Toilet Cleaner', 10, 143.39, 'Distinctio cum accusantium sint.', 5, '2024-10-25 21:00:54', '2024-12-19 18:12:13');

INSERT INTO marketing_campaigns (id, campaign_name, platform, budget, start_date, end_date, notes, created_at, updated_at) VALUES
(1, 'Flash Friday Sale', 'facebook', 60311.23, '2025-03-15', '2025-04-01', 'Campaign to promote seasonal offers.', '2024-09-01 15:27:41', '2024-10-23 04:28:29'),
(2, 'Boishakhi Utsob', 'google', 36128.84, '2025-04-02', '2025-04-17', 'Campaign to promote seasonal offers.', '2025-05-07 20:37:01', '2024-12-21 07:36:00'),
(3, 'App Launch Bonus', 'sms', 35921.13, '2024-10-31', '2024-11-06', 'Campaign to promote seasonal offers.', '2024-11-02 02:18:43', '2025-03-16 17:05:52'),
(4, 'Flash Friday Sale', 'facebook', 67822.13, '2024-12-03', '2024-12-09', 'Campaign to promote seasonal offers.', '2024-07-10 04:09:14', '2025-05-26 06:24:48'),
(5, 'Boishakhi Utsob', 'facebook', 84155.9, '2024-10-10', '2024-10-19', 'Campaign to promote seasonal offers.', '2024-10-04 09:03:23', '2024-09-09 02:27:16'),
(6, 'Ramadan Discount', 'facebook', 51822.45, '2024-09-11', '2024-09-20', 'Campaign to promote seasonal offers.', '2024-11-08 12:53:01', '2025-05-07 16:57:11'),
(7, 'Eid Mega Sale', 'tiktok', 38825.35, '2024-06-04', '2024-06-16', 'Campaign to promote seasonal offers.', '2024-10-11 15:51:33', '2024-09-02 19:46:25'),
(8, 'SK Mart Anniversary', 'facebook', 43011.34, '2025-01-11', '2025-01-27', 'Campaign to promote seasonal offers.', '2024-07-29 13:23:17', '2025-05-12 06:25:30'),
(9, 'Boishakhi Utsob', 'email', 53608.91, '2024-10-28', '2024-11-04', 'Campaign to promote seasonal offers.', '2024-06-15 12:59:59', '2025-01-24 12:28:42'),
(10, 'App Launch Bonus', 'tiktok', 41679.21, '2025-05-09', '2025-05-27', 'Campaign to promote seasonal offers.', '2024-11-16 12:47:33', '2024-12-04 20:08:38'),
(11, 'Flash Friday Sale', 'tiktok', 17157.9, '2025-04-26', '2025-05-05', 'Campaign to promote seasonal offers.', '2024-09-11 11:23:33', '2025-05-27 08:59:15'),
(12, 'Boishakhi Utsob', 'google', 19219.93, '2025-03-15', '2025-03-26', 'Campaign to promote seasonal offers.', '2025-04-15 22:28:31', '2024-11-03 03:03:46'),
(13, 'Ramadan Discount', 'google', 14521.13, '2025-01-29', '2025-02-11', 'Campaign to promote seasonal offers.', '2025-02-26 17:01:53', '2024-07-23 04:01:01'),
(14, 'Eid Mega Sale', 'youtube', 77431.45, '2024-12-07', '2024-12-12', 'Campaign to promote seasonal offers.', '2024-07-22 11:40:36', '2024-06-18 07:52:29'),
(15, 'Boishakhi Utsob', 'facebook', 13374.07, '2025-01-28', '2025-02-09', 'Campaign to promote seasonal offers.', '2024-10-06 21:17:09', '2025-03-17 16:32:54'),
(16, 'Ramadan Discount', 'tiktok', 21013.85, '2024-08-17', '2024-08-29', 'Campaign to promote seasonal offers.', '2024-10-31 02:14:30', '2025-05-24 23:02:55'),
(17, 'SK Mart Anniversary', 'email', 70477.05, '2025-02-23', '2025-03-10', 'Campaign to promote seasonal offers.', '2025-04-26 18:14:54', '2025-04-03 17:55:36'),
(18, 'Eid Mega Sale', 'offline_banner', 71242.93, '2024-09-22', '2024-10-09', 'Campaign to promote seasonal offers.', '2025-01-28 00:19:58', '2025-01-08 08:05:53'),
(19, 'Eid Mega Sale', 'youtube', 67179.37, '2024-06-22', '2024-07-12', 'Campaign to promote seasonal offers.', '2024-07-11 05:52:00', '2025-01-18 09:38:43'),
(20, 'Flash Friday Sale', 'facebook', 13210.4, '2025-02-21', '2025-03-11', 'Campaign to promote seasonal offers.', '2024-07-29 03:17:02', '2025-03-02 15:00:16');

INSERT INTO orders (id, customer_id, store_id, marketing_id, order_type, order_date, total_amount, created_at, updated_at, payment_method) VALUES
(1, 26, 5, NULL, 'online', '2025-05-27 21:47:05', 1037.66, '2025-05-27 21:47:05', '2025-05-27 21:47:05', 'offline'),
(2, 63, 2, 12, 'offline', '2025-02-27 21:47:05', 1131.72, '2025-02-27 21:47:05', '2025-02-27 21:47:05', 'offline'),
(3, 56, 8, 9, 'online', '2024-12-05 21:47:05', 1605.22, '2024-12-05 21:47:05', '2024-12-05 21:47:05', 'offline'),
(4, 14, 10, 5, 'offline', '2025-02-21 21:47:05', 1910.1, '2025-02-21 21:47:05', '2025-02-21 21:47:05', 'card'),
(5, 32, 1, 16, 'offline', '2024-11-03 21:47:05', 1602.43, '2024-11-03 21:47:05', '2024-11-03 21:47:05', 'offline'),
(6, 28, 10, 12, 'offline', '2025-06-11 21:47:05', 756.1, '2025-06-11 21:47:05', '2025-06-11 21:47:05', 'mfs'),
(7, 73, 2, NULL, 'offline', '2025-04-24 21:47:05', 1230.99, '2025-04-24 21:47:05', '2025-04-24 21:47:05', 'offline'),
(8, 27, 2, 14, 'online', '2025-01-25 21:47:05', 914.39, '2025-01-25 21:47:05', '2025-01-25 21:47:05', 'offline'),
(9, 62, 1, 12, 'offline', '2025-03-14 21:47:05', 1395.77, '2025-03-14 21:47:05', '2025-03-14 21:47:05', 'mfs'),
(10, 23, 3, 1, 'online', '2025-03-22 21:47:05', 1505.75, '2025-03-22 21:47:05', '2025-03-22 21:47:05', 'mfs'),
(11, 7, 1, NULL, 'offline', '2025-02-10 21:47:05', 1330.15, '2025-02-10 21:47:05', '2025-02-10 21:47:05', 'card'),
(12, 69, 8, NULL, 'offline', '2025-04-08 21:47:05', 453.75, '2025-04-08 21:47:05', '2025-04-08 21:47:05', 'offline'),
(13, 63, 5, 4, 'offline', '2025-02-02 21:47:05', 845.77, '2025-02-02 21:47:05', '2025-02-02 21:47:05', 'card'),
(14, 48, 6, NULL, 'offline', '2024-11-28 21:47:05', 1307.33, '2024-11-28 21:47:05', '2024-11-28 21:47:05', 'offline'),
(15, 34, 2, 7, 'online', '2024-10-15 21:47:05', 828.84, '2024-10-15 21:47:05', '2024-10-15 21:47:05', 'offline'),
(16, 14, 5, 13, 'online', '2025-03-10 21:47:05', 684.91, '2025-03-10 21:47:05', '2025-03-10 21:47:05', 'card'),
(17, 6, 9, 7, 'offline', '2024-10-13 21:47:05', 833.64, '2024-10-13 21:47:05', '2024-10-13 21:47:05', 'mfs'),
(18, 3, 2, 15, 'online', '2025-03-07 21:47:05', 1229.87, '2025-03-07 21:47:05', '2025-03-07 21:47:05', 'offline'),
(19, 59, 10, NULL, 'offline', '2025-03-02 21:47:05', 111.4, '2025-03-02 21:47:05', '2025-03-02 21:47:05', 'offline'),
(20, 71, 10, 14, 'offline', '2025-02-21 21:47:05', 1523.43, '2025-02-21 21:47:05', '2025-02-21 21:47:05', 'offline'),
(21, 46, 9, 20, 'online', '2025-05-15 21:47:05', 562.36, '2025-05-15 21:47:05', '2025-05-15 21:47:05', 'mfs'),
(22, 14, 4, NULL, 'online', '2025-03-09 21:47:05', 1033.27, '2025-03-09 21:47:05', '2025-03-09 21:47:05', 'card'),
(23, 30, 7, NULL, 'offline', '2025-06-08 21:47:05', 967.85, '2025-06-08 21:47:05', '2025-06-08 21:47:05', 'offline'),
(24, 30, 6, 14, 'online', '2025-03-01 21:47:05', 711.51, '2025-03-01 21:47:05', '2025-03-01 21:47:05', 'offline'),
(25, 34, 2, 5, 'offline', '2024-11-22 21:47:05', 1825.38, '2024-11-22 21:47:05', '2024-11-22 21:47:05', 'offline'),
(26, 14, 10, NULL, 'offline', '2024-10-22 21:47:05', 814.58, '2024-10-22 21:47:05', '2024-10-22 21:47:05', 'offline'),
(27, 41, 5, NULL, 'online', '2025-04-08 21:47:05', 1541.91, '2025-04-08 21:47:05', '2025-04-08 21:47:05', 'offline'),
(28, 8, 4, NULL, 'online', '2025-02-13 21:47:05', 1404.35, '2025-02-13 21:47:05', '2025-02-13 21:47:05', 'mfs'),
(29, 49, 3, NULL, 'online', '2025-03-29 21:47:05', 628.63, '2025-03-29 21:47:05', '2025-03-29 21:47:05', 'card'),
(30, 24, 8, NULL, 'offline', '2024-12-09 21:47:05', 235.23, '2024-12-09 21:47:05', '2024-12-09 21:47:05', 'mfs'),
(31, 38, 8, NULL, 'online', '2024-07-19 21:47:05', 274.72, '2024-07-19 21:47:05', '2024-07-19 21:47:05', 'mfs'),
(32, 1, 8, 14, 'online', '2024-12-15 21:47:05', 1012.86, '2024-12-15 21:47:05', '2024-12-15 21:47:05', 'mfs'),
(33, 7, 5, 4, 'online', '2024-09-19 21:47:05', 1948.24, '2024-09-19 21:47:05', '2024-09-19 21:47:05', 'mfs'),
(34, 50, 5, 11, 'offline', '2025-06-20 21:47:05', 120.64, '2025-06-20 21:47:05', '2025-06-20 21:47:05', 'offline'),
(35, 73, 1, 19, 'online', '2025-02-09 21:47:05', 1129.05, '2025-02-09 21:47:05', '2025-02-09 21:47:05', 'offline'),
(36, 58, 1, NULL, 'offline', '2025-02-20 21:47:05', 597.29, '2025-02-20 21:47:05', '2025-02-20 21:47:05', 'card'),
(37, 43, 4, NULL, 'offline', '2025-04-14 21:47:05', 1002.24, '2025-04-14 21:47:05', '2025-04-14 21:47:05', 'mfs'),
(38, 15, 7, NULL, 'offline', '2025-01-30 21:47:05', 757.64, '2025-01-30 21:47:05', '2025-01-30 21:47:05', 'card'),
(39, 48, 9, 8, 'online', '2024-11-27 21:47:05', 523.71, '2024-11-27 21:47:05', '2024-11-27 21:47:05', 'offline'),
(40, 33, 7, NULL, 'offline', '2024-12-26 21:47:05', 1285.5, '2024-12-26 21:47:05', '2024-12-26 21:47:05', 'offline'),
(41, 39, 1, NULL, 'online', '2025-06-22 21:47:05', 98.9, '2025-06-22 21:47:05', '2025-06-22 21:47:05', 'mfs'),
(42, 73, 10, NULL, 'offline', '2025-02-19 21:47:05', 907.12, '2025-02-19 21:47:05', '2025-02-19 21:47:05', 'offline'),
(43, 39, 2, 5, 'offline', '2024-12-12 21:47:05', 1493.27, '2024-12-12 21:47:05', '2024-12-12 21:47:05', 'offline'),
(44, 70, 4, 18, 'online', '2024-10-14 21:47:05', 547.44, '2024-10-14 21:47:05', '2024-10-14 21:47:05', 'offline'),
(45, 52, 8, 15, 'online', '2025-04-03 21:47:05', 744.03, '2025-04-03 21:47:05', '2025-04-03 21:47:05', 'offline'),
(46, 59, 4, 3, 'online', '2025-01-09 21:47:05', 69.81, '2025-01-09 21:47:05', '2025-01-09 21:47:05', 'mfs'),
(47, 54, 8, 11, 'offline', '2024-12-09 21:47:05', 301.6, '2024-12-09 21:47:05', '2024-12-09 21:47:05', 'offline'),
(48, 39, 8, NULL, 'online', '2025-03-29 21:47:05', 1443.86, '2025-03-29 21:47:05', '2025-03-29 21:47:05', 'offline'),
(49, 75, 6, 19, 'offline', '2025-06-04 21:47:05', 921.9, '2025-06-04 21:47:05', '2025-06-04 21:47:05', 'offline'),
(50, 47, 5, 12, 'offline', '2025-06-17 21:47:05', 1138.9, '2025-06-17 21:47:05', '2025-06-17 21:47:05', 'offline'),
(51, 35, 1, NULL, 'offline', '2025-02-17 21:47:05', 1566.18, '2025-02-17 21:47:05', '2025-02-17 21:47:05', 'offline'),
(52, 9, 4, NULL, 'offline', '2025-06-11 21:47:05', 2092.65, '2025-06-11 21:47:05', '2025-06-11 21:47:05', 'offline'),
(53, 49, 4, 16, 'online', '2025-03-25 21:47:05', 2206.04, '2025-03-25 21:47:05', '2025-03-25 21:47:05', 'mfs'),
(54, 54, 3, NULL, 'offline', '2025-05-11 21:47:05', 1409.01, '2025-05-11 21:47:05', '2025-05-11 21:47:05', 'offline'),
(55, 36, 7, 1, 'online', '2024-09-06 21:47:05', 1368.09, '2024-09-06 21:47:05', '2024-09-06 21:47:05', 'mfs'),
(56, 69, 7, NULL, 'offline', '2025-04-20 21:47:05', 823.21, '2025-04-20 21:47:05', '2025-04-20 21:47:05', 'offline'),
(57, 7, 1, 13, 'offline', '2025-03-08 21:47:05', 363.0, '2025-03-08 21:47:05', '2025-03-08 21:47:05', 'card'),
(58, 2, 5, 6, 'offline', '2025-05-10 21:47:05', 1572.68, '2025-05-10 21:47:05', '2025-05-10 21:47:05', 'card'),
(59, 47, 6, 1, 'offline', '2025-01-14 21:47:05', 1171.85, '2025-01-14 21:47:05', '2025-01-14 21:47:05', 'card'),
(60, 32, 2, NULL, 'online', '2025-04-01 21:47:05', 1393.13, '2025-04-01 21:47:05', '2025-04-01 21:47:05', 'card'),
(61, 68, 8, 6, 'online', '2025-06-23 21:47:05', 2659.45, '2025-06-23 21:47:05', '2025-06-23 21:47:05', 'offline'),
(62, 73, 6, NULL, 'online', '2025-05-25 21:47:05', 161.25, '2025-05-25 21:47:05', '2025-05-25 21:47:05', 'card'),
(63, 1, 8, NULL, 'offline', '2024-07-10 21:47:05', 1969.47, '2024-07-10 21:47:05', '2024-07-10 21:47:05', 'offline'),
(64, 44, 2, NULL, 'online', '2024-11-16 21:47:05', 587.43, '2024-11-16 21:47:05', '2024-11-16 21:47:05', 'offline'),
(65, 47, 5, 3, 'offline', '2025-05-15 21:47:05', 442.35, '2025-05-15 21:47:05', '2025-05-15 21:47:05', 'offline'),
(66, 22, 7, 19, 'offline', '2025-02-03 21:47:05', 990.92, '2025-02-03 21:47:05', '2025-02-03 21:47:05', 'mfs'),
(67, 44, 5, NULL, 'online', '2025-06-11 21:47:05', 989.7, '2025-06-11 21:47:05', '2025-06-11 21:47:05', 'mfs'),
(68, 31, 9, 7, 'online', '2025-03-16 21:47:05', 40.72, '2025-03-16 21:47:05', '2025-03-16 21:47:05', 'offline'),
(69, 63, 2, 9, 'online', '2025-03-20 21:47:05', 1154.18, '2025-03-20 21:47:05', '2025-03-20 21:47:05', 'offline'),
(70, 4, 10, 5, 'online', '2025-05-18 21:47:05', 1511.99, '2025-05-18 21:47:05', '2025-05-18 21:47:05', 'offline'),
(71, 73, 8, 1, 'online', '2025-03-24 21:47:05', 1536.41, '2025-03-24 21:47:05', '2025-03-24 21:47:05', 'mfs'),
(72, 55, 4, 20, 'online', '2025-02-19 21:47:05', 844.14, '2025-02-19 21:47:05', '2025-02-19 21:47:05', 'card'),
(73, 24, 5, 18, 'online', '2025-02-13 21:47:05', 1026.65, '2025-02-13 21:47:05', '2025-02-13 21:47:05', 'card'),
(74, 74, 8, NULL, 'offline', '2025-04-16 21:47:05', 1901.33, '2025-04-16 21:47:05', '2025-04-16 21:47:05', 'card'),
(75, 60, 9, NULL, 'offline', '2024-12-10 21:47:05', 1551.65, '2024-12-10 21:47:05', '2024-12-10 21:47:05', 'offline'),
(76, 6, 3, NULL, 'online', '2025-06-23 21:47:05', 1283.58, '2025-06-23 21:47:05', '2025-06-23 21:47:05', 'offline'),
(77, 4, 1, 19, 'online', '2024-11-16 21:47:05', 1289.82, '2024-11-16 21:47:05', '2024-11-16 21:47:05', 'card'),
(78, 17, 6, NULL, 'online', '2025-03-05 21:47:05', 1525.84, '2025-03-05 21:47:05', '2025-03-05 21:47:05', 'offline'),
(79, 8, 2, NULL, 'offline', '2024-09-26 21:47:05', 334.84, '2024-09-26 21:47:05', '2024-09-26 21:47:05', 'offline'),
(80, 40, 2, 9, 'offline', '2025-05-05 21:47:05', 547.02, '2025-05-05 21:47:05', '2025-05-05 21:47:05', 'offline'),
(81, 68, 5, 15, 'online', '2024-11-20 21:47:05', 887.96, '2024-11-20 21:47:05', '2024-11-20 21:47:05', 'card'),
(82, 54, 7, 16, 'online', '2025-06-23 21:47:05', 889.71, '2025-06-23 21:47:05', '2025-06-23 21:47:05', 'card'),
(83, 31, 7, NULL, 'online', '2024-11-25 21:47:05', 1236.74, '2024-11-25 21:47:05', '2024-11-25 21:47:05', 'mfs'),
(84, 39, 8, NULL, 'offline', '2025-04-22 21:47:05', 565.65, '2025-04-22 21:47:05', '2025-04-22 21:47:05', 'mfs'),
(85, 7, 5, NULL, 'online', '2025-03-27 21:47:05', 973.23, '2025-03-27 21:47:05', '2025-03-27 21:47:05', 'card'),
(86, 26, 5, 8, 'online', '2025-03-12 21:47:05', 1883.56, '2025-03-12 21:47:05', '2025-03-12 21:47:05', 'offline'),
(87, 61, 9, 8, 'offline', '2025-05-22 21:47:05', 1335.56, '2025-05-22 21:47:05', '2025-05-22 21:47:05', 'mfs'),
(88, 62, 4, 9, 'online', '2024-10-09 21:47:05', 178.85, '2024-10-09 21:47:05', '2024-10-09 21:47:05', 'mfs'),
(89, 23, 3, 10, 'offline', '2025-06-12 21:47:05', 486.08, '2025-06-12 21:47:05', '2025-06-12 21:47:05', 'mfs'),
(90, 21, 1, NULL, 'offline', '2025-02-21 21:47:05', 670.68, '2025-02-21 21:47:05', '2025-02-21 21:47:05', 'offline'),
(91, 17, 4, 5, 'online', '2025-06-11 21:47:05', 175.92, '2025-06-11 21:47:05', '2025-06-11 21:47:05', 'card'),
(92, 42, 9, NULL, 'offline', '2025-05-11 21:47:05', 279.33, '2025-05-11 21:47:05', '2025-05-11 21:47:05', 'offline'),
(93, 44, 7, NULL, 'online', '2024-11-29 21:47:05', 150.81, '2024-11-29 21:47:05', '2024-11-29 21:47:05', 'card'),
(94, 12, 4, NULL, 'offline', '2024-12-26 21:47:05', 1425.33, '2024-12-26 21:47:05', '2024-12-26 21:47:05', 'mfs'),
(95, 15, 6, 16, 'offline', '2025-06-01 21:47:05', 932.7, '2025-06-01 21:47:05', '2025-06-01 21:47:05', 'offline'),
(96, 3, 7, 4, 'online', '2024-11-17 21:47:05', 967.06, '2024-11-17 21:47:05', '2024-11-17 21:47:05', 'card'),
(97, 31, 6, NULL, 'online', '2025-04-28 21:47:05', 670.68, '2025-04-28 21:47:05', '2025-04-28 21:47:05', 'offline'),
(98, 65, 6, 14, 'offline', '2025-01-01 21:47:05', 2330.1, '2025-01-01 21:47:05', '2025-01-01 21:47:05', 'mfs'),
(99, 4, 9, NULL, 'online', '2024-12-07 21:47:05', 574.16, '2024-12-07 21:47:05', '2024-12-07 21:47:05', 'card'),
(100, 13, 1, NULL, 'offline', '2025-06-23 21:47:05', 141.76, '2025-06-23 21:47:05', '2025-06-23 21:47:05', 'offline'),
(101, 72, 9, 4, 'offline', '2025-04-01 21:47:05', 954.44, '2025-04-01 21:47:05', '2025-04-01 21:47:05', 'offline'),
(102, 72, 9, 6, 'offline', '2025-06-19 21:47:05', 1957.08, '2025-06-19 21:47:05', '2025-06-19 21:47:05', 'offline'),
(103, 1, 9, 4, 'offline', '2024-07-08 21:47:05', 748.46, '2024-07-08 21:47:05', '2024-07-08 21:47:05', 'mfs'),
(104, 60, 9, NULL, 'online', '2024-12-14 21:47:05', 318.95, '2024-12-14 21:47:05', '2024-12-14 21:47:05', 'offline'),
(105, 75, 10, NULL, 'offline', '2025-04-28 21:47:05', 323.8, '2025-04-28 21:47:05', '2025-04-28 21:47:05', 'offline'),
(106, 62, 5, NULL, 'offline', '2025-02-27 21:47:05', 929.04, '2025-02-27 21:47:05', '2025-02-27 21:47:05', 'offline'),
(107, 11, 7, 10, 'offline', '2025-02-26 21:47:05', 1264.27, '2025-02-26 21:47:05', '2025-02-26 21:47:05', 'mfs'),
(108, 52, 4, NULL, 'online', '2025-04-25 21:47:05', 534.48, '2025-04-25 21:47:05', '2025-04-25 21:47:05', 'mfs'),
(109, 28, 4, 16, 'offline', '2025-05-04 21:47:05', 2328.92, '2025-05-04 21:47:05', '2025-05-04 21:47:05', 'offline'),
(110, 14, 10, 6, 'online', '2024-10-17 21:47:05', 769.22, '2024-10-17 21:47:05', '2024-10-17 21:47:05', 'offline'),
(111, 8, 3, 12, 'offline', '2025-03-31 21:47:05', 468.17, '2025-03-31 21:47:05', '2025-03-31 21:47:05', 'offline'),
(112, 71, 4, 19, 'offline', '2025-01-01 21:47:05', 1529.84, '2025-01-01 21:47:05', '2025-01-01 21:47:05', 'card'),
(113, 26, 5, NULL, 'online', '2024-11-13 21:47:05', 524.36, '2024-11-13 21:47:05', '2024-11-13 21:47:05', 'mfs'),
(114, 41, 3, 20, 'online', '2025-04-09 21:47:05', 197.8, '2025-04-09 21:47:05', '2025-04-09 21:47:05', 'mfs'),
(115, 14, 8, 19, 'offline', '2025-05-22 21:47:05', 279.33, '2025-05-22 21:47:05', '2025-05-22 21:47:05', 'card'),
(116, 67, 10, NULL, 'online', '2025-03-16 21:47:05', 547.62, '2025-03-16 21:47:05', '2025-03-16 21:47:05', 'offline'),
(117, 32, 1, NULL, 'offline', '2025-04-01 21:47:05', 782.27, '2025-04-01 21:47:05', '2025-04-01 21:47:05', 'card'),
(118, 14, 3, NULL, 'offline', '2025-02-13 21:47:05', 81.44, '2025-02-13 21:47:05', '2025-02-13 21:47:05', 'card'),
(119, 56, 1, NULL, 'online', '2025-05-16 21:47:05', 1527.11, '2025-05-16 21:47:05', '2025-05-16 21:47:05', 'mfs'),
(120, 5, 10, 18, 'online', '2025-03-10 21:47:05', 644.69, '2025-03-10 21:47:05', '2025-03-10 21:47:05', 'offline'),
(121, 20, 1, NULL, 'offline', '2025-02-09 21:47:05', 1102.73, '2025-02-09 21:47:05', '2025-02-09 21:47:05', 'offline'),
(122, 47, 1, NULL, 'online', '2025-05-07 21:47:05', 1729.18, '2025-05-07 21:47:05', '2025-05-07 21:47:05', 'offline'),
(123, 11, 1, 9, 'online', '2025-05-19 21:47:05', 1672.78, '2025-05-19 21:47:05', '2025-05-19 21:47:05', 'offline'),
(124, 72, 9, 7, 'online', '2025-06-20 21:47:05', 1738.86, '2025-06-20 21:47:05', '2025-06-20 21:47:05', 'offline'),
(125, 26, 2, NULL, 'online', '2025-01-08 21:47:05', 60.32, '2025-01-08 21:47:05', '2025-01-08 21:47:05', 'offline'),
(126, 1, 5, 10, 'online', '2025-05-07 21:47:05', 1505.45, '2025-05-07 21:47:05', '2025-05-07 21:47:05', 'mfs'),
(127, 59, 9, NULL, 'online', '2025-05-28 21:47:05', 1574.48, '2025-05-28 21:47:05', '2025-05-28 21:47:05', 'offline'),
(128, 41, 8, NULL, 'offline', '2025-05-11 21:47:05', 272.65, '2025-05-11 21:47:05', '2025-05-11 21:47:05', 'card'),
(129, 58, 5, 9, 'online', '2025-03-09 21:47:05', 388.26, '2025-03-09 21:47:05', '2025-03-09 21:47:05', 'offline'),
(130, 3, 4, 6, 'offline', '2024-10-28 21:47:05', 789.39, '2024-10-28 21:47:05', '2024-10-28 21:47:05', 'offline'),
(131, 5, 2, 1, 'offline', '2024-09-17 21:47:05', 529.63, '2024-09-17 21:47:05', '2024-09-17 21:47:05', 'mfs'),
(132, 3, 1, 9, 'offline', '2025-01-12 21:47:05', 854.3, '2025-01-12 21:47:05', '2025-01-12 21:47:05', 'card'),
(133, 33, 9, 3, 'online', '2025-05-20 21:47:05', 2152.57, '2025-05-20 21:47:05', '2025-05-20 21:47:05', 'offline'),
(134, 1, 2, 15, 'online', '2024-08-04 21:47:05', 370.44, '2024-08-04 21:47:05', '2024-08-04 21:47:05', 'card'),
(135, 74, 7, NULL, 'offline', '2025-03-04 21:47:05', 789.99, '2025-03-04 21:47:05', '2025-03-04 21:47:05', 'card'),
(136, 36, 4, NULL, 'offline', '2025-01-25 21:47:05', 1487.48, '2025-01-25 21:47:05', '2025-01-25 21:47:05', 'offline'),
(137, 32, 1, 2, 'online', '2025-04-03 21:47:05', 1412.36, '2025-04-03 21:47:05', '2025-04-03 21:47:05', 'card'),
(138, 14, 8, 7, 'offline', '2025-05-23 21:47:05', 1525.98, '2025-05-23 21:47:05', '2025-05-23 21:47:05', 'offline'),
(139, 72, 6, 17, 'offline', '2025-03-24 21:47:05', 148.88, '2025-03-24 21:47:05', '2025-03-24 21:47:05', 'offline'),
(140, 12, 5, NULL, 'offline', '2025-04-12 21:47:05', 1017.61, '2025-04-12 21:47:05', '2025-04-12 21:47:05', 'mfs'),
(141, 62, 4, 11, 'online', '2025-06-12 21:47:05', 809.23, '2025-06-12 21:47:05', '2025-06-12 21:47:05', 'offline'),
(142, 51, 10, NULL, 'offline', '2025-02-09 21:47:05', 122.83, '2025-02-09 21:47:05', '2025-02-09 21:47:05', 'card'),
(143, 14, 5, 11, 'offline', '2025-05-17 21:47:05', 1008.71, '2025-05-17 21:47:05', '2025-05-17 21:47:05', 'card'),
(144, 17, 8, 4, 'offline', '2025-04-07 21:47:05', 180.96, '2025-04-07 21:47:05', '2025-04-07 21:47:05', 'offline'),
(145, 11, 2, NULL, 'offline', '2025-01-19 21:47:05', 811.15, '2025-01-19 21:47:05', '2025-01-19 21:47:05', 'mfs'),
(146, 18, 2, NULL, 'online', '2025-04-25 21:47:05', 1620.07, '2025-04-25 21:47:05', '2025-04-25 21:47:05', 'card'),
(147, 62, 3, NULL, 'online', '2025-04-12 21:47:05', 1663.49, '2025-04-12 21:47:05', '2025-04-12 21:47:05', 'offline'),
(148, 64, 8, 8, 'offline', '2025-04-16 21:47:05', 53.75, '2025-04-16 21:47:05', '2025-04-16 21:47:05', 'offline'),
(149, 18, 1, NULL, 'online', '2024-11-03 21:47:05', 1313.3, '2024-11-03 21:47:05', '2024-11-03 21:47:05', 'card'),
(150, 34, 2, NULL, 'offline', '2024-09-22 21:47:05', 607.81, '2024-09-22 21:47:05', '2024-09-22 21:47:05', 'card'),
(151, 74, 4, 6, 'online', '2025-03-01 21:47:05', 1516.47, '2025-03-01 21:47:05', '2025-03-01 21:47:05', 'card'),
(152, 73, 6, NULL, 'offline', '2025-02-18 21:47:05', 1833.54, '2025-02-18 21:47:05', '2025-02-18 21:47:05', 'card'),
(153, 32, 7, 18, 'online', '2025-01-21 21:47:05', 930.65, '2025-01-21 21:47:05', '2025-01-21 21:47:05', 'card'),
(154, 6, 7, NULL, 'online', '2025-01-07 21:47:05', 144.96, '2025-01-07 21:47:05', '2025-01-07 21:47:05', 'mfs'),
(155, 8, 7, 6, 'offline', '2024-10-12 21:47:05', 918.7, '2024-10-12 21:47:05', '2024-10-12 21:47:05', 'mfs'),
(156, 15, 7, 6, 'offline', '2024-07-27 21:47:05', 1962.0, '2024-07-27 21:47:05', '2024-07-27 21:47:05', 'card'),
(157, 39, 2, NULL, 'online', '2024-11-11 21:47:05', 553.75, '2024-11-11 21:47:05', '2024-11-11 21:47:05', 'offline'),
(158, 75, 6, NULL, 'online', '2025-05-25 21:47:05', 2281.48, '2025-05-25 21:47:05', '2025-05-25 21:47:05', 'mfs'),
(159, 2, 4, 17, 'online', '2024-09-17 21:47:05', 603.22, '2024-09-17 21:47:05', '2024-09-17 21:47:05', 'offline'),
(160, 21, 4, NULL, 'online', '2024-10-07 21:47:05', 1063.69, '2024-10-07 21:47:05', '2024-10-07 21:47:05', 'offline'),
(161, 60, 4, NULL, 'online', '2025-05-18 21:47:05', 1052.03, '2025-05-18 21:47:05', '2025-05-18 21:47:05', 'mfs'),
(162, 45, 3, NULL, 'offline', '2025-04-07 21:47:05', 1650.9, '2025-04-07 21:47:05', '2025-04-07 21:47:05', 'offline'),
(163, 38, 3, 18, 'offline', '2025-04-27 21:47:05', 474.41, '2025-04-27 21:47:05', '2025-04-27 21:47:05', 'offline'),
(164, 56, 4, 13, 'online', '2025-04-05 21:47:05', 406.48, '2025-04-05 21:47:05', '2025-04-05 21:47:05', 'offline'),
(165, 47, 2, NULL, 'offline', '2025-01-21 21:47:05', 354.08, '2025-01-21 21:47:05', '2025-01-21 21:47:05', 'offline'),
(166, 17, 4, NULL, 'online', '2025-04-30 21:47:05', 1262.66, '2025-04-30 21:47:05', '2025-04-30 21:47:05', 'offline'),
(167, 74, 2, NULL, 'online', '2025-06-19 21:47:05', 1170.61, '2025-06-19 21:47:05', '2025-06-19 21:47:05', 'card'),
(168, 40, 1, NULL, 'online', '2025-06-24 21:47:05', 2227.84, '2025-06-24 21:47:05', '2025-06-24 21:47:05', 'card'),
(169, 51, 5, 19, 'online', '2024-09-02 21:47:05', 346.71, '2024-09-02 21:47:05', '2024-09-02 21:47:05', 'offline'),
(170, 71, 1, 4, 'online', '2025-01-25 21:47:05', 503.01, '2025-01-25 21:47:05', '2025-01-25 21:47:05', 'mfs'),
(171, 46, 1, NULL, 'offline', '2025-03-19 21:47:05', 1104.77, '2025-03-19 21:47:05', '2025-03-19 21:47:05', 'card'),
(172, 18, 9, 2, 'online', '2025-06-21 21:47:05', 1293.17, '2025-06-21 21:47:05', '2025-06-21 21:47:05', 'mfs'),
(173, 23, 6, 7, 'online', '2025-06-22 21:47:05', 1582.81, '2025-06-22 21:47:05', '2025-06-22 21:47:05', 'offline'),
(174, 42, 6, 17, 'online', '2024-10-12 21:47:05', 70.88, '2024-10-12 21:47:05', '2024-10-12 21:47:05', 'offline'),
(175, 3, 4, 1, 'offline', '2025-02-06 21:47:05', 1817.34, '2025-02-06 21:47:05', '2025-02-06 21:47:05', 'offline'),
(176, 48, 6, 10, 'online', '2025-02-24 21:47:05', 1329.7, '2025-02-24 21:47:05', '2025-02-24 21:47:05', 'mfs'),
(177, 53, 8, 11, 'offline', '2025-05-11 21:47:05', 879.6, '2025-05-11 21:47:05', '2025-05-11 21:47:05', 'offline'),
(178, 57, 5, NULL, 'online', '2024-12-23 21:47:05', 1272.13, '2024-12-23 21:47:05', '2024-12-23 21:47:05', 'mfs'),
(179, 15, 4, 7, 'offline', '2025-04-01 21:47:05', 1076.92, '2025-04-01 21:47:05', '2025-04-01 21:47:05', 'mfs'),
(180, 59, 7, NULL, 'online', '2025-06-05 21:47:05', 336.03, '2025-06-05 21:47:05', '2025-06-05 21:47:05', 'mfs'),
(181, 15, 4, 19, 'online', '2025-01-28 21:47:05', 93.11, '2025-01-28 21:47:05', '2025-01-28 21:47:05', 'offline'),
(182, 70, 9, NULL, 'offline', '2025-06-26 21:47:05', 1236.22, '2025-06-26 21:47:05', '2025-06-26 21:47:05', 'offline'),
(183, 2, 1, NULL, 'offline', '2025-05-18 21:47:05', 847.84, '2025-05-18 21:47:05', '2025-05-18 21:47:05', 'offline'),
(184, 58, 7, NULL, 'offline', '2025-05-20 21:47:05', 1037.87, '2025-05-20 21:47:05', '2025-05-20 21:47:05', 'offline'),
(185, 46, 10, 4, 'online', '2025-01-07 21:47:05', 799.73, '2025-01-07 21:47:05', '2025-01-07 21:47:05', 'offline'),
(186, 7, 8, 20, 'offline', '2024-12-20 21:47:05', 1054.99, '2024-12-20 21:47:05', '2024-12-20 21:47:05', 'offline'),
(187, 40, 4, NULL, 'offline', '2025-01-21 21:47:05', 1813.3, '2025-01-21 21:47:05', '2025-01-21 21:47:05', 'offline'),
(188, 50, 2, 7, 'online', '2025-04-03 21:47:05', 1012.52, '2025-04-03 21:47:05', '2025-04-03 21:47:05', 'mfs'),
(189, 75, 3, NULL, 'online', '2025-03-07 21:47:05', 372.44, '2025-03-07 21:47:05', '2025-03-07 21:47:05', 'mfs'),
(190, 6, 3, NULL, 'online', '2025-02-17 21:47:05', 1863.97, '2025-02-17 21:47:05', '2025-02-17 21:47:05', 'card'),
(191, 58, 3, NULL, 'online', '2024-12-23 21:47:05', 1750.01, '2024-12-23 21:47:05', '2024-12-23 21:47:05', 'offline'),
(192, 55, 10, NULL, 'online', '2025-01-15 21:47:05', 322.77, '2025-01-15 21:47:05', '2025-01-15 21:47:05', 'mfs'),
(193, 53, 2, 16, 'online', '2025-05-01 21:47:05', 550.36, '2025-05-01 21:47:05', '2025-05-01 21:47:05', 'mfs'),
(194, 36, 8, NULL, 'online', '2025-01-25 21:47:05', 1179.34, '2025-01-25 21:47:05', '2025-01-25 21:47:05', 'mfs'),
(195, 12, 3, NULL, 'offline', '2025-04-21 21:47:05', 716.95, '2025-04-21 21:47:05', '2025-04-21 21:47:05', 'offline'),
(196, 31, 1, 12, 'offline', '2024-10-06 21:47:05', 781.98, '2024-10-06 21:47:05', '2024-10-06 21:47:05', 'offline'),
(197, 42, 6, 19, 'online', '2024-12-01 21:47:05', 1426.29, '2024-12-01 21:47:05', '2024-12-01 21:47:05', 'mfs'),
(198, 64, 8, 18, 'online', '2025-05-13 21:47:05', 596.88, '2025-05-13 21:47:05', '2025-05-13 21:47:05', 'card'),
(199, 8, 5, NULL, 'online', '2025-02-05 21:47:05', 919.3, '2025-02-05 21:47:05', '2025-02-05 21:47:05', 'offline'),
(200, 8, 10, 15, 'offline', '2025-06-12 21:47:05', 1179.8, '2025-06-12 21:47:05', '2025-06-12 21:47:05', 'offline'),
(201, 5, 7, NULL, 'online', '2024-10-26 21:47:05', 323.8, '2024-10-26 21:47:05', '2024-10-26 21:47:05', 'card'),
(202, 5, 8, 14, 'online', '2024-09-20 21:47:05', 994.91, '2024-09-20 21:47:05', '2024-09-20 21:47:05', 'offline'),
(203, 25, 4, NULL, 'online', '2024-11-03 21:47:05', 116.35, '2024-11-03 21:47:05', '2024-11-03 21:47:05', 'card'),
(204, 8, 9, NULL, 'online', '2024-12-16 21:47:05', 1239.55, '2024-12-16 21:47:05', '2024-12-16 21:47:05', 'offline'),
(205, 63, 9, 18, 'online', '2025-05-10 21:47:05', 1566.95, '2025-05-10 21:47:05', '2025-05-10 21:47:05', 'offline'),
(206, 71, 1, 10, 'offline', '2025-05-16 21:47:05', 1678.93, '2025-05-16 21:47:05', '2025-05-16 21:47:05', 'card'),
(207, 54, 1, 14, 'offline', '2025-05-08 21:47:05', 807.79, '2025-05-08 21:47:05', '2025-05-08 21:47:05', 'card'),
(208, 71, 8, 9, 'offline', '2024-11-15 21:47:05', 837.42, '2024-11-15 21:47:05', '2024-11-15 21:47:05', 'mfs'),
(209, 19, 10, 17, 'online', '2025-02-14 21:47:05', 1568.72, '2025-02-14 21:47:05', '2025-02-14 21:47:05', 'card'),
(210, 33, 2, NULL, 'online', '2025-05-04 21:47:05', 1897.81, '2025-05-04 21:47:05', '2025-05-04 21:47:05', 'offline'),
(211, 51, 9, NULL, 'online', '2025-04-13 21:47:05', 637.93, '2025-04-13 21:47:05', '2025-04-13 21:47:05', 'offline'),
(212, 48, 2, 5, 'online', '2025-02-14 21:47:05', 323.8, '2025-02-14 21:47:05', '2025-02-14 21:47:05', 'offline'),
(213, 72, 6, 8, 'offline', '2025-05-08 21:47:05', 234.52, '2025-05-08 21:47:05', '2025-05-08 21:47:05', 'card'),
(214, 11, 10, 18, 'online', '2025-05-02 21:47:05', 323.8, '2025-05-02 21:47:05', '2025-05-02 21:47:05', 'card'),
(215, 6, 8, NULL, 'online', '2025-05-21 21:47:05', 1265.49, '2025-05-21 21:47:05', '2025-05-21 21:47:05', 'offline'),
(216, 58, 3, 10, 'online', '2025-06-17 21:47:05', 1367.45, '2025-06-17 21:47:05', '2025-06-17 21:47:05', 'mfs'),
(217, 74, 1, 2, 'online', '2025-06-01 21:47:05', 175.92, '2025-06-01 21:47:05', '2025-06-01 21:47:05', 'card'),
(218, 23, 1, NULL, 'online', '2025-04-11 21:47:05', 93.11, '2025-04-11 21:47:05', '2025-04-11 21:47:05', 'offline'),
(219, 5, 2, NULL, 'offline', '2025-05-20 21:47:05', 713.62, '2025-05-20 21:47:05', '2025-05-20 21:47:05', 'mfs'),
(220, 55, 6, 20, 'offline', '2025-04-20 21:47:05', 790.61, '2025-04-20 21:47:05', '2025-04-20 21:47:05', 'offline'),
(221, 8, 5, 3, 'offline', '2025-02-20 21:47:05', 1856.28, '2025-02-20 21:47:05', '2025-02-20 21:47:05', 'offline'),
(222, 38, 1, NULL, 'online', '2025-05-06 21:47:05', 712.64, '2025-05-06 21:47:05', '2025-05-06 21:47:05', 'card'),
(223, 74, 10, 15, 'online', '2025-06-24 21:47:05', 692.92, '2025-06-24 21:47:05', '2025-06-24 21:47:05', 'offline'),
(224, 47, 9, 10, 'online', '2025-03-03 21:47:05', 1777.75, '2025-03-03 21:47:05', '2025-03-03 21:47:05', 'offline'),
(225, 22, 5, 2, 'offline', '2024-09-28 21:47:05', 1226.54, '2024-09-28 21:47:05', '2024-09-28 21:47:05', 'offline'),
(226, 24, 5, NULL, 'offline', '2025-04-18 21:47:05', 1196.47, '2025-04-18 21:47:05', '2025-04-18 21:47:05', 'offline'),
(227, 67, 6, 3, 'offline', '2024-10-05 21:47:05', 158.04, '2024-10-05 21:47:05', '2024-10-05 21:47:05', 'card'),
(228, 16, 9, NULL, 'offline', '2025-05-02 21:47:05', 1599.39, '2025-05-02 21:47:05', '2025-05-02 21:47:05', 'offline'),
(229, 19, 7, NULL, 'offline', '2024-07-28 21:47:05', 385.61, '2024-07-28 21:47:05', '2024-07-28 21:47:05', 'offline'),
(230, 19, 2, 10, 'offline', '2025-03-06 21:47:05', 2335.61, '2025-03-06 21:47:05', '2025-03-06 21:47:05', 'offline'),
(231, 71, 5, NULL, 'online', '2024-07-09 21:47:05', 1696.27, '2024-07-09 21:47:05', '2024-07-09 21:47:05', 'offline'),
(232, 45, 3, NULL, 'offline', '2024-11-11 21:47:05', 882.27, '2024-11-11 21:47:05', '2024-11-11 21:47:05', 'offline'),
(233, 38, 5, 11, 'offline', '2025-04-17 21:47:05', 1300.35, '2025-04-17 21:47:05', '2025-04-17 21:47:05', 'offline'),
(234, 54, 1, 11, 'online', '2024-07-23 21:47:05', 632.2, '2024-07-23 21:47:05', '2024-07-23 21:47:05', 'card'),
(235, 20, 5, 17, 'offline', '2025-02-06 21:47:05', 1439.3, '2025-02-06 21:47:05', '2025-02-06 21:47:05', 'mfs'),
(236, 52, 3, NULL, 'online', '2024-10-30 21:47:05', 1864.24, '2024-10-30 21:47:05', '2024-10-30 21:47:05', 'offline'),
(237, 5, 3, 5, 'offline', '2025-03-28 21:47:05', 1001.94, '2025-03-28 21:47:05', '2025-03-28 21:47:05', 'offline'),
(238, 9, 9, NULL, 'offline', '2024-12-15 21:47:05', 646.44, '2024-12-15 21:47:05', '2024-12-15 21:47:05', 'mfs'),
(239, 27, 9, 1, 'online', '2024-12-03 21:47:05', 623.11, '2024-12-03 21:47:05', '2024-12-03 21:47:05', 'offline'),
(240, 66, 7, NULL, 'offline', '2024-10-24 21:47:05', 2182.48, '2024-10-24 21:47:05', '2024-10-24 21:47:05', 'offline'),
(241, 18, 2, 6, 'offline', '2025-06-04 21:47:05', 1497.46, '2025-06-04 21:47:05', '2025-06-04 21:47:05', 'offline'),
(242, 58, 1, NULL, 'online', '2025-05-05 21:47:05', 2343.17, '2025-05-05 21:47:05', '2025-05-05 21:47:05', 'card'),
(243, 72, 8, NULL, 'online', '2025-06-04 21:47:05', 478.8, '2025-06-04 21:47:05', '2025-06-04 21:47:05', 'mfs'),
(244, 38, 3, 15, 'offline', '2025-06-11 21:47:05', 937.5, '2025-06-11 21:47:05', '2025-06-11 21:47:05', 'offline'),
(245, 61, 3, 17, 'offline', '2025-05-24 21:47:05', 640.2, '2025-05-24 21:47:05', '2025-05-24 21:47:05', 'offline'),
(246, 58, 9, 8, 'offline', '2024-11-17 21:47:05', 309.36, '2024-11-17 21:47:05', '2024-11-17 21:47:05', 'card'),
(247, 30, 4, 9, 'offline', '2025-02-20 21:47:05', 560.05, '2025-02-20 21:47:05', '2025-02-20 21:47:05', 'card'),
(248, 8, 5, NULL, 'offline', '2024-12-21 21:47:05', 1408.34, '2024-12-21 21:47:05', '2024-12-21 21:47:05', 'offline'),
(249, 3, 5, 6, 'online', '2025-05-07 21:47:05', 1725.57, '2025-05-07 21:47:05', '2025-05-07 21:47:05', 'card'),
(250, 75, 8, NULL, 'offline', '2025-06-15 21:47:05', 1024.14, '2025-06-15 21:47:05', '2025-06-15 21:47:05', 'offline'),
(251, 9, 6, 19, 'offline', '2025-02-16 21:47:05', 139.25, '2025-02-16 21:47:05', '2025-02-16 21:47:05', 'card'),
(252, 39, 5, 17, 'offline', '2025-06-26 21:47:05', 1090.82, '2025-06-26 21:47:05', '2025-06-26 21:47:05', 'offline'),
(253, 46, 9, 15, 'online', '2025-06-04 21:47:05', 1538.45, '2025-06-04 21:47:05', '2025-06-04 21:47:05', 'offline'),
(254, 34, 6, 19, 'online', '2025-06-06 21:47:05', 508.1, '2025-06-06 21:47:05', '2025-06-06 21:47:05', 'offline'),
(255, 11, 3, NULL, 'online', '2024-08-20 21:47:05', 1178.88, '2024-08-20 21:47:05', '2024-08-20 21:47:05', 'card'),
(256, 46, 7, NULL, 'offline', '2024-10-26 21:47:05', 1249.53, '2024-10-26 21:47:05', '2024-10-26 21:47:05', 'card'),
(257, 52, 8, NULL, 'offline', '2025-02-05 21:47:05', 1997.5, '2025-02-05 21:47:05', '2025-02-05 21:47:05', 'offline'),
(258, 48, 8, 19, 'offline', '2025-06-11 21:47:05', 1523.91, '2025-06-11 21:47:05', '2025-06-11 21:47:05', 'offline'),
(259, 57, 2, 10, 'offline', '2025-06-06 21:47:05', 1441.06, '2025-06-06 21:47:05', '2025-06-06 21:47:05', 'mfs'),
(260, 41, 3, NULL, 'online', '2024-12-12 21:47:05', 286.78, '2024-12-12 21:47:05', '2024-12-12 21:47:05', 'offline'),
(261, 12, 5, 12, 'offline', '2025-02-09 21:47:05', 1240.04, '2025-02-09 21:47:05', '2025-02-09 21:47:05', 'offline'),
(262, 34, 8, NULL, 'online', '2025-05-01 21:47:05', 1523.8, '2025-05-01 21:47:05', '2025-05-01 21:47:05', 'offline'),
(263, 37, 5, NULL, 'online', '2025-04-07 21:47:05', 355.28, '2025-04-07 21:47:05', '2025-04-07 21:47:05', 'offline'),
(264, 22, 6, 16, 'online', '2024-10-27 21:47:05', 599.82, '2024-10-27 21:47:05', '2024-10-27 21:47:05', 'mfs'),
(265, 33, 2, NULL, 'online', '2025-06-14 21:47:05', 279.35, '2025-06-14 21:47:05', '2025-06-14 21:47:05', 'mfs'),
(266, 27, 5, 8, 'offline', '2024-10-30 21:47:05', 983.59, '2024-10-30 21:47:05', '2024-10-30 21:47:05', 'mfs'),
(267, 12, 3, NULL, 'offline', '2025-05-28 21:47:05', 1524.87, '2025-05-28 21:47:05', '2025-05-28 21:47:05', 'offline'),
(268, 27, 9, NULL, 'online', '2024-08-08 21:47:05', 784.2, '2024-08-08 21:47:05', '2024-08-08 21:47:05', 'offline'),
(269, 5, 3, NULL, 'online', '2025-04-09 21:47:05', 279.35, '2025-04-09 21:47:05', '2025-04-09 21:47:05', 'offline'),
(270, 66, 3, NULL, 'online', '2024-12-27 21:47:05', 1286.07, '2024-12-27 21:47:05', '2024-12-27 21:47:05', 'card'),
(271, 63, 1, NULL, 'offline', '2024-10-06 21:47:05', 1146.08, '2024-10-06 21:47:05', '2024-10-06 21:47:05', 'offline'),
(272, 73, 2, NULL, 'offline', '2025-06-05 21:47:05', 560.05, '2025-06-05 21:47:05', '2025-06-05 21:47:05', 'card'),
(273, 32, 5, 9, 'offline', '2024-10-25 21:47:05', 842.36, '2024-10-25 21:47:05', '2024-10-25 21:47:05', 'card'),
(274, 61, 7, NULL, 'offline', '2024-10-30 21:47:05', 465.55, '2024-10-30 21:47:05', '2024-10-30 21:47:05', 'offline'),
(275, 26, 8, NULL, 'online', '2024-10-14 21:47:05', 1038.33, '2024-10-14 21:47:05', '2024-10-14 21:47:05', 'offline'),
(276, 4, 4, 19, 'online', '2025-05-22 21:47:05', 703.68, '2025-05-22 21:47:05', '2025-05-22 21:47:05', 'offline'),
(277, 2, 6, 20, 'offline', '2025-02-13 21:47:05', 101.62, '2025-02-13 21:47:05', '2025-02-13 21:47:05', 'offline'),
(278, 75, 8, 3, 'online', '2024-09-17 21:47:05', 974.19, '2024-09-17 21:47:05', '2024-09-17 21:47:05', 'mfs'),
(279, 38, 5, NULL, 'online', '2025-01-27 21:47:05', 1689.92, '2025-01-27 21:47:05', '2025-01-27 21:47:05', 'offline'),
(280, 24, 3, 17, 'online', '2025-03-31 21:47:05', 1294.47, '2025-03-31 21:47:05', '2025-03-31 21:47:05', 'offline'),
(281, 15, 10, NULL, 'online', '2025-02-26 21:47:05', 759.7, '2025-02-26 21:47:05', '2025-02-26 21:47:05', 'mfs'),
(282, 63, 4, NULL, 'online', '2025-02-16 21:47:05', 1225.43, '2025-02-16 21:47:05', '2025-02-16 21:47:05', 'offline'),
(283, 33, 8, 12, 'offline', '2024-08-25 21:47:05', 730.94, '2024-08-25 21:47:05', '2024-08-25 21:47:05', 'mfs'),
(284, 12, 3, 2, 'online', '2025-06-07 21:47:05', 777.71, '2025-06-07 21:47:05', '2025-06-07 21:47:05', 'card'),
(285, 74, 8, 16, 'online', '2025-01-28 21:47:05', 225.82, '2025-01-28 21:47:05', '2025-01-28 21:47:05', 'offline'),
(286, 66, 2, 4, 'offline', '2025-02-08 21:47:05', 53.75, '2025-02-08 21:47:05', '2025-02-08 21:47:05', 'offline'),
(287, 40, 4, NULL, 'online', '2025-03-18 21:47:05', 20.36, '2025-03-18 21:47:05', '2025-03-18 21:47:05', 'mfs'),
(288, 67, 10, 6, 'online', '2024-12-31 21:47:05', 579.1, '2024-12-31 21:47:05', '2024-12-31 21:47:05', 'offline'),
(289, 32, 7, 17, 'online', '2025-06-07 21:47:05', 682.39, '2025-06-07 21:47:05', '2025-06-07 21:47:05', 'offline'),
(290, 73, 6, 14, 'online', '2024-12-29 21:47:05', 944.4, '2024-12-29 21:47:05', '2024-12-29 21:47:05', 'mfs'),
(291, 12, 10, NULL, 'online', '2025-06-26 21:47:05', 60.32, '2025-06-26 21:47:05', '2025-06-26 21:47:05', 'mfs'),
(292, 27, 7, NULL, 'offline', '2025-05-15 21:47:05', 813.08, '2025-05-15 21:47:05', '2025-05-15 21:47:05', 'offline'),
(293, 3, 10, 7, 'online', '2025-06-19 21:47:05', 703.68, '2025-06-19 21:47:05', '2025-06-19 21:47:05', 'offline'),
(294, 68, 5, 18, 'online', '2024-10-08 21:47:05', 1518.39, '2024-10-08 21:47:05', '2024-10-08 21:47:05', 'mfs'),
(295, 16, 5, 6, 'offline', '2024-11-16 21:47:05', 2173.67, '2024-11-16 21:47:05', '2024-11-16 21:47:05', 'offline'),
(296, 56, 3, 16, 'online', '2025-01-26 21:47:05', 977.19, '2025-01-26 21:47:05', '2025-01-26 21:47:05', 'mfs'),
(297, 24, 4, NULL, 'offline', '2024-12-10 21:47:05', 2392.22, '2024-12-10 21:47:05', '2024-12-10 21:47:05', 'card'),
(298, 63, 2, NULL, 'online', '2025-05-13 21:47:05', 731.77, '2025-05-13 21:47:05', '2025-05-13 21:47:05', 'offline'),
(299, 52, 2, NULL, 'offline', '2024-11-23 21:47:05', 1440.35, '2024-11-23 21:47:05', '2024-11-23 21:47:05', 'mfs'),
(300, 26, 4, NULL, 'offline', '2025-04-28 21:47:05', 1542.04, '2025-04-28 21:47:05', '2025-04-28 21:47:05', 'mfs');

INSERT INTO order_items (id, order_id, product_id, quantity, price, created_at, updated_at) VALUES
(1, 1, 4, 5, 614.7, '2025-05-27 21:47:05', '2025-05-27 21:47:05'),
(2, 1, 34, 1, 89.21, '2025-05-27 21:47:05', '2025-05-27 21:47:05'),
(3, 1, 17, 3, 161.25, '2025-05-27 21:47:05', '2025-05-27 21:47:05'),
(4, 1, 28, 1, 101.62, '2025-05-27 21:47:05', '2025-05-27 21:47:05'),
(5, 1, 6, 2, 70.88, '2025-05-27 21:47:05', '2025-05-27 21:47:05'),
(6, 2, 15, 5, 301.6, '2025-02-27 21:47:05', '2025-02-27 21:47:05'),
(7, 2, 29, 4, 520.76, '2025-02-27 21:47:05', '2025-02-27 21:47:05'),
(8, 2, 16, 4, 309.36, '2025-02-27 21:47:05', '2025-02-27 21:47:05'),
(9, 3, 27, 4, 615.52, '2024-12-05 21:47:05', '2024-12-05 21:47:05'),
(10, 3, 2, 1, 98.9, '2024-12-05 21:47:05', '2024-12-05 21:47:05'),
(11, 3, 23, 5, 890.8, '2024-12-05 21:47:05', '2024-12-05 21:47:05'),
(12, 4, 9, 3, 272.25, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(13, 4, 4, 5, 614.7, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(14, 4, 22, 5, 912.4, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(15, 4, 14, 1, 110.75, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(16, 5, 10, 3, 510.15, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(17, 5, 33, 3, 72.51, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(18, 5, 24, 2, 40.72, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(19, 5, 3, 5, 979.05, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(20, 6, 36, 2, 286.78, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(21, 6, 9, 4, 363.0, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(22, 6, 6, 3, 106.32, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(23, 7, 18, 1, 50.27, '2025-04-24 21:47:05', '2025-04-24 21:47:05'),
(24, 7, 19, 4, 223.48, '2025-04-24 21:47:05', '2025-04-24 21:47:05'),
(25, 7, 26, 3, 194.28, '2025-04-24 21:47:05', '2025-04-24 21:47:05'),
(26, 7, 1, 1, 112.01, '2025-04-24 21:47:05', '2025-04-24 21:47:05'),
(27, 7, 29, 5, 650.95, '2025-04-24 21:47:05', '2025-04-24 21:47:05'),
(28, 8, 24, 3, 61.08, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(29, 8, 5, 5, 362.4, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(30, 8, 10, 2, 340.1, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(31, 8, 18, 3, 150.81, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(32, 9, 16, 3, 232.02, '2025-03-14 21:47:05', '2025-03-14 21:47:05'),
(33, 9, 34, 4, 356.84, '2025-03-14 21:47:05', '2025-03-14 21:47:05'),
(34, 9, 22, 3, 547.44, '2025-03-14 21:47:05', '2025-03-14 21:47:05'),
(35, 9, 31, 5, 209.2, '2025-03-14 21:47:05', '2025-03-14 21:47:05'),
(36, 9, 18, 1, 50.27, '2025-03-14 21:47:05', '2025-03-14 21:47:05'),
(37, 10, 17, 4, 215.0, '2025-03-22 21:47:05', '2025-03-22 21:47:05'),
(38, 10, 14, 1, 110.75, '2025-03-22 21:47:05', '2025-03-22 21:47:05'),
(39, 10, 20, 3, 430.62, '2025-03-22 21:47:05', '2025-03-22 21:47:05'),
(40, 10, 15, 4, 241.28, '2025-03-22 21:47:05', '2025-03-22 21:47:05'),
(41, 10, 28, 5, 508.1, '2025-03-22 21:47:05', '2025-03-22 21:47:05'),
(42, 11, 26, 5, 323.8, '2025-02-10 21:47:05', '2025-02-10 21:47:05'),
(43, 11, 16, 4, 309.36, '2025-02-10 21:47:05', '2025-02-10 21:47:05'),
(44, 11, 20, 4, 574.16, '2025-02-10 21:47:05', '2025-02-10 21:47:05'),
(45, 11, 8, 1, 122.83, '2025-02-10 21:47:05', '2025-02-10 21:47:05'),
(46, 12, 30, 2, 225.82, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(47, 12, 15, 1, 60.32, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(48, 12, 19, 3, 167.61, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(49, 13, 30, 2, 225.82, '2025-02-02 21:47:05', '2025-02-02 21:47:05'),
(50, 13, 33, 3, 72.51, '2025-02-02 21:47:05', '2025-02-02 21:47:05'),
(51, 13, 22, 3, 547.44, '2025-02-02 21:47:05', '2025-02-02 21:47:05'),
(52, 14, 30, 2, 225.82, '2024-11-28 21:47:05', '2024-11-28 21:47:05'),
(53, 14, 14, 5, 553.75, '2024-11-28 21:47:05', '2024-11-28 21:47:05'),
(54, 14, 21, 3, 527.76, '2024-11-28 21:47:05', '2024-11-28 21:47:05'),
(55, 15, 20, 4, 574.16, '2024-10-15 21:47:05', '2024-10-15 21:47:05'),
(56, 15, 32, 1, 93.11, '2024-10-15 21:47:05', '2024-10-15 21:47:05'),
(57, 15, 24, 2, 40.72, '2024-10-15 21:47:05', '2024-10-15 21:47:05'),
(58, 15, 33, 5, 120.85, '2024-10-15 21:47:05', '2024-10-15 21:47:05'),
(59, 16, 14, 1, 110.75, '2025-03-10 21:47:05', '2025-03-10 21:47:05'),
(60, 16, 20, 4, 574.16, '2025-03-10 21:47:05', '2025-03-10 21:47:05'),
(61, 17, 32, 3, 279.33, '2024-10-13 21:47:05', '2024-10-13 21:47:05'),
(62, 17, 16, 5, 386.7, '2024-10-13 21:47:05', '2024-10-13 21:47:05'),
(63, 17, 19, 3, 167.61, '2024-10-13 21:47:05', '2024-10-13 21:47:05'),
(64, 18, 26, 5, 323.8, '2025-03-07 21:47:05', '2025-03-07 21:47:05'),
(65, 18, 3, 4, 783.24, '2025-03-07 21:47:05', '2025-03-07 21:47:05'),
(66, 18, 8, 1, 122.83, '2025-03-07 21:47:05', '2025-03-07 21:47:05'),
(67, 19, 7, 4, 111.4, '2025-03-02 21:47:05', '2025-03-02 21:47:05'),
(68, 20, 28, 2, 203.24, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(69, 20, 12, 1, 117.26, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(70, 20, 34, 3, 267.63, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(71, 20, 21, 5, 879.6, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(72, 20, 7, 2, 55.7, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(73, 21, 23, 2, 356.32, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(74, 21, 13, 3, 206.04, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(75, 22, 4, 1, 122.94, '2025-03-09 21:47:05', '2025-03-09 21:47:05'),
(76, 22, 30, 2, 225.82, '2025-03-09 21:47:05', '2025-03-09 21:47:05'),
(77, 22, 9, 2, 181.5, '2025-03-09 21:47:05', '2025-03-09 21:47:05'),
(78, 22, 35, 3, 503.01, '2025-03-09 21:47:05', '2025-03-09 21:47:05'),
(79, 23, 13, 2, 137.36, '2025-06-08 21:47:05', '2025-06-08 21:47:05'),
(80, 23, 4, 4, 491.76, '2025-06-08 21:47:05', '2025-06-08 21:47:05'),
(81, 23, 30, 3, 338.73, '2025-06-08 21:47:05', '2025-06-08 21:47:05'),
(82, 24, 27, 2, 307.76, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(83, 24, 29, 1, 130.19, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(84, 24, 5, 1, 72.48, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(85, 24, 18, 4, 201.08, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(86, 25, 2, 4, 395.6, '2024-11-22 21:47:05', '2024-11-22 21:47:05'),
(87, 25, 33, 2, 48.34, '2024-11-22 21:47:05', '2024-11-22 21:47:05'),
(88, 25, 12, 4, 469.04, '2024-11-22 21:47:05', '2024-11-22 21:47:05'),
(89, 25, 22, 5, 912.4, '2024-11-22 21:47:05', '2024-11-22 21:47:05'),
(90, 26, 7, 2, 55.7, '2024-10-22 21:47:05', '2024-10-22 21:47:05'),
(91, 26, 6, 3, 106.32, '2024-10-22 21:47:05', '2024-10-22 21:47:05'),
(92, 26, 9, 2, 181.5, '2024-10-22 21:47:05', '2024-10-22 21:47:05'),
(93, 26, 13, 4, 274.72, '2024-10-22 21:47:05', '2024-10-22 21:47:05'),
(94, 26, 11, 1, 196.34, '2024-10-22 21:47:05', '2024-10-22 21:47:05'),
(95, 27, 20, 4, 574.16, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(96, 27, 26, 3, 194.28, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(97, 27, 21, 2, 351.84, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(98, 27, 29, 2, 260.38, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(99, 27, 17, 3, 161.25, '2025-04-08 21:47:05', '2025-04-08 21:47:05'),
(100, 28, 7, 2, 55.7, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(101, 28, 35, 5, 838.35, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(102, 28, 22, 1, 182.48, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(103, 28, 6, 3, 106.32, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(104, 28, 14, 2, 221.5, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(105, 29, 28, 3, 304.86, '2025-03-29 21:47:05', '2025-03-29 21:47:05'),
(106, 29, 33, 4, 96.68, '2025-03-29 21:47:05', '2025-03-29 21:47:05'),
(107, 29, 20, 1, 143.54, '2025-03-29 21:47:05', '2025-03-29 21:47:05'),
(108, 29, 7, 3, 83.55, '2025-03-29 21:47:05', '2025-03-29 21:47:05'),
(109, 30, 34, 1, 89.21, '2024-12-09 21:47:05', '2024-12-09 21:47:05'),
(110, 30, 16, 1, 77.34, '2024-12-09 21:47:05', '2024-12-09 21:47:05'),
(111, 30, 13, 1, 68.68, '2024-12-09 21:47:05', '2024-12-09 21:47:05'),
(112, 31, 13, 4, 274.72, '2024-07-19 21:47:05', '2024-07-19 21:47:05'),
(113, 32, 31, 4, 167.36, '2024-12-15 21:47:05', '2024-12-15 21:47:05'),
(114, 32, 28, 2, 203.24, '2024-12-15 21:47:05', '2024-12-15 21:47:05'),
(115, 32, 7, 5, 139.25, '2024-12-15 21:47:05', '2024-12-15 21:47:05'),
(116, 32, 35, 3, 503.01, '2024-12-15 21:47:05', '2024-12-15 21:47:05'),
(117, 33, 12, 5, 586.3, '2024-09-19 21:47:05', '2024-09-19 21:47:05'),
(118, 33, 7, 5, 139.25, '2024-09-19 21:47:05', '2024-09-19 21:47:05'),
(119, 33, 32, 4, 372.44, '2024-09-19 21:47:05', '2024-09-19 21:47:05'),
(120, 33, 10, 5, 850.25, '2024-09-19 21:47:05', '2024-09-19 21:47:05'),
(121, 34, 15, 2, 120.64, '2025-06-20 21:47:05', '2025-06-20 21:47:05'),
(122, 35, 28, 2, 203.24, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(123, 35, 30, 5, 564.55, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(124, 35, 20, 1, 143.54, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(125, 35, 7, 4, 111.4, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(126, 35, 6, 3, 106.32, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(127, 36, 20, 1, 143.54, '2025-02-20 21:47:05', '2025-02-20 21:47:05'),
(128, 36, 9, 5, 453.75, '2025-02-20 21:47:05', '2025-02-20 21:47:05'),
(129, 37, 7, 1, 27.85, '2025-04-14 21:47:05', '2025-04-14 21:47:05'),
(130, 37, 13, 4, 274.72, '2025-04-14 21:47:05', '2025-04-14 21:47:05'),
(131, 37, 26, 3, 194.28, '2025-04-14 21:47:05', '2025-04-14 21:47:05'),
(132, 37, 35, 2, 335.34, '2025-04-14 21:47:05', '2025-04-14 21:47:05'),
(133, 37, 10, 1, 170.05, '2025-04-14 21:47:05', '2025-04-14 21:47:05'),
(134, 38, 22, 2, 364.96, '2025-01-30 21:47:05', '2025-01-30 21:47:05'),
(135, 38, 11, 2, 392.68, '2025-01-30 21:47:05', '2025-01-30 21:47:05'),
(136, 39, 18, 5, 251.35, '2024-11-27 21:47:05', '2024-11-27 21:47:05'),
(137, 39, 33, 2, 48.34, '2024-11-27 21:47:05', '2024-11-27 21:47:05'),
(138, 39, 1, 2, 224.02, '2024-11-27 21:47:05', '2024-11-27 21:47:05'),
(139, 40, 6, 3, 106.32, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(140, 40, 1, 1, 112.01, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(141, 40, 27, 4, 615.52, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(142, 40, 24, 3, 61.08, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(143, 40, 29, 3, 390.57, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(144, 41, 2, 1, 98.9, '2025-06-22 21:47:05', '2025-06-22 21:47:05'),
(145, 42, 6, 5, 177.2, '2025-02-19 21:47:05', '2025-02-19 21:47:05'),
(146, 42, 22, 4, 729.92, '2025-02-19 21:47:05', '2025-02-19 21:47:05'),
(147, 43, 30, 4, 451.64, '2024-12-12 21:47:05', '2024-12-12 21:47:05'),
(148, 43, 7, 5, 139.25, '2024-12-12 21:47:05', '2024-12-12 21:47:05'),
(149, 43, 32, 4, 372.44, '2024-12-12 21:47:05', '2024-12-12 21:47:05'),
(150, 43, 6, 1, 35.44, '2024-12-12 21:47:05', '2024-12-12 21:47:05'),
(151, 43, 2, 5, 494.5, '2024-12-12 21:47:05', '2024-12-12 21:47:05'),
(152, 44, 22, 3, 547.44, '2024-10-14 21:47:05', '2024-10-14 21:47:05'),
(153, 45, 29, 5, 650.95, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(154, 45, 25, 4, 93.08, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(155, 46, 25, 3, 69.81, '2025-01-09 21:47:05', '2025-01-09 21:47:05'),
(156, 47, 15, 5, 301.6, '2024-12-09 21:47:05', '2024-12-09 21:47:05'),
(157, 48, 8, 5, 614.15, '2025-03-29 21:47:05', '2025-03-29 21:47:05'),
(158, 48, 1, 1, 112.01, '2025-03-29 21:47:05', '2025-03-29 21:47:05'),
(159, 48, 20, 5, 717.7, '2025-03-29 21:47:05', '2025-03-29 21:47:05'),
(160, 49, 25, 4, 93.08, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(161, 49, 2, 1, 98.9, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(162, 49, 22, 4, 729.92, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(163, 50, 8, 4, 491.32, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(164, 50, 7, 4, 111.4, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(165, 50, 4, 3, 368.82, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(166, 50, 31, 4, 167.36, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(167, 51, 10, 2, 340.1, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(168, 51, 33, 3, 72.51, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(169, 51, 30, 5, 564.55, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(170, 51, 11, 3, 589.02, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(171, 52, 34, 5, 446.05, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(172, 52, 23, 5, 890.8, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(173, 52, 27, 2, 307.76, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(174, 52, 1, 4, 448.04, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(175, 53, 31, 2, 83.68, '2025-03-25 21:47:05', '2025-03-25 21:47:05'),
(176, 53, 3, 5, 979.05, '2025-03-25 21:47:05', '2025-03-25 21:47:05'),
(177, 53, 29, 5, 650.95, '2025-03-25 21:47:05', '2025-03-25 21:47:05'),
(178, 53, 30, 4, 451.64, '2025-03-25 21:47:05', '2025-03-25 21:47:05'),
(179, 53, 24, 2, 40.72, '2025-03-25 21:47:05', '2025-03-25 21:47:05'),
(180, 54, 5, 1, 72.48, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(181, 54, 6, 2, 70.88, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(182, 54, 4, 5, 614.7, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(183, 54, 29, 5, 650.95, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(184, 55, 11, 2, 392.68, '2024-09-06 21:47:05', '2024-09-06 21:47:05'),
(185, 55, 19, 5, 279.35, '2024-09-06 21:47:05', '2024-09-06 21:47:05'),
(186, 55, 13, 5, 343.4, '2024-09-06 21:47:05', '2024-09-06 21:47:05'),
(187, 55, 15, 2, 120.64, '2024-09-06 21:47:05', '2024-09-06 21:47:05'),
(188, 55, 16, 3, 232.02, '2024-09-06 21:47:05', '2024-09-06 21:47:05'),
(189, 56, 17, 2, 107.5, '2025-04-20 21:47:05', '2025-04-20 21:47:05'),
(190, 56, 15, 2, 120.64, '2025-04-20 21:47:05', '2025-04-20 21:47:05'),
(191, 56, 1, 3, 336.03, '2025-04-20 21:47:05', '2025-04-20 21:47:05'),
(192, 56, 26, 4, 259.04, '2025-04-20 21:47:05', '2025-04-20 21:47:05'),
(193, 57, 9, 4, 363.0, '2025-03-08 21:47:05', '2025-03-08 21:47:05'),
(194, 58, 36, 2, 286.78, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(195, 58, 22, 1, 182.48, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(196, 58, 19, 1, 55.87, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(197, 58, 35, 5, 838.35, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(198, 58, 31, 5, 209.2, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(199, 59, 10, 4, 680.2, '2025-01-14 21:47:05', '2025-01-14 21:47:05'),
(200, 59, 34, 3, 267.63, '2025-01-14 21:47:05', '2025-01-14 21:47:05'),
(201, 59, 1, 2, 224.02, '2025-01-14 21:47:05', '2025-01-14 21:47:05'),
(202, 60, 34, 2, 178.42, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(203, 60, 29, 5, 650.95, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(204, 60, 35, 2, 335.34, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(205, 60, 26, 2, 129.52, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(206, 60, 2, 1, 98.9, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(207, 61, 21, 5, 879.6, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(208, 61, 36, 2, 286.78, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(209, 61, 26, 5, 323.8, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(210, 61, 27, 4, 615.52, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(211, 61, 14, 5, 553.75, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(212, 62, 17, 3, 161.25, '2025-05-25 21:47:05', '2025-05-25 21:47:05'),
(213, 63, 26, 2, 129.52, '2024-07-10 21:47:05', '2024-07-10 21:47:05'),
(214, 63, 20, 5, 717.7, '2024-07-10 21:47:05', '2024-07-10 21:47:05'),
(215, 63, 8, 5, 614.15, '2024-07-10 21:47:05', '2024-07-10 21:47:05'),
(216, 63, 28, 5, 508.1, '2024-07-10 21:47:05', '2024-07-10 21:47:05'),
(217, 64, 3, 3, 587.43, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(218, 65, 1, 3, 336.03, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(219, 65, 6, 3, 106.32, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(220, 66, 32, 4, 372.44, '2025-02-03 21:47:05', '2025-02-03 21:47:05'),
(221, 66, 9, 3, 272.25, '2025-02-03 21:47:05', '2025-02-03 21:47:05'),
(222, 66, 5, 1, 72.48, '2025-02-03 21:47:05', '2025-02-03 21:47:05'),
(223, 66, 4, 1, 122.94, '2025-02-03 21:47:05', '2025-02-03 21:47:05'),
(224, 66, 18, 3, 150.81, '2025-02-03 21:47:05', '2025-02-03 21:47:05'),
(225, 67, 11, 1, 196.34, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(226, 67, 4, 4, 491.76, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(227, 67, 15, 5, 301.6, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(228, 68, 24, 2, 40.72, '2025-03-16 21:47:05', '2025-03-16 21:47:05'),
(229, 69, 4, 2, 245.88, '2025-03-20 21:47:05', '2025-03-20 21:47:05'),
(230, 69, 6, 2, 70.88, '2025-03-20 21:47:05', '2025-03-20 21:47:05'),
(231, 69, 17, 2, 107.5, '2025-03-20 21:47:05', '2025-03-20 21:47:05'),
(232, 69, 22, 4, 729.92, '2025-03-20 21:47:05', '2025-03-20 21:47:05'),
(233, 70, 30, 4, 451.64, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(234, 70, 1, 4, 448.04, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(235, 70, 7, 5, 139.25, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(236, 70, 24, 4, 81.44, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(237, 70, 3, 2, 391.62, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(238, 71, 9, 3, 272.25, '2025-03-24 21:47:05', '2025-03-24 21:47:05'),
(239, 71, 3, 2, 391.62, '2025-03-24 21:47:05', '2025-03-24 21:47:05'),
(240, 71, 8, 2, 245.66, '2025-03-24 21:47:05', '2025-03-24 21:47:05'),
(241, 71, 36, 2, 286.78, '2025-03-24 21:47:05', '2025-03-24 21:47:05'),
(242, 71, 10, 2, 340.1, '2025-03-24 21:47:05', '2025-03-24 21:47:05'),
(243, 72, 22, 3, 547.44, '2025-02-19 21:47:05', '2025-02-19 21:47:05'),
(244, 72, 33, 3, 72.51, '2025-02-19 21:47:05', '2025-02-19 21:47:05'),
(245, 72, 11, 1, 196.34, '2025-02-19 21:47:05', '2025-02-19 21:47:05'),
(246, 72, 7, 1, 27.85, '2025-02-19 21:47:05', '2025-02-19 21:47:05'),
(247, 73, 11, 3, 589.02, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(248, 73, 2, 1, 98.9, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(249, 73, 30, 3, 338.73, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(250, 74, 27, 5, 769.4, '2025-04-16 21:47:05', '2025-04-16 21:47:05'),
(251, 74, 11, 2, 392.68, '2025-04-16 21:47:05', '2025-04-16 21:47:05'),
(252, 74, 25, 1, 23.27, '2025-04-16 21:47:05', '2025-04-16 21:47:05'),
(253, 74, 9, 2, 181.5, '2025-04-16 21:47:05', '2025-04-16 21:47:05'),
(254, 74, 23, 3, 534.48, '2025-04-16 21:47:05', '2025-04-16 21:47:05'),
(255, 75, 31, 2, 83.68, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(256, 75, 11, 3, 589.02, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(257, 75, 17, 3, 161.25, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(258, 75, 20, 5, 717.7, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(259, 76, 31, 3, 125.52, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(260, 76, 8, 2, 245.66, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(261, 76, 22, 5, 912.4, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(262, 77, 35, 5, 838.35, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(263, 77, 2, 4, 395.6, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(264, 77, 19, 1, 55.87, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(265, 78, 5, 3, 217.44, '2025-03-05 21:47:05', '2025-03-05 21:47:05'),
(266, 78, 27, 2, 307.76, '2025-03-05 21:47:05', '2025-03-05 21:47:05'),
(267, 78, 23, 4, 712.64, '2025-03-05 21:47:05', '2025-03-05 21:47:05'),
(268, 78, 31, 4, 167.36, '2025-03-05 21:47:05', '2025-03-05 21:47:05'),
(269, 78, 15, 2, 120.64, '2025-03-05 21:47:05', '2025-03-05 21:47:05'),
(270, 79, 27, 1, 153.88, '2024-09-26 21:47:05', '2024-09-26 21:47:05'),
(271, 79, 15, 3, 180.96, '2024-09-26 21:47:05', '2024-09-26 21:47:05'),
(272, 80, 7, 2, 55.7, '2025-05-05 21:47:05', '2025-05-05 21:47:05'),
(273, 80, 8, 4, 491.32, '2025-05-05 21:47:05', '2025-05-05 21:47:05'),
(274, 81, 1, 2, 224.02, '2024-11-20 21:47:05', '2024-11-20 21:47:05'),
(275, 81, 5, 2, 144.96, '2024-11-20 21:47:05', '2024-11-20 21:47:05'),
(276, 81, 34, 3, 267.63, '2024-11-20 21:47:05', '2024-11-20 21:47:05'),
(277, 81, 18, 5, 251.35, '2024-11-20 21:47:05', '2024-11-20 21:47:05'),
(278, 82, 35, 3, 503.01, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(279, 82, 16, 5, 386.7, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(280, 83, 16, 2, 154.68, '2024-11-25 21:47:05', '2024-11-25 21:47:05'),
(281, 83, 2, 3, 296.7, '2024-11-25 21:47:05', '2024-11-25 21:47:05'),
(282, 83, 11, 4, 785.36, '2024-11-25 21:47:05', '2024-11-25 21:47:05'),
(283, 84, 10, 1, 170.05, '2025-04-22 21:47:05', '2025-04-22 21:47:05'),
(284, 84, 2, 4, 395.6, '2025-04-22 21:47:05', '2025-04-22 21:47:05'),
(285, 85, 10, 3, 510.15, '2025-03-27 21:47:05', '2025-03-27 21:47:05'),
(286, 85, 29, 3, 390.57, '2025-03-27 21:47:05', '2025-03-27 21:47:05'),
(287, 85, 33, 3, 72.51, '2025-03-27 21:47:05', '2025-03-27 21:47:05'),
(288, 86, 32, 3, 279.33, '2025-03-12 21:47:05', '2025-03-12 21:47:05'),
(289, 86, 10, 5, 850.25, '2025-03-12 21:47:05', '2025-03-12 21:47:05'),
(290, 86, 4, 2, 245.88, '2025-03-12 21:47:05', '2025-03-12 21:47:05'),
(291, 86, 28, 5, 508.1, '2025-03-12 21:47:05', '2025-03-12 21:47:05'),
(292, 87, 21, 3, 527.76, '2025-05-22 21:47:05', '2025-05-22 21:47:05'),
(293, 87, 14, 2, 221.5, '2025-05-22 21:47:05', '2025-05-22 21:47:05'),
(294, 87, 12, 5, 586.3, '2025-05-22 21:47:05', '2025-05-22 21:47:05'),
(295, 88, 16, 2, 154.68, '2024-10-09 21:47:05', '2024-10-09 21:47:05'),
(296, 88, 33, 1, 24.17, '2024-10-09 21:47:05', '2024-10-09 21:47:05'),
(297, 89, 4, 3, 368.82, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(298, 89, 12, 1, 117.26, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(299, 90, 35, 4, 670.68, '2025-02-21 21:47:05', '2025-02-21 21:47:05'),
(300, 91, 21, 1, 175.92, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(301, 92, 32, 3, 279.33, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(302, 93, 18, 3, 150.81, '2024-11-29 21:47:05', '2024-11-29 21:47:05'),
(303, 94, 11, 1, 196.34, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(304, 94, 24, 4, 81.44, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(305, 94, 6, 5, 177.2, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(306, 94, 9, 1, 90.75, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(307, 94, 21, 5, 879.6, '2024-12-26 21:47:05', '2024-12-26 21:47:05'),
(308, 95, 20, 5, 717.7, '2025-06-01 21:47:05', '2025-06-01 21:47:05'),
(309, 95, 17, 4, 215.0, '2025-06-01 21:47:05', '2025-06-01 21:47:05'),
(310, 96, 8, 2, 245.66, '2024-11-17 21:47:05', '2024-11-17 21:47:05'),
(311, 96, 26, 3, 194.28, '2024-11-17 21:47:05', '2024-11-17 21:47:05'),
(312, 96, 28, 4, 406.48, '2024-11-17 21:47:05', '2024-11-17 21:47:05'),
(313, 96, 15, 2, 120.64, '2024-11-17 21:47:05', '2024-11-17 21:47:05'),
(314, 97, 35, 4, 670.68, '2025-04-28 21:47:05', '2025-04-28 21:47:05'),
(315, 98, 28, 3, 304.86, '2025-01-01 21:47:05', '2025-01-01 21:47:05'),
(316, 98, 5, 5, 362.4, '2025-01-01 21:47:05', '2025-01-01 21:47:05'),
(317, 98, 21, 5, 879.6, '2025-01-01 21:47:05', '2025-01-01 21:47:05'),
(318, 98, 3, 4, 783.24, '2025-01-01 21:47:05', '2025-01-01 21:47:05'),
(319, 99, 20, 4, 574.16, '2024-12-07 21:47:05', '2024-12-07 21:47:05'),
(320, 100, 6, 4, 141.76, '2025-06-23 21:47:05', '2025-06-23 21:47:05'),
(321, 101, 34, 3, 267.63, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(322, 101, 33, 4, 96.68, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(323, 101, 36, 1, 143.39, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(324, 101, 7, 4, 111.4, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(325, 101, 35, 2, 335.34, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(326, 102, 23, 1, 178.16, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(327, 102, 6, 5, 177.2, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(328, 102, 34, 4, 356.84, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(329, 102, 27, 3, 461.64, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(330, 102, 3, 4, 783.24, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(331, 103, 34, 4, 356.84, '2024-07-08 21:47:05', '2024-07-08 21:47:05'),
(332, 103, 3, 2, 391.62, '2024-07-08 21:47:05', '2024-07-08 21:47:05'),
(333, 104, 13, 3, 206.04, '2024-12-14 21:47:05', '2024-12-14 21:47:05'),
(334, 104, 30, 1, 112.91, '2024-12-14 21:47:05', '2024-12-14 21:47:05'),
(335, 105, 26, 5, 323.8, '2025-04-28 21:47:05', '2025-04-28 21:47:05'),
(336, 106, 19, 1, 55.87, '2025-02-27 21:47:05', '2025-02-27 21:47:05'),
(337, 106, 36, 3, 430.17, '2025-02-27 21:47:05', '2025-02-27 21:47:05'),
(338, 106, 14, 4, 443.0, '2025-02-27 21:47:05', '2025-02-27 21:47:05'),
(339, 107, 34, 5, 446.05, '2025-02-26 21:47:05', '2025-02-26 21:47:05'),
(340, 107, 33, 3, 72.51, '2025-02-26 21:47:05', '2025-02-26 21:47:05'),
(341, 107, 27, 4, 615.52, '2025-02-26 21:47:05', '2025-02-26 21:47:05'),
(342, 107, 29, 1, 130.19, '2025-02-26 21:47:05', '2025-02-26 21:47:05'),
(343, 108, 23, 3, 534.48, '2025-04-25 21:47:05', '2025-04-25 21:47:05'),
(344, 109, 4, 3, 368.82, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(345, 109, 29, 5, 650.95, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(346, 109, 14, 3, 332.25, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(347, 109, 10, 4, 680.2, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(348, 109, 2, 3, 296.7, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(349, 110, 2, 5, 494.5, '2024-10-17 21:47:05', '2024-10-17 21:47:05'),
(350, 110, 13, 4, 274.72, '2024-10-17 21:47:05', '2024-10-17 21:47:05'),
(351, 111, 19, 1, 55.87, '2025-03-31 21:47:05', '2025-03-31 21:47:05'),
(352, 111, 36, 2, 286.78, '2025-03-31 21:47:05', '2025-03-31 21:47:05'),
(353, 111, 31, 3, 125.52, '2025-03-31 21:47:05', '2025-03-31 21:47:05'),
(354, 112, 2, 5, 494.5, '2025-01-01 21:47:05', '2025-01-01 21:47:05'),
(355, 112, 4, 1, 122.94, '2025-01-01 21:47:05', '2025-01-01 21:47:05'),
(356, 112, 22, 5, 912.4, '2025-01-01 21:47:05', '2025-01-01 21:47:05'),
(357, 113, 16, 1, 77.34, '2024-11-13 21:47:05', '2024-11-13 21:47:05'),
(358, 113, 34, 4, 356.84, '2024-11-13 21:47:05', '2024-11-13 21:47:05'),
(359, 113, 33, 2, 48.34, '2024-11-13 21:47:05', '2024-11-13 21:47:05'),
(360, 113, 31, 1, 41.84, '2024-11-13 21:47:05', '2024-11-13 21:47:05'),
(361, 114, 2, 2, 197.8, '2025-04-09 21:47:05', '2025-04-09 21:47:05'),
(362, 115, 32, 3, 279.33, '2025-05-22 21:47:05', '2025-05-22 21:47:05'),
(363, 116, 27, 2, 307.76, '2025-03-16 21:47:05', '2025-03-16 21:47:05'),
(364, 116, 25, 3, 69.81, '2025-03-16 21:47:05', '2025-03-16 21:47:05'),
(365, 116, 10, 1, 170.05, '2025-03-16 21:47:05', '2025-03-16 21:47:05'),
(366, 117, 10, 1, 170.05, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(367, 117, 29, 2, 260.38, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(368, 117, 21, 2, 351.84, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(369, 118, 24, 4, 81.44, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(370, 119, 3, 1, 195.81, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(371, 119, 17, 3, 161.25, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(372, 119, 7, 1, 27.85, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(373, 119, 34, 4, 356.84, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(374, 119, 11, 4, 785.36, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(375, 120, 9, 3, 272.25, '2025-03-10 21:47:05', '2025-03-10 21:47:05'),
(376, 120, 32, 4, 372.44, '2025-03-10 21:47:05', '2025-03-10 21:47:05'),
(377, 121, 6, 5, 177.2, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(378, 121, 21, 3, 527.76, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(379, 121, 9, 3, 272.25, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(380, 121, 31, 3, 125.52, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(381, 122, 10, 4, 680.2, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(382, 122, 17, 2, 107.5, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(383, 122, 35, 4, 670.68, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(384, 122, 26, 1, 64.76, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(385, 122, 13, 3, 206.04, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(386, 123, 3, 2, 391.62, '2025-05-19 21:47:05', '2025-05-19 21:47:05'),
(387, 123, 10, 5, 850.25, '2025-05-19 21:47:05', '2025-05-19 21:47:05'),
(388, 123, 25, 4, 93.08, '2025-05-19 21:47:05', '2025-05-19 21:47:05'),
(389, 123, 8, 1, 122.83, '2025-05-19 21:47:05', '2025-05-19 21:47:05'),
(390, 123, 17, 4, 215.0, '2025-05-19 21:47:05', '2025-05-19 21:47:05'),
(391, 124, 8, 5, 614.15, '2025-06-20 21:47:05', '2025-06-20 21:47:05'),
(392, 124, 7, 2, 55.7, '2025-06-20 21:47:05', '2025-06-20 21:47:05'),
(393, 124, 9, 3, 272.25, '2025-06-20 21:47:05', '2025-06-20 21:47:05'),
(394, 124, 21, 4, 703.68, '2025-06-20 21:47:05', '2025-06-20 21:47:05'),
(395, 124, 25, 4, 93.08, '2025-06-20 21:47:05', '2025-06-20 21:47:05'),
(396, 125, 15, 1, 60.32, '2025-01-08 21:47:05', '2025-01-08 21:47:05'),
(397, 126, 7, 2, 55.7, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(398, 126, 20, 3, 430.62, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(399, 126, 1, 1, 112.01, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(400, 126, 22, 4, 729.92, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(401, 126, 6, 5, 177.2, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(402, 127, 24, 4, 81.44, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(403, 127, 27, 4, 615.52, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(404, 127, 1, 1, 112.01, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(405, 127, 18, 3, 150.81, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(406, 127, 4, 5, 614.7, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(407, 128, 7, 4, 111.4, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(408, 128, 17, 3, 161.25, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(409, 129, 31, 1, 41.84, '2025-03-09 21:47:05', '2025-03-09 21:47:05'),
(410, 129, 18, 2, 100.54, '2025-03-09 21:47:05', '2025-03-09 21:47:05'),
(411, 129, 4, 2, 245.88, '2025-03-09 21:47:05', '2025-03-09 21:47:05'),
(412, 130, 15, 4, 241.28, '2024-10-28 21:47:05', '2024-10-28 21:47:05'),
(413, 130, 16, 3, 232.02, '2024-10-28 21:47:05', '2024-10-28 21:47:05'),
(414, 130, 7, 1, 27.85, '2024-10-28 21:47:05', '2024-10-28 21:47:05'),
(415, 130, 26, 1, 64.76, '2024-10-28 21:47:05', '2024-10-28 21:47:05'),
(416, 130, 19, 4, 223.48, '2024-10-28 21:47:05', '2024-10-28 21:47:05'),
(417, 131, 15, 4, 241.28, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(418, 131, 5, 2, 144.96, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(419, 131, 36, 1, 143.39, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(420, 132, 27, 1, 153.88, '2025-01-12 21:47:05', '2025-01-12 21:47:05'),
(421, 132, 7, 4, 111.4, '2025-01-12 21:47:05', '2025-01-12 21:47:05'),
(422, 132, 11, 3, 589.02, '2025-01-12 21:47:05', '2025-01-12 21:47:05'),
(423, 133, 26, 5, 323.8, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(424, 133, 30, 5, 564.55, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(425, 133, 20, 5, 717.7, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(426, 133, 36, 3, 430.17, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(427, 133, 25, 5, 116.35, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(428, 134, 26, 4, 259.04, '2024-08-04 21:47:05', '2024-08-04 21:47:05'),
(429, 134, 7, 4, 111.4, '2024-08-04 21:47:05', '2024-08-04 21:47:05'),
(430, 135, 21, 1, 175.92, '2025-03-04 21:47:05', '2025-03-04 21:47:05'),
(431, 135, 20, 1, 143.54, '2025-03-04 21:47:05', '2025-03-04 21:47:05'),
(432, 135, 13, 4, 274.72, '2025-03-04 21:47:05', '2025-03-04 21:47:05'),
(433, 135, 3, 1, 195.81, '2025-03-04 21:47:05', '2025-03-04 21:47:05'),
(434, 136, 2, 3, 296.7, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(435, 136, 11, 3, 589.02, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(436, 136, 6, 5, 177.2, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(437, 136, 18, 4, 201.08, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(438, 136, 19, 4, 223.48, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(439, 137, 27, 4, 615.52, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(440, 137, 22, 1, 182.48, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(441, 137, 24, 2, 40.72, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(442, 137, 11, 2, 392.68, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(443, 137, 15, 3, 180.96, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(444, 138, 26, 5, 323.8, '2025-05-23 21:47:05', '2025-05-23 21:47:05'),
(445, 138, 23, 4, 712.64, '2025-05-23 21:47:05', '2025-05-23 21:47:05'),
(446, 138, 14, 4, 443.0, '2025-05-23 21:47:05', '2025-05-23 21:47:05'),
(447, 138, 25, 2, 46.54, '2025-05-23 21:47:05', '2025-05-23 21:47:05'),
(448, 139, 18, 2, 100.54, '2025-03-24 21:47:05', '2025-03-24 21:47:05'),
(449, 139, 33, 2, 48.34, '2025-03-24 21:47:05', '2025-03-24 21:47:05'),
(450, 140, 10, 5, 850.25, '2025-04-12 21:47:05', '2025-04-12 21:47:05'),
(451, 140, 31, 4, 167.36, '2025-04-12 21:47:05', '2025-04-12 21:47:05'),
(452, 141, 13, 1, 68.68, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(453, 141, 8, 3, 368.49, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(454, 141, 31, 3, 125.52, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(455, 141, 25, 5, 116.35, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(456, 141, 29, 1, 130.19, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(457, 142, 8, 1, 122.83, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(458, 143, 26, 5, 323.8, '2025-05-17 21:47:05', '2025-05-17 21:47:05'),
(459, 143, 20, 4, 574.16, '2025-05-17 21:47:05', '2025-05-17 21:47:05'),
(460, 143, 14, 1, 110.75, '2025-05-17 21:47:05', '2025-05-17 21:47:05'),
(461, 144, 15, 3, 180.96, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(462, 145, 10, 2, 340.1, '2025-01-19 21:47:05', '2025-01-19 21:47:05'),
(463, 145, 24, 4, 81.44, '2025-01-19 21:47:05', '2025-01-19 21:47:05'),
(464, 145, 21, 1, 175.92, '2025-01-19 21:47:05', '2025-01-19 21:47:05'),
(465, 145, 9, 1, 90.75, '2025-01-19 21:47:05', '2025-01-19 21:47:05'),
(466, 145, 4, 1, 122.94, '2025-01-19 21:47:05', '2025-01-19 21:47:05'),
(467, 146, 5, 3, 217.44, '2025-04-25 21:47:05', '2025-04-25 21:47:05'),
(468, 146, 27, 5, 769.4, '2025-04-25 21:47:05', '2025-04-25 21:47:05'),
(469, 146, 30, 5, 564.55, '2025-04-25 21:47:05', '2025-04-25 21:47:05'),
(470, 146, 13, 1, 68.68, '2025-04-25 21:47:05', '2025-04-25 21:47:05'),
(471, 147, 33, 5, 120.85, '2025-04-12 21:47:05', '2025-04-12 21:47:05'),
(472, 147, 9, 5, 453.75, '2025-04-12 21:47:05', '2025-04-12 21:47:05'),
(473, 147, 13, 1, 68.68, '2025-04-12 21:47:05', '2025-04-12 21:47:05'),
(474, 147, 34, 5, 446.05, '2025-04-12 21:47:05', '2025-04-12 21:47:05'),
(475, 147, 20, 4, 574.16, '2025-04-12 21:47:05', '2025-04-12 21:47:05'),
(476, 148, 17, 1, 53.75, '2025-04-16 21:47:05', '2025-04-16 21:47:05'),
(477, 149, 27, 5, 769.4, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(478, 149, 5, 5, 362.4, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(479, 149, 9, 2, 181.5, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(480, 150, 26, 2, 129.52, '2024-09-22 21:47:05', '2024-09-22 21:47:05'),
(481, 150, 19, 1, 55.87, '2024-09-22 21:47:05', '2024-09-22 21:47:05'),
(482, 150, 8, 2, 245.66, '2024-09-22 21:47:05', '2024-09-22 21:47:05'),
(483, 150, 31, 2, 83.68, '2024-09-22 21:47:05', '2024-09-22 21:47:05'),
(484, 150, 25, 4, 93.08, '2024-09-22 21:47:05', '2024-09-22 21:47:05'),
(485, 151, 13, 2, 137.36, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(486, 151, 21, 2, 351.84, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(487, 151, 5, 2, 144.96, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(488, 151, 27, 5, 769.4, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(489, 151, 30, 1, 112.91, '2025-03-01 21:47:05', '2025-03-01 21:47:05'),
(490, 152, 10, 2, 340.1, '2025-02-18 21:47:05', '2025-02-18 21:47:05'),
(491, 152, 26, 4, 259.04, '2025-02-18 21:47:05', '2025-02-18 21:47:05'),
(492, 152, 30, 5, 564.55, '2025-02-18 21:47:05', '2025-02-18 21:47:05'),
(493, 152, 7, 3, 83.55, '2025-02-18 21:47:05', '2025-02-18 21:47:05'),
(494, 152, 12, 5, 586.3, '2025-02-18 21:47:05', '2025-02-18 21:47:05'),
(495, 153, 27, 5, 769.4, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(496, 153, 17, 3, 161.25, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(497, 154, 5, 2, 144.96, '2025-01-07 21:47:05', '2025-01-07 21:47:05'),
(498, 155, 36, 3, 430.17, '2024-10-12 21:47:05', '2024-10-12 21:47:05'),
(499, 155, 32, 3, 279.33, '2024-10-12 21:47:05', '2024-10-12 21:47:05'),
(500, 155, 31, 5, 209.2, '2024-10-12 21:47:05', '2024-10-12 21:47:05'),
(501, 156, 4, 3, 368.82, '2024-07-27 21:47:05', '2024-07-27 21:47:05'),
(502, 156, 11, 4, 785.36, '2024-07-27 21:47:05', '2024-07-27 21:47:05'),
(503, 156, 23, 2, 356.32, '2024-07-27 21:47:05', '2024-07-27 21:47:05'),
(504, 156, 7, 4, 111.4, '2024-07-27 21:47:05', '2024-07-27 21:47:05'),
(505, 156, 10, 2, 340.1, '2024-07-27 21:47:05', '2024-07-27 21:47:05'),
(506, 157, 14, 5, 553.75, '2024-11-11 21:47:05', '2024-11-11 21:47:05'),
(507, 158, 21, 5, 879.6, '2025-05-25 21:47:05', '2025-05-25 21:47:05'),
(508, 158, 23, 2, 356.32, '2025-05-25 21:47:05', '2025-05-25 21:47:05'),
(509, 158, 32, 5, 465.55, '2025-05-25 21:47:05', '2025-05-25 21:47:05'),
(510, 158, 30, 3, 338.73, '2025-05-25 21:47:05', '2025-05-25 21:47:05'),
(511, 158, 15, 4, 241.28, '2025-05-25 21:47:05', '2025-05-25 21:47:05'),
(512, 159, 29, 2, 260.38, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(513, 159, 18, 4, 201.08, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(514, 159, 6, 4, 141.76, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(515, 160, 26, 3, 194.28, '2024-10-07 21:47:05', '2024-10-07 21:47:05'),
(516, 160, 30, 5, 564.55, '2024-10-07 21:47:05', '2024-10-07 21:47:05'),
(517, 160, 28, 3, 304.86, '2024-10-07 21:47:05', '2024-10-07 21:47:05'),
(518, 161, 3, 2, 391.62, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(519, 161, 24, 3, 61.08, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(520, 161, 26, 5, 323.8, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(521, 161, 16, 2, 154.68, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(522, 161, 33, 5, 120.85, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(523, 162, 34, 4, 356.84, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(524, 162, 13, 3, 206.04, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(525, 162, 6, 3, 106.32, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(526, 162, 11, 5, 981.7, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(527, 163, 1, 1, 112.01, '2025-04-27 21:47:05', '2025-04-27 21:47:05'),
(528, 163, 5, 5, 362.4, '2025-04-27 21:47:05', '2025-04-27 21:47:05'),
(529, 164, 28, 4, 406.48, '2025-04-05 21:47:05', '2025-04-05 21:47:05'),
(530, 165, 21, 1, 175.92, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(531, 165, 23, 1, 178.16, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(532, 166, 17, 2, 107.5, '2025-04-30 21:47:05', '2025-04-30 21:47:05'),
(533, 166, 9, 4, 363.0, '2025-04-30 21:47:05', '2025-04-30 21:47:05'),
(534, 166, 28, 1, 101.62, '2025-04-30 21:47:05', '2025-04-30 21:47:05'),
(535, 166, 12, 4, 469.04, '2025-04-30 21:47:05', '2025-04-30 21:47:05'),
(536, 166, 14, 2, 221.5, '2025-04-30 21:47:05', '2025-04-30 21:47:05'),
(537, 167, 15, 3, 180.96, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(538, 167, 1, 2, 224.02, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(539, 167, 13, 4, 274.72, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(540, 167, 18, 3, 150.81, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(541, 167, 10, 2, 340.1, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(542, 168, 8, 4, 491.32, '2025-06-24 21:47:05', '2025-06-24 21:47:05'),
(543, 168, 27, 5, 769.4, '2025-06-24 21:47:05', '2025-06-24 21:47:05'),
(544, 168, 26, 4, 259.04, '2025-06-24 21:47:05', '2025-06-24 21:47:05'),
(545, 168, 15, 5, 301.6, '2025-06-24 21:47:05', '2025-06-24 21:47:05'),
(546, 168, 28, 4, 406.48, '2025-06-24 21:47:05', '2025-06-24 21:47:05'),
(547, 169, 24, 4, 81.44, '2024-09-02 21:47:05', '2024-09-02 21:47:05'),
(548, 169, 18, 1, 50.27, '2024-09-02 21:47:05', '2024-09-02 21:47:05'),
(549, 169, 17, 4, 215.0, '2024-09-02 21:47:05', '2024-09-02 21:47:05'),
(550, 170, 35, 3, 503.01, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(551, 171, 27, 2, 307.76, '2025-03-19 21:47:05', '2025-03-19 21:47:05'),
(552, 171, 20, 3, 430.62, '2025-03-19 21:47:05', '2025-03-19 21:47:05'),
(553, 171, 10, 1, 170.05, '2025-03-19 21:47:05', '2025-03-19 21:47:05'),
(554, 171, 11, 1, 196.34, '2025-03-19 21:47:05', '2025-03-19 21:47:05'),
(555, 172, 27, 3, 461.64, '2025-06-21 21:47:05', '2025-06-21 21:47:05'),
(556, 172, 7, 3, 83.55, '2025-06-21 21:47:05', '2025-06-21 21:47:05'),
(557, 172, 13, 2, 137.36, '2025-06-21 21:47:05', '2025-06-21 21:47:05'),
(558, 172, 8, 2, 245.66, '2025-06-21 21:47:05', '2025-06-21 21:47:05'),
(559, 172, 22, 2, 364.96, '2025-06-21 21:47:05', '2025-06-21 21:47:05'),
(560, 173, 29, 1, 130.19, '2025-06-22 21:47:05', '2025-06-22 21:47:05'),
(561, 173, 20, 3, 430.62, '2025-06-22 21:47:05', '2025-06-22 21:47:05'),
(562, 173, 16, 4, 309.36, '2025-06-22 21:47:05', '2025-06-22 21:47:05'),
(563, 173, 23, 4, 712.64, '2025-06-22 21:47:05', '2025-06-22 21:47:05'),
(564, 174, 6, 2, 70.88, '2024-10-12 21:47:05', '2024-10-12 21:47:05'),
(565, 175, 29, 1, 130.19, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(566, 175, 35, 4, 670.68, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(567, 175, 36, 3, 430.17, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(568, 175, 12, 5, 586.3, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(569, 176, 33, 3, 72.51, '2025-02-24 21:47:05', '2025-02-24 21:47:05'),
(570, 176, 1, 2, 224.02, '2025-02-24 21:47:05', '2025-02-24 21:47:05'),
(571, 176, 31, 2, 83.68, '2025-02-24 21:47:05', '2025-02-24 21:47:05'),
(572, 176, 8, 5, 614.15, '2025-02-24 21:47:05', '2025-02-24 21:47:05'),
(573, 176, 35, 2, 335.34, '2025-02-24 21:47:05', '2025-02-24 21:47:05'),
(574, 177, 21, 5, 879.6, '2025-05-11 21:47:05', '2025-05-11 21:47:05'),
(575, 178, 6, 3, 106.32, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(576, 178, 7, 3, 83.55, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(577, 178, 13, 4, 274.72, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(578, 178, 29, 4, 520.76, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(579, 178, 36, 2, 286.78, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(580, 179, 1, 1, 112.01, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(581, 179, 36, 3, 430.17, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(582, 179, 23, 2, 356.32, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(583, 179, 34, 2, 178.42, '2025-04-01 21:47:05', '2025-04-01 21:47:05'),
(584, 180, 1, 3, 336.03, '2025-06-05 21:47:05', '2025-06-05 21:47:05'),
(585, 181, 32, 1, 93.11, '2025-01-28 21:47:05', '2025-01-28 21:47:05'),
(586, 182, 7, 2, 55.7, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(587, 182, 22, 2, 364.96, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(588, 182, 26, 5, 323.8, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(589, 182, 4, 4, 491.76, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(590, 183, 33, 4, 96.68, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(591, 183, 26, 4, 259.04, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(592, 183, 7, 2, 55.7, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(593, 183, 35, 1, 167.67, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(594, 183, 17, 5, 268.75, '2025-05-18 21:47:05', '2025-05-18 21:47:05'),
(595, 184, 19, 3, 167.61, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(596, 184, 20, 3, 430.62, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(597, 184, 18, 3, 150.81, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(598, 184, 21, 1, 175.92, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(599, 184, 30, 1, 112.91, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(600, 185, 25, 3, 69.81, '2025-01-07 21:47:05', '2025-01-07 21:47:05'),
(601, 185, 22, 4, 729.92, '2025-01-07 21:47:05', '2025-01-07 21:47:05'),
(602, 186, 16, 5, 386.7, '2024-12-20 21:47:05', '2024-12-20 21:47:05'),
(603, 186, 22, 3, 547.44, '2024-12-20 21:47:05', '2024-12-20 21:47:05'),
(604, 186, 33, 5, 120.85, '2024-12-20 21:47:05', '2024-12-20 21:47:05'),
(605, 187, 21, 5, 879.6, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(606, 187, 29, 1, 130.19, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(607, 187, 33, 4, 96.68, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(608, 187, 15, 4, 241.28, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(609, 187, 32, 5, 465.55, '2025-01-21 21:47:05', '2025-01-21 21:47:05'),
(610, 188, 4, 4, 491.76, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(611, 188, 29, 4, 520.76, '2025-04-03 21:47:05', '2025-04-03 21:47:05'),
(612, 189, 32, 4, 372.44, '2025-03-07 21:47:05', '2025-03-07 21:47:05'),
(613, 190, 21, 5, 879.6, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(614, 190, 19, 3, 167.61, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(615, 190, 1, 2, 224.02, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(616, 190, 16, 5, 386.7, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(617, 190, 13, 3, 206.04, '2025-02-17 21:47:05', '2025-02-17 21:47:05'),
(618, 191, 21, 3, 527.76, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(619, 191, 13, 1, 68.68, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(620, 191, 11, 3, 589.02, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(621, 191, 30, 5, 564.55, '2024-12-23 21:47:05', '2024-12-23 21:47:05'),
(622, 192, 9, 1, 90.75, '2025-01-15 21:47:05', '2025-01-15 21:47:05'),
(623, 192, 16, 3, 232.02, '2025-01-15 21:47:05', '2025-01-15 21:47:05'),
(624, 193, 21, 2, 351.84, '2025-05-01 21:47:05', '2025-05-01 21:47:05'),
(625, 193, 24, 1, 20.36, '2025-05-01 21:47:05', '2025-05-01 21:47:05'),
(626, 193, 23, 1, 178.16, '2025-05-01 21:47:05', '2025-05-01 21:47:05'),
(627, 194, 27, 3, 461.64, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(628, 194, 20, 5, 717.7, '2025-01-25 21:47:05', '2025-01-25 21:47:05'),
(629, 195, 36, 5, 716.95, '2025-04-21 21:47:05', '2025-04-21 21:47:05'),
(630, 196, 2, 2, 197.8, '2024-10-06 21:47:05', '2024-10-06 21:47:05'),
(631, 196, 29, 2, 260.38, '2024-10-06 21:47:05', '2024-10-06 21:47:05'),
(632, 196, 26, 5, 323.8, '2024-10-06 21:47:05', '2024-10-06 21:47:05'),
(633, 197, 27, 3, 461.64, '2024-12-01 21:47:05', '2024-12-01 21:47:05'),
(634, 197, 36, 3, 430.17, '2024-12-01 21:47:05', '2024-12-01 21:47:05'),
(635, 197, 23, 3, 534.48, '2024-12-01 21:47:05', '2024-12-01 21:47:05'),
(636, 198, 27, 1, 153.88, '2025-05-13 21:47:05', '2025-05-13 21:47:05'),
(637, 198, 14, 4, 443.0, '2025-05-13 21:47:05', '2025-05-13 21:47:05'),
(638, 199, 9, 5, 453.75, '2025-02-05 21:47:05', '2025-02-05 21:47:05'),
(639, 199, 32, 5, 465.55, '2025-02-05 21:47:05', '2025-02-05 21:47:05'),
(640, 200, 12, 5, 586.3, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(641, 200, 16, 1, 77.34, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(642, 200, 26, 2, 129.52, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(643, 200, 25, 2, 46.54, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(644, 200, 10, 2, 340.1, '2025-06-12 21:47:05', '2025-06-12 21:47:05'),
(645, 201, 26, 5, 323.8, '2024-10-26 21:47:05', '2024-10-26 21:47:05'),
(646, 202, 7, 2, 55.7, '2024-09-20 21:47:05', '2024-09-20 21:47:05'),
(647, 202, 12, 3, 351.78, '2024-09-20 21:47:05', '2024-09-20 21:47:05'),
(648, 202, 3, 3, 587.43, '2024-09-20 21:47:05', '2024-09-20 21:47:05'),
(649, 203, 25, 5, 116.35, '2024-11-03 21:47:05', '2024-11-03 21:47:05'),
(650, 204, 25, 1, 23.27, '2024-12-16 21:47:05', '2024-12-16 21:47:05'),
(651, 204, 10, 2, 340.1, '2024-12-16 21:47:05', '2024-12-16 21:47:05'),
(652, 204, 8, 2, 245.66, '2024-12-16 21:47:05', '2024-12-16 21:47:05'),
(653, 204, 1, 4, 448.04, '2024-12-16 21:47:05', '2024-12-16 21:47:05'),
(654, 204, 22, 1, 182.48, '2024-12-16 21:47:05', '2024-12-16 21:47:05'),
(655, 205, 29, 3, 390.57, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(656, 205, 18, 5, 251.35, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(657, 205, 12, 5, 586.3, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(658, 205, 30, 3, 338.73, '2025-05-10 21:47:05', '2025-05-10 21:47:05'),
(659, 206, 10, 1, 170.05, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(660, 206, 4, 1, 122.94, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(661, 206, 26, 2, 129.52, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(662, 206, 13, 4, 274.72, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(663, 206, 11, 5, 981.7, '2025-05-16 21:47:05', '2025-05-16 21:47:05'),
(664, 207, 24, 4, 81.44, '2025-05-08 21:47:05', '2025-05-08 21:47:05'),
(665, 207, 33, 4, 96.68, '2025-05-08 21:47:05', '2025-05-08 21:47:05'),
(666, 207, 21, 1, 175.92, '2025-05-08 21:47:05', '2025-05-08 21:47:05'),
(667, 207, 9, 5, 453.75, '2025-05-08 21:47:05', '2025-05-08 21:47:05'),
(668, 208, 17, 2, 107.5, '2024-11-15 21:47:05', '2024-11-15 21:47:05'),
(669, 208, 22, 4, 729.92, '2024-11-15 21:47:05', '2024-11-15 21:47:05'),
(670, 209, 35, 4, 670.68, '2025-02-14 21:47:05', '2025-02-14 21:47:05'),
(671, 209, 17, 4, 215.0, '2025-02-14 21:47:05', '2025-02-14 21:47:05'),
(672, 209, 1, 1, 112.01, '2025-02-14 21:47:05', '2025-02-14 21:47:05'),
(673, 209, 29, 4, 520.76, '2025-02-14 21:47:05', '2025-02-14 21:47:05'),
(674, 209, 18, 1, 50.27, '2025-02-14 21:47:05', '2025-02-14 21:47:05'),
(675, 210, 20, 5, 717.7, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(676, 210, 10, 2, 340.1, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(677, 210, 26, 4, 259.04, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(678, 210, 34, 1, 89.21, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(679, 210, 4, 4, 491.76, '2025-05-04 21:47:05', '2025-05-04 21:47:05'),
(680, 211, 13, 1, 68.68, '2025-04-13 21:47:05', '2025-04-13 21:47:05'),
(681, 211, 32, 3, 279.33, '2025-04-13 21:47:05', '2025-04-13 21:47:05'),
(682, 211, 5, 4, 289.92, '2025-04-13 21:47:05', '2025-04-13 21:47:05'),
(683, 212, 26, 5, 323.8, '2025-02-14 21:47:05', '2025-02-14 21:47:05'),
(684, 213, 12, 2, 234.52, '2025-05-08 21:47:05', '2025-05-08 21:47:05'),
(685, 214, 26, 5, 323.8, '2025-05-02 21:47:05', '2025-05-02 21:47:05'),
(686, 215, 29, 4, 520.76, '2025-05-21 21:47:05', '2025-05-21 21:47:05'),
(687, 215, 1, 4, 448.04, '2025-05-21 21:47:05', '2025-05-21 21:47:05'),
(688, 215, 8, 1, 122.83, '2025-05-21 21:47:05', '2025-05-21 21:47:05'),
(689, 215, 31, 3, 125.52, '2025-05-21 21:47:05', '2025-05-21 21:47:05'),
(690, 215, 33, 2, 48.34, '2025-05-21 21:47:05', '2025-05-21 21:47:05'),
(691, 216, 19, 3, 167.61, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(692, 216, 4, 4, 491.76, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(693, 216, 15, 5, 301.6, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(694, 216, 28, 4, 406.48, '2025-06-17 21:47:05', '2025-06-17 21:47:05'),
(695, 217, 21, 1, 175.92, '2025-06-01 21:47:05', '2025-06-01 21:47:05'),
(696, 218, 32, 1, 93.11, '2025-04-11 21:47:05', '2025-04-11 21:47:05'),
(697, 219, 19, 2, 111.74, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(698, 219, 31, 5, 209.2, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(699, 219, 11, 2, 392.68, '2025-05-20 21:47:05', '2025-05-20 21:47:05'),
(700, 220, 31, 3, 125.52, '2025-04-20 21:47:05', '2025-04-20 21:47:05'),
(701, 220, 18, 2, 100.54, '2025-04-20 21:47:05', '2025-04-20 21:47:05'),
(702, 220, 30, 5, 564.55, '2025-04-20 21:47:05', '2025-04-20 21:47:05'),
(703, 221, 11, 5, 981.7, '2025-02-20 21:47:05', '2025-02-20 21:47:05'),
(704, 221, 23, 3, 534.48, '2025-02-20 21:47:05', '2025-02-20 21:47:05'),
(705, 221, 10, 2, 340.1, '2025-02-20 21:47:05', '2025-02-20 21:47:05'),
(706, 222, 23, 4, 712.64, '2025-05-06 21:47:05', '2025-05-06 21:47:05'),
(707, 223, 30, 4, 451.64, '2025-06-24 21:47:05', '2025-06-24 21:47:05'),
(708, 223, 15, 4, 241.28, '2025-06-24 21:47:05', '2025-06-24 21:47:05'),
(709, 224, 1, 4, 448.04, '2025-03-03 21:47:05', '2025-03-03 21:47:05'),
(710, 224, 34, 3, 267.63, '2025-03-03 21:47:05', '2025-03-03 21:47:05'),
(711, 224, 21, 5, 879.6, '2025-03-03 21:47:05', '2025-03-03 21:47:05'),
(712, 224, 22, 1, 182.48, '2025-03-03 21:47:05', '2025-03-03 21:47:05'),
(713, 225, 18, 3, 150.81, '2024-09-28 21:47:05', '2024-09-28 21:47:05'),
(714, 225, 3, 5, 979.05, '2024-09-28 21:47:05', '2024-09-28 21:47:05'),
(715, 225, 33, 4, 96.68, '2024-09-28 21:47:05', '2024-09-28 21:47:05'),
(716, 226, 17, 5, 268.75, '2025-04-18 21:47:05', '2025-04-18 21:47:05'),
(717, 226, 22, 4, 729.92, '2025-04-18 21:47:05', '2025-04-18 21:47:05'),
(718, 226, 2, 2, 197.8, '2025-04-18 21:47:05', '2025-04-18 21:47:05'),
(719, 227, 29, 1, 130.19, '2024-10-05 21:47:05', '2024-10-05 21:47:05'),
(720, 227, 7, 1, 27.85, '2024-10-05 21:47:05', '2024-10-05 21:47:05'),
(721, 228, 33, 2, 48.34, '2025-05-02 21:47:05', '2025-05-02 21:47:05'),
(722, 228, 36, 3, 430.17, '2025-05-02 21:47:05', '2025-05-02 21:47:05'),
(723, 228, 21, 5, 879.6, '2025-05-02 21:47:05', '2025-05-02 21:47:05'),
(724, 228, 15, 4, 241.28, '2025-05-02 21:47:05', '2025-05-02 21:47:05'),
(725, 229, 18, 1, 50.27, '2024-07-28 21:47:05', '2024-07-28 21:47:05'),
(726, 229, 35, 2, 335.34, '2024-07-28 21:47:05', '2024-07-28 21:47:05'),
(727, 230, 32, 5, 465.55, '2025-03-06 21:47:05', '2025-03-06 21:47:05'),
(728, 230, 9, 5, 453.75, '2025-03-06 21:47:05', '2025-03-06 21:47:05'),
(729, 230, 1, 4, 448.04, '2025-03-06 21:47:05', '2025-03-06 21:47:05'),
(730, 230, 22, 5, 912.4, '2025-03-06 21:47:05', '2025-03-06 21:47:05'),
(731, 230, 19, 1, 55.87, '2025-03-06 21:47:05', '2025-03-06 21:47:05'),
(732, 231, 35, 5, 838.35, '2024-07-09 21:47:05', '2024-07-09 21:47:05'),
(733, 231, 18, 2, 100.54, '2024-07-09 21:47:05', '2024-07-09 21:47:05'),
(734, 231, 29, 4, 520.76, '2024-07-09 21:47:05', '2024-07-09 21:47:05'),
(735, 231, 20, 1, 143.54, '2024-07-09 21:47:05', '2024-07-09 21:47:05'),
(736, 231, 25, 4, 93.08, '2024-07-09 21:47:05', '2024-07-09 21:47:05'),
(737, 232, 28, 5, 508.1, '2024-11-11 21:47:05', '2024-11-11 21:47:05'),
(738, 232, 6, 1, 35.44, '2024-11-11 21:47:05', '2024-11-11 21:47:05'),
(739, 232, 30, 3, 338.73, '2024-11-11 21:47:05', '2024-11-11 21:47:05'),
(740, 233, 28, 5, 508.1, '2025-04-17 21:47:05', '2025-04-17 21:47:05'),
(741, 233, 33, 4, 96.68, '2025-04-17 21:47:05', '2025-04-17 21:47:05'),
(742, 233, 34, 4, 356.84, '2025-04-17 21:47:05', '2025-04-17 21:47:05'),
(743, 233, 30, 3, 338.73, '2025-04-17 21:47:05', '2025-04-17 21:47:05'),
(744, 234, 5, 2, 144.96, '2024-07-23 21:47:05', '2024-07-23 21:47:05'),
(745, 234, 16, 5, 386.7, '2024-07-23 21:47:05', '2024-07-23 21:47:05'),
(746, 234, 18, 2, 100.54, '2024-07-23 21:47:05', '2024-07-23 21:47:05'),
(747, 235, 22, 5, 912.4, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(748, 235, 5, 5, 362.4, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(749, 235, 14, 1, 110.75, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(750, 235, 17, 1, 53.75, '2025-02-06 21:47:05', '2025-02-06 21:47:05'),
(751, 236, 16, 1, 77.34, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(752, 236, 28, 3, 304.86, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(753, 236, 23, 4, 712.64, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(754, 236, 27, 5, 769.4, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(755, 237, 2, 3, 296.7, '2025-03-28 21:47:05', '2025-03-28 21:47:05'),
(756, 237, 27, 2, 307.76, '2025-03-28 21:47:05', '2025-03-28 21:47:05'),
(757, 237, 22, 1, 182.48, '2025-03-28 21:47:05', '2025-03-28 21:47:05'),
(758, 237, 17, 4, 215.0, '2025-03-28 21:47:05', '2025-03-28 21:47:05'),
(759, 238, 16, 2, 154.68, '2024-12-15 21:47:05', '2024-12-15 21:47:05'),
(760, 238, 4, 4, 491.76, '2024-12-15 21:47:05', '2024-12-15 21:47:05'),
(761, 239, 30, 1, 112.91, '2024-12-03 21:47:05', '2024-12-03 21:47:05'),
(762, 239, 23, 2, 356.32, '2024-12-03 21:47:05', '2024-12-03 21:47:05'),
(763, 239, 27, 1, 153.88, '2024-12-03 21:47:05', '2024-12-03 21:47:05'),
(764, 240, 32, 3, 279.33, '2024-10-24 21:47:05', '2024-10-24 21:47:05'),
(765, 240, 35, 3, 503.01, '2024-10-24 21:47:05', '2024-10-24 21:47:05'),
(766, 240, 4, 5, 614.7, '2024-10-24 21:47:05', '2024-10-24 21:47:05'),
(767, 240, 26, 5, 323.8, '2024-10-24 21:47:05', '2024-10-24 21:47:05'),
(768, 240, 27, 3, 461.64, '2024-10-24 21:47:05', '2024-10-24 21:47:05'),
(769, 241, 21, 5, 879.6, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(770, 241, 19, 5, 279.35, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(771, 241, 6, 2, 70.88, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(772, 241, 34, 3, 267.63, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(773, 242, 3, 5, 979.05, '2025-05-05 21:47:05', '2025-05-05 21:47:05'),
(774, 242, 21, 5, 879.6, '2025-05-05 21:47:05', '2025-05-05 21:47:05'),
(775, 242, 18, 2, 100.54, '2025-05-05 21:47:05', '2025-05-05 21:47:05'),
(776, 242, 25, 5, 116.35, '2025-05-05 21:47:05', '2025-05-05 21:47:05'),
(777, 242, 34, 3, 267.63, '2025-05-05 21:47:05', '2025-05-05 21:47:05'),
(778, 243, 6, 5, 177.2, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(779, 243, 15, 5, 301.6, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(780, 244, 2, 5, 494.5, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(781, 244, 14, 4, 443.0, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(782, 245, 28, 3, 304.86, '2025-05-24 21:47:05', '2025-05-24 21:47:05'),
(783, 245, 35, 2, 335.34, '2025-05-24 21:47:05', '2025-05-24 21:47:05'),
(784, 246, 16, 4, 309.36, '2024-11-17 21:47:05', '2024-11-17 21:47:05'),
(785, 247, 1, 5, 560.05, '2025-02-20 21:47:05', '2025-02-20 21:47:05'),
(786, 248, 16, 2, 154.68, '2024-12-21 21:47:05', '2024-12-21 21:47:05'),
(787, 248, 22, 4, 729.92, '2024-12-21 21:47:05', '2024-12-21 21:47:05'),
(788, 248, 28, 4, 406.48, '2024-12-21 21:47:05', '2024-12-21 21:47:05'),
(789, 248, 12, 1, 117.26, '2024-12-21 21:47:05', '2024-12-21 21:47:05'),
(790, 249, 23, 2, 356.32, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(791, 249, 31, 2, 83.68, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(792, 249, 14, 5, 553.75, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(793, 249, 4, 3, 368.82, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(794, 249, 9, 4, 363.0, '2025-05-07 21:47:05', '2025-05-07 21:47:05'),
(795, 250, 22, 5, 912.4, '2025-06-15 21:47:05', '2025-06-15 21:47:05'),
(796, 250, 19, 2, 111.74, '2025-06-15 21:47:05', '2025-06-15 21:47:05'),
(797, 251, 7, 5, 139.25, '2025-02-16 21:47:05', '2025-02-16 21:47:05'),
(798, 252, 30, 3, 338.73, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(799, 252, 15, 4, 241.28, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(800, 252, 34, 5, 446.05, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(801, 252, 26, 1, 64.76, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(802, 253, 15, 3, 180.96, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(803, 253, 14, 5, 553.75, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(804, 253, 12, 5, 586.3, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(805, 253, 5, 3, 217.44, '2025-06-04 21:47:05', '2025-06-04 21:47:05'),
(806, 254, 28, 5, 508.1, '2025-06-06 21:47:05', '2025-06-06 21:47:05'),
(807, 255, 18, 5, 251.35, '2024-08-20 21:47:05', '2024-08-20 21:47:05'),
(808, 255, 3, 3, 587.43, '2024-08-20 21:47:05', '2024-08-20 21:47:05'),
(809, 255, 32, 2, 186.22, '2024-08-20 21:47:05', '2024-08-20 21:47:05'),
(810, 255, 27, 1, 153.88, '2024-08-20 21:47:05', '2024-08-20 21:47:05'),
(811, 256, 33, 4, 96.68, '2024-10-26 21:47:05', '2024-10-26 21:47:05'),
(812, 256, 2, 2, 197.8, '2024-10-26 21:47:05', '2024-10-26 21:47:05'),
(813, 256, 8, 5, 614.15, '2024-10-26 21:47:05', '2024-10-26 21:47:05'),
(814, 256, 16, 2, 154.68, '2024-10-26 21:47:05', '2024-10-26 21:47:05'),
(815, 256, 32, 2, 186.22, '2024-10-26 21:47:05', '2024-10-26 21:47:05'),
(816, 257, 5, 2, 144.96, '2025-02-05 21:47:05', '2025-02-05 21:47:05'),
(817, 257, 3, 4, 783.24, '2025-02-05 21:47:05', '2025-02-05 21:47:05'),
(818, 257, 35, 3, 503.01, '2025-02-05 21:47:05', '2025-02-05 21:47:05'),
(819, 257, 2, 2, 197.8, '2025-02-05 21:47:05', '2025-02-05 21:47:05'),
(820, 257, 8, 3, 368.49, '2025-02-05 21:47:05', '2025-02-05 21:47:05'),
(821, 258, 11, 3, 589.02, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(822, 258, 33, 5, 120.85, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(823, 258, 30, 4, 451.64, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(824, 258, 5, 5, 362.4, '2025-06-11 21:47:05', '2025-06-11 21:47:05'),
(825, 259, 22, 4, 729.92, '2025-06-06 21:47:05', '2025-06-06 21:47:05'),
(826, 259, 24, 2, 40.72, '2025-06-06 21:47:05', '2025-06-06 21:47:05'),
(827, 259, 2, 5, 494.5, '2025-06-06 21:47:05', '2025-06-06 21:47:05'),
(828, 259, 21, 1, 175.92, '2025-06-06 21:47:05', '2025-06-06 21:47:05'),
(829, 260, 36, 2, 286.78, '2024-12-12 21:47:05', '2024-12-12 21:47:05'),
(830, 261, 34, 1, 89.21, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(831, 261, 33, 1, 24.17, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(832, 261, 11, 5, 981.7, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(833, 261, 5, 2, 144.96, '2025-02-09 21:47:05', '2025-02-09 21:47:05'),
(834, 262, 21, 2, 351.84, '2025-05-01 21:47:05', '2025-05-01 21:47:05'),
(835, 262, 10, 4, 680.2, '2025-05-01 21:47:05', '2025-05-01 21:47:05'),
(836, 262, 4, 4, 491.76, '2025-05-01 21:47:05', '2025-05-01 21:47:05'),
(837, 263, 4, 2, 245.88, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(838, 263, 13, 1, 68.68, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(839, 263, 24, 2, 40.72, '2025-04-07 21:47:05', '2025-04-07 21:47:05'),
(840, 264, 15, 1, 60.32, '2024-10-27 21:47:05', '2024-10-27 21:47:05'),
(841, 264, 19, 5, 279.35, '2024-10-27 21:47:05', '2024-10-27 21:47:05'),
(842, 264, 2, 1, 98.9, '2024-10-27 21:47:05', '2024-10-27 21:47:05'),
(843, 264, 17, 3, 161.25, '2024-10-27 21:47:05', '2024-10-27 21:47:05'),
(844, 265, 19, 5, 279.35, '2025-06-14 21:47:05', '2025-06-14 21:47:05'),
(845, 266, 20, 5, 717.7, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(846, 266, 27, 1, 153.88, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(847, 266, 1, 1, 112.01, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(848, 267, 5, 4, 289.92, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(849, 267, 13, 4, 274.72, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(850, 267, 14, 5, 553.75, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(851, 267, 28, 4, 406.48, '2025-05-28 21:47:05', '2025-05-28 21:47:05'),
(852, 268, 8, 5, 614.15, '2024-08-08 21:47:05', '2024-08-08 21:47:05'),
(853, 268, 10, 1, 170.05, '2024-08-08 21:47:05', '2024-08-08 21:47:05'),
(854, 269, 19, 5, 279.35, '2025-04-09 21:47:05', '2025-04-09 21:47:05'),
(855, 270, 25, 5, 116.35, '2024-12-27 21:47:05', '2024-12-27 21:47:05'),
(856, 270, 27, 1, 153.88, '2024-12-27 21:47:05', '2024-12-27 21:47:05'),
(857, 270, 20, 5, 717.7, '2024-12-27 21:47:05', '2024-12-27 21:47:05'),
(858, 270, 24, 5, 101.8, '2024-12-27 21:47:05', '2024-12-27 21:47:05'),
(859, 270, 11, 1, 196.34, '2024-12-27 21:47:05', '2024-12-27 21:47:05'),
(860, 271, 26, 2, 129.52, '2024-10-06 21:47:05', '2024-10-06 21:47:05'),
(861, 271, 36, 4, 573.56, '2024-10-06 21:47:05', '2024-10-06 21:47:05'),
(862, 271, 14, 4, 443.0, '2024-10-06 21:47:05', '2024-10-06 21:47:05'),
(863, 272, 1, 5, 560.05, '2025-06-05 21:47:05', '2025-06-05 21:47:05'),
(864, 273, 3, 2, 391.62, '2024-10-25 21:47:05', '2024-10-25 21:47:05'),
(865, 273, 21, 2, 351.84, '2024-10-25 21:47:05', '2024-10-25 21:47:05'),
(866, 273, 2, 1, 98.9, '2024-10-25 21:47:05', '2024-10-25 21:47:05'),
(867, 274, 32, 5, 465.55, '2024-10-30 21:47:05', '2024-10-30 21:47:05'),
(868, 275, 23, 2, 356.32, '2024-10-14 21:47:05', '2024-10-14 21:47:05'),
(869, 275, 10, 1, 170.05, '2024-10-14 21:47:05', '2024-10-14 21:47:05'),
(870, 275, 30, 4, 451.64, '2024-10-14 21:47:05', '2024-10-14 21:47:05'),
(871, 275, 15, 1, 60.32, '2024-10-14 21:47:05', '2024-10-14 21:47:05'),
(872, 276, 21, 4, 703.68, '2025-05-22 21:47:05', '2025-05-22 21:47:05'),
(873, 277, 28, 1, 101.62, '2025-02-13 21:47:05', '2025-02-13 21:47:05'),
(874, 278, 26, 1, 64.76, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(875, 278, 16, 3, 232.02, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(876, 278, 9, 5, 453.75, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(877, 278, 14, 1, 110.75, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(878, 278, 30, 1, 112.91, '2024-09-17 21:47:05', '2024-09-17 21:47:05'),
(879, 279, 27, 1, 153.88, '2025-01-27 21:47:05', '2025-01-27 21:47:05'),
(880, 279, 13, 4, 274.72, '2025-01-27 21:47:05', '2025-01-27 21:47:05'),
(881, 279, 16, 3, 232.02, '2025-01-27 21:47:05', '2025-01-27 21:47:05'),
(882, 279, 12, 5, 586.3, '2025-01-27 21:47:05', '2025-01-27 21:47:05'),
(883, 279, 14, 4, 443.0, '2025-01-27 21:47:05', '2025-01-27 21:47:05'),
(884, 280, 30, 5, 564.55, '2025-03-31 21:47:05', '2025-03-31 21:47:05'),
(885, 280, 22, 4, 729.92, '2025-03-31 21:47:05', '2025-03-31 21:47:05'),
(886, 281, 36, 1, 143.39, '2025-02-26 21:47:05', '2025-02-26 21:47:05'),
(887, 281, 22, 2, 364.96, '2025-02-26 21:47:05', '2025-02-26 21:47:05'),
(888, 281, 18, 5, 251.35, '2025-02-26 21:47:05', '2025-02-26 21:47:05'),
(889, 282, 34, 5, 446.05, '2025-02-16 21:47:05', '2025-02-16 21:47:05'),
(890, 282, 11, 2, 392.68, '2025-02-16 21:47:05', '2025-02-16 21:47:05'),
(891, 282, 16, 5, 386.7, '2025-02-16 21:47:05', '2025-02-16 21:47:05'),
(892, 283, 35, 2, 335.34, '2024-08-25 21:47:05', '2024-08-25 21:47:05'),
(893, 283, 2, 4, 395.6, '2024-08-25 21:47:05', '2024-08-25 21:47:05'),
(894, 284, 18, 1, 50.27, '2025-06-07 21:47:05', '2025-06-07 21:47:05'),
(895, 284, 34, 4, 356.84, '2025-06-07 21:47:05', '2025-06-07 21:47:05'),
(896, 284, 28, 2, 203.24, '2025-06-07 21:47:05', '2025-06-07 21:47:05'),
(897, 284, 31, 4, 167.36, '2025-06-07 21:47:05', '2025-06-07 21:47:05'),
(898, 285, 30, 2, 225.82, '2025-01-28 21:47:05', '2025-01-28 21:47:05'),
(899, 286, 17, 1, 53.75, '2025-02-08 21:47:05', '2025-02-08 21:47:05'),
(900, 287, 24, 1, 20.36, '2025-03-18 21:47:05', '2025-03-18 21:47:05'),
(901, 288, 35, 2, 335.34, '2024-12-31 21:47:05', '2024-12-31 21:47:05'),
(902, 288, 25, 4, 93.08, '2024-12-31 21:47:05', '2024-12-31 21:47:05'),
(903, 288, 8, 1, 122.83, '2024-12-31 21:47:05', '2024-12-31 21:47:05'),
(904, 288, 7, 1, 27.85, '2024-12-31 21:47:05', '2024-12-31 21:47:05'),
(905, 289, 22, 2, 364.96, '2025-06-07 21:47:05', '2025-06-07 21:47:05'),
(906, 289, 18, 4, 201.08, '2025-06-07 21:47:05', '2025-06-07 21:47:05'),
(907, 289, 25, 5, 116.35, '2025-06-07 21:47:05', '2025-06-07 21:47:05'),
(908, 290, 29, 3, 390.57, '2024-12-29 21:47:05', '2024-12-29 21:47:05'),
(909, 290, 6, 3, 106.32, '2024-12-29 21:47:05', '2024-12-29 21:47:05'),
(910, 290, 18, 3, 150.81, '2024-12-29 21:47:05', '2024-12-29 21:47:05'),
(911, 290, 2, 3, 296.7, '2024-12-29 21:47:05', '2024-12-29 21:47:05'),
(912, 291, 15, 1, 60.32, '2025-06-26 21:47:05', '2025-06-26 21:47:05'),
(913, 292, 10, 3, 510.15, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(914, 292, 15, 2, 120.64, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(915, 292, 34, 1, 89.21, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(916, 292, 25, 4, 93.08, '2025-05-15 21:47:05', '2025-05-15 21:47:05'),
(917, 293, 21, 4, 703.68, '2025-06-19 21:47:05', '2025-06-19 21:47:05'),
(918, 294, 6, 4, 141.76, '2024-10-08 21:47:05', '2024-10-08 21:47:05'),
(919, 294, 27, 3, 461.64, '2024-10-08 21:47:05', '2024-10-08 21:47:05'),
(920, 294, 24, 1, 20.36, '2024-10-08 21:47:05', '2024-10-08 21:47:05'),
(921, 294, 3, 2, 391.62, '2024-10-08 21:47:05', '2024-10-08 21:47:05'),
(922, 294, 35, 3, 503.01, '2024-10-08 21:47:05', '2024-10-08 21:47:05'),
(923, 295, 30, 5, 564.55, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(924, 295, 3, 3, 587.43, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(925, 295, 1, 5, 560.05, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(926, 295, 27, 3, 461.64, '2024-11-16 21:47:05', '2024-11-16 21:47:05'),
(927, 296, 25, 1, 23.27, '2025-01-26 21:47:05', '2025-01-26 21:47:05'),
(928, 296, 28, 4, 406.48, '2025-01-26 21:47:05', '2025-01-26 21:47:05'),
(929, 296, 22, 3, 547.44, '2025-01-26 21:47:05', '2025-01-26 21:47:05'),
(930, 297, 1, 4, 448.04, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(931, 297, 8, 5, 614.15, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(932, 297, 27, 3, 461.64, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(933, 297, 5, 3, 217.44, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(934, 297, 29, 5, 650.95, '2024-12-10 21:47:05', '2024-12-10 21:47:05'),
(935, 298, 36, 3, 430.17, '2025-05-13 21:47:05', '2025-05-13 21:47:05'),
(936, 298, 15, 5, 301.6, '2025-05-13 21:47:05', '2025-05-13 21:47:05'),
(937, 299, 1, 5, 560.05, '2024-11-23 21:47:05', '2024-11-23 21:47:05'),
(938, 299, 30, 3, 338.73, '2024-11-23 21:47:05', '2024-11-23 21:47:05'),
(939, 299, 36, 3, 430.17, '2024-11-23 21:47:05', '2024-11-23 21:47:05'),
(940, 299, 7, 4, 111.4, '2024-11-23 21:47:05', '2024-11-23 21:47:05'),
(941, 300, 20, 2, 287.08, '2025-04-28 21:47:05', '2025-04-28 21:47:05'),
(942, 300, 36, 3, 430.17, '2025-04-28 21:47:05', '2025-04-28 21:47:05'),
(943, 300, 19, 3, 167.61, '2025-04-28 21:47:05', '2025-04-28 21:47:05'),
(944, 300, 6, 2, 70.88, '2025-04-28 21:47:05', '2025-04-28 21:47:05'),
(945, 300, 12, 5, 586.3, '2025-04-28 21:47:05', '2025-04-28 21:47:05');

INSERT INTO inventory (id, store_id, product_id, quantity, created_at, updated_at) VALUES
(1, 2, 9, 468, '2025-05-05 21:25:53', '2024-08-01 22:19:20'),
(2, 2, 3, 143, '2025-03-11 20:54:16', '2024-07-01 07:16:31'),
(3, 1, 9, 459, '2024-09-25 19:38:56', '2024-06-17 22:37:13'),
(4, 5, 9, 472, '2025-05-18 00:50:11', '2025-04-09 09:03:56'),
(5, 1, 4, 295, '2025-03-23 19:32:23', '2024-07-03 23:57:28'),
(6, 5, 2, 193, '2024-07-28 02:54:31', '2025-05-19 09:47:38'),
(7, 5, 9, 67, '2024-12-27 13:37:40', '2024-09-02 15:04:03'),
(8, 3, 5, 190, '2024-08-12 05:04:39', '2024-07-03 08:36:38'),
(9, 5, 3, 443, '2025-01-07 13:11:18', '2024-10-05 23:29:09'),
(10, 2, 1, 238, '2024-10-20 10:26:29', '2024-12-15 23:22:53'),
(11, 4, 4, 91, '2025-02-01 04:23:29', '2025-01-12 00:50:28'),
(12, 2, 2, 285, '2025-03-01 01:07:43', '2024-12-03 22:06:12'),
(13, 2, 10, 246, '2025-01-05 13:41:44', '2025-01-10 04:51:56'),
(14, 1, 7, 389, '2024-06-04 06:59:39', '2025-05-27 12:07:40'),
(15, 5, 2, 397, '2024-08-24 07:24:16', '2024-10-09 06:17:56'),
(16, 3, 8, 104, '2025-04-09 11:06:23', '2025-03-21 04:14:56'),
(17, 3, 6, 35, '2025-04-30 13:11:19', '2025-01-19 19:10:28'),
(18, 1, 1, 419, '2024-11-22 21:26:26', '2024-07-08 11:30:37'),
(19, 1, 1, 461, '2024-12-08 00:49:03', '2025-05-26 10:10:17'),
(20, 1, 2, 185, '2024-12-08 02:19:49', '2024-07-01 06:53:17'),
(21, 2, 10, 61, '2025-04-28 11:45:55', '2024-12-05 08:58:33'),
(22, 1, 4, 266, '2025-02-26 05:19:20', '2024-06-10 01:47:27'),
(23, 1, 8, 421, '2024-08-13 07:36:57', '2024-06-12 08:09:17'),
(24, 5, 6, 49, '2024-10-11 19:06:56', '2024-11-06 04:44:31'),
(25, 5, 1, 388, '2024-12-10 23:02:59', '2024-11-22 03:46:55'),
(26, 2, 6, 180, '2025-05-18 02:46:47', '2024-06-21 18:53:09'),
(27, 4, 2, 426, '2025-05-12 13:27:59', '2025-01-08 05:42:38'),
(28, 5, 5, 405, '2024-09-25 12:15:14', '2024-06-28 06:49:12'),
(29, 3, 5, 101, '2024-07-19 23:25:56', '2024-09-06 03:56:20'),
(30, 1, 9, 436, '2025-05-19 02:16:53', '2025-05-27 22:38:08'),
(31, 2, 10, 362, '2025-02-25 23:37:10', '2024-10-26 00:07:57'),
(32, 5, 9, 264, '2024-06-01 12:36:53', '2024-10-05 19:12:13'),
(33, 3, 8, 287, '2024-07-05 20:39:19', '2024-10-29 22:57:25'),
(34, 1, 3, 109, '2024-09-06 01:20:13', '2024-12-26 17:02:12'),
(35, 3, 9, 338, '2025-04-09 21:35:40', '2024-08-28 16:50:24'),
(36, 1, 6, 214, '2025-03-22 02:36:42', '2025-02-01 02:35:13'),
(37, 4, 1, 279, '2025-01-30 18:56:14', '2025-01-01 07:20:51'),
(38, 4, 8, 33, '2025-01-15 00:31:01', '2024-10-02 05:27:31'),
(39, 1, 10, 45, '2024-08-19 18:13:48', '2024-08-31 12:01:50'),
(40, 1, 5, 473, '2024-11-20 17:27:07', '2024-10-27 05:56:25'),
(41, 2, 7, 196, '2025-01-02 14:25:54', '2024-09-08 04:34:42'),
(42, 3, 2, 205, '2024-07-14 10:27:43', '2025-03-20 06:41:34'),
(43, 5, 5, 291, '2025-01-02 02:39:32', '2024-11-22 19:06:28'),
(44, 2, 7, 213, '2025-03-23 08:25:04', '2025-04-19 01:20:52'),
(45, 5, 2, 140, '2024-11-03 10:37:27', '2024-11-24 08:00:49'),
(46, 4, 3, 428, '2024-11-27 03:53:50', '2025-05-01 20:22:51'),
(47, 3, 9, 136, '2025-02-13 18:48:08', '2024-11-15 19:41:12'),
(48, 3, 6, 358, '2025-04-28 18:10:52', '2024-06-23 04:58:20'),
(49, 1, 6, 178, '2024-06-03 07:16:40', '2024-10-28 06:04:13'),
(50, 2, 10, 212, '2024-09-16 07:49:30', '2024-08-25 19:41:45'),
(51, 1, 9, 385, '2024-09-28 02:41:43', '2024-10-03 17:13:27'),
(52, 1, 8, 47, '2025-02-09 10:38:01', '2025-04-22 23:08:39'),
(53, 4, 4, 143, '2025-03-04 02:30:22', '2025-05-27 07:21:17'),
(54, 4, 10, 458, '2025-01-13 16:08:01', '2025-04-05 23:19:55'),
(55, 5, 9, 255, '2025-03-04 17:09:04', '2024-11-23 09:05:53'),
(56, 5, 6, 422, '2025-02-17 07:32:17', '2025-02-01 06:35:41'),
(57, 1, 10, 418, '2025-02-14 04:43:53', '2025-04-22 16:05:35'),
(58, 5, 3, 84, '2024-08-29 05:07:55', '2025-04-22 22:50:10'),
(59, 1, 1, 157, '2024-06-30 17:40:50', '2025-02-02 20:09:38'),
(60, 1, 2, 463, '2025-03-22 19:19:03', '2024-11-30 03:01:21'),
(61, 4, 5, 447, '2025-03-21 22:18:23', '2024-08-30 10:33:06'),
(62, 5, 2, 475, '2024-06-16 23:31:35', '2024-08-27 01:34:38'),
(63, 5, 9, 398, '2024-08-26 08:20:59', '2024-08-07 09:57:20'),
(64, 1, 5, 340, '2024-09-10 06:14:54', '2025-01-10 23:05:32'),
(65, 3, 3, 300, '2025-04-02 22:41:46', '2024-11-09 20:17:40'),
(66, 4, 8, 470, '2025-03-17 07:30:28', '2025-04-17 11:57:41'),
(67, 2, 9, 119, '2025-03-07 06:31:34', '2025-03-08 07:59:28'),
(68, 4, 4, 290, '2024-11-21 21:08:28', '2024-10-07 02:37:38'),
(69, 1, 7, 157, '2025-05-20 00:01:27', '2025-03-19 20:12:55'),
(70, 2, 3, 364, '2024-12-10 18:54:25', '2025-05-13 16:21:33'),
(71, 1, 3, 376, '2024-09-10 04:40:09', '2025-05-02 20:43:25'),
(72, 4, 10, 367, '2024-10-09 19:27:04', '2024-07-14 19:50:55'),
(73, 3, 3, 287, '2025-03-29 09:03:08', '2024-05-30 18:45:40'),
(74, 5, 5, 228, '2024-09-25 00:24:56', '2024-12-27 11:26:26'),
(75, 3, 3, 30, '2024-09-16 17:59:32', '2025-05-13 23:31:05'),
(76, 2, 7, 407, '2024-12-23 18:44:47', '2025-04-29 04:12:57'),
(77, 2, 6, 389, '2024-06-16 10:18:34', '2025-01-13 11:43:08'),
(78, 5, 7, 129, '2024-09-25 12:18:28', '2025-02-26 20:42:26'),
(79, 1, 5, 418, '2025-05-04 18:59:55', '2024-11-17 01:34:05'),
(80, 3, 2, 256, '2025-03-08 08:37:08', '2025-04-07 02:52:19'),
(81, 1, 7, 169, '2024-08-23 00:21:44', '2025-04-23 07:35:09'),
(82, 4, 3, 201, '2024-07-15 02:54:24', '2024-12-26 21:58:59'),
(83, 3, 5, 463, '2024-07-05 16:03:36', '2024-10-11 10:09:22'),
(84, 1, 3, 226, '2024-10-27 23:00:52', '2024-06-07 05:49:28'),
(85, 2, 6, 194, '2025-04-28 06:24:36', '2024-10-10 01:13:25'),
(86, 5, 3, 170, '2025-04-23 20:53:52', '2024-09-20 02:11:12'),
(87, 2, 1, 362, '2024-08-01 15:33:05', '2024-12-04 11:41:25'),
(88, 1, 8, 213, '2024-06-19 15:26:23', '2024-11-23 08:47:47'),
(89, 3, 7, 425, '2025-01-16 11:30:52', '2025-03-29 08:45:44'),
(90, 3, 5, 282, '2025-04-25 06:18:28', '2025-01-12 08:00:47'),
(91, 5, 9, 278, '2025-05-11 16:28:59', '2025-05-30 10:38:29'),
(92, 1, 4, 394, '2024-10-17 10:04:09', '2025-04-13 04:36:24'),
(93, 1, 6, 143, '2025-01-10 19:09:08', '2025-03-05 13:06:42'),
(94, 5, 9, 285, '2025-05-11 05:01:38', '2024-09-23 17:40:08'),
(95, 2, 5, 189, '2025-04-07 09:53:41', '2024-12-02 00:41:34'),
(96, 2, 8, 332, '2024-11-07 06:23:01', '2025-04-18 18:08:27'),
(97, 1, 6, 39, '2024-07-15 05:41:49', '2024-07-10 12:09:48'),
(98, 3, 1, 456, '2024-07-11 09:45:13', '2024-06-19 13:12:31'),
(99, 3, 4, 124, '2024-12-04 16:03:10', '2025-01-09 09:40:52'),
(100, 2, 4, 411, '2024-11-30 05:14:05', '2024-10-29 23:22:12'),
(101, 3, 4, 444, '2024-09-26 18:09:38', '2025-05-07 20:19:26'),
(102, 5, 5, 320, '2024-11-21 06:05:59', '2024-10-18 06:22:34'),
(103, 3, 2, 222, '2024-09-20 06:06:02', '2025-02-16 06:15:57'),
(104, 2, 3, 432, '2025-03-15 06:41:39', '2024-10-14 00:11:02'),
(105, 1, 2, 68, '2024-11-09 02:51:10', '2024-10-10 06:01:36'),
(106, 5, 8, 289, '2024-11-25 19:42:30', '2024-07-27 20:32:07'),
(107, 4, 2, 298, '2024-12-15 09:28:59', '2025-01-05 04:29:46'),
(108, 1, 10, 121, '2025-04-02 13:24:37', '2024-11-23 17:12:34'),
(109, 2, 10, 66, '2024-07-28 13:42:36', '2024-08-03 06:53:54'),
(110, 2, 8, 130, '2024-10-28 02:35:51', '2025-02-19 22:55:46'),
(111, 2, 7, 349, '2025-01-09 14:12:01', '2024-08-20 05:55:20'),
(112, 3, 4, 40, '2024-09-22 15:04:50', '2024-12-13 12:30:00'),
(113, 4, 1, 390, '2024-10-08 20:46:43', '2024-09-11 21:04:58'),
(114, 1, 2, 490, '2025-02-18 20:36:54', '2024-06-09 06:14:57'),
(115, 5, 9, 274, '2025-03-21 02:48:11', '2024-08-17 13:52:54'),
(116, 3, 7, 68, '2025-01-10 21:28:10', '2024-06-03 16:50:46'),
(117, 4, 9, 459, '2025-01-22 02:41:52', '2024-12-13 17:43:34'),
(118, 4, 9, 388, '2024-09-07 18:49:27', '2025-02-20 19:02:25'),
(119, 5, 1, 25, '2024-10-25 07:42:59', '2024-12-21 21:01:57'),
(120, 2, 4, 440, '2025-04-28 23:25:38', '2024-10-13 03:30:21'),
(121, 1, 1, 320, '2025-03-14 16:22:15', '2024-11-08 13:11:45'),
(122, 1, 6, 418, '2024-06-04 02:05:07', '2025-04-22 23:41:51'),
(123, 4, 2, 301, '2024-11-15 03:44:56', '2024-10-24 19:53:02'),
(124, 2, 10, 288, '2025-03-07 15:52:15', '2025-01-14 20:11:35'),
(125, 1, 4, 372, '2025-03-09 17:43:37', '2025-01-17 16:28:47'),
(126, 4, 6, 261, '2024-08-09 08:05:08', '2025-05-23 18:59:40'),
(127, 4, 5, 393, '2025-05-01 18:49:12', '2025-02-07 01:46:18'),
(128, 3, 10, 81, '2025-03-05 10:24:21', '2025-04-30 18:35:31'),
(129, 4, 1, 471, '2024-11-05 00:01:00', '2024-06-25 22:34:27'),
(130, 5, 4, 220, '2024-08-23 12:10:28', '2024-12-18 08:56:37'),
(131, 3, 10, 425, '2024-07-21 00:06:24', '2025-05-27 09:51:16'),
(132, 3, 3, 473, '2024-11-05 19:03:47', '2025-03-30 06:32:50'),
(133, 1, 2, 179, '2024-12-29 10:11:43', '2024-12-01 15:44:02'),
(134, 5, 2, 433, '2024-06-12 18:30:59', '2025-01-28 07:16:31'),
(135, 1, 9, 347, '2025-03-24 17:39:10', '2025-04-30 12:59:44'),
(136, 5, 5, 75, '2024-11-18 15:30:18', '2025-05-08 15:19:47'),
(137, 5, 5, 135, '2024-11-17 19:26:47', '2025-05-11 10:36:47'),
(138, 2, 7, 291, '2024-11-23 19:59:28', '2024-11-17 03:50:24'),
(139, 4, 6, 449, '2025-01-17 04:12:58', '2024-10-23 03:08:40'),
(140, 1, 10, 91, '2024-11-28 13:26:38', '2024-06-15 12:47:18'),
(141, 4, 4, 107, '2025-03-20 14:17:09', '2025-02-08 17:51:03'),
(142, 2, 4, 330, '2024-08-18 07:37:11', '2025-01-06 19:54:38'),
(143, 5, 9, 95, '2025-01-05 01:56:47', '2025-05-12 11:52:01'),
(144, 1, 4, 251, '2025-04-16 05:10:40', '2024-11-04 10:26:54'),
(145, 3, 6, 192, '2024-07-25 16:52:16', '2024-10-23 18:38:51'),
(146, 4, 2, 67, '2024-08-25 04:36:02', '2024-12-09 16:09:19'),
(147, 3, 1, 376, '2024-11-28 13:53:45', '2025-01-14 12:03:16'),
(148, 3, 3, 286, '2024-08-10 00:18:57', '2025-05-07 03:48:58'),
(149, 5, 7, 402, '2025-03-16 03:39:39', '2025-04-09 09:54:13'),
(150, 1, 6, 342, '2025-03-21 08:16:44', '2025-05-24 00:51:35'),
(151, 1, 6, 141, '2024-11-19 02:30:10', '2024-06-26 17:57:32'),
(152, 4, 7, 239, '2025-02-14 21:21:18', '2025-03-31 15:30:45'),
(153, 4, 1, 285, '2024-07-02 19:44:00', '2024-06-21 02:01:02'),
(154, 1, 2, 402, '2024-11-16 16:23:38', '2025-03-21 12:50:50'),
(155, 2, 7, 419, '2024-08-31 05:27:37', '2024-10-16 12:44:28'),
(156, 1, 1, 118, '2024-07-17 12:05:22', '2024-07-20 03:35:53'),
(157, 1, 9, 473, '2024-12-31 18:28:00', '2025-01-17 12:53:22'),
(158, 2, 6, 219, '2024-11-09 13:14:57', '2024-08-05 14:33:37'),
(159, 4, 10, 65, '2024-08-11 10:44:38', '2025-02-11 05:49:25'),
(160, 1, 7, 98, '2025-04-03 14:48:30', '2024-06-12 06:30:41'),
(161, 4, 2, 184, '2024-11-04 16:01:44', '2024-12-26 05:33:32'),
(162, 2, 2, 109, '2025-05-15 13:44:37', '2025-02-08 07:37:53'),
(163, 2, 5, 479, '2025-05-21 12:10:05', '2024-08-03 20:55:59'),
(164, 3, 6, 46, '2024-09-19 06:42:08', '2024-08-16 23:53:19'),
(165, 4, 9, 301, '2024-08-02 08:00:26', '2024-08-28 16:33:12'),
(166, 2, 7, 312, '2024-08-13 10:50:53', '2025-02-20 10:55:44'),
(167, 1, 8, 340, '2025-03-28 03:32:42', '2024-09-01 14:01:19'),
(168, 4, 7, 410, '2024-06-19 19:22:02', '2025-04-01 14:31:30'),
(169, 5, 3, 338, '2024-07-25 05:31:22', '2024-08-22 09:59:42'),
(170, 2, 9, 445, '2025-01-25 04:35:15', '2025-01-14 13:14:19'),
(171, 3, 5, 403, '2025-05-26 11:21:10', '2024-08-27 21:30:39'),
(172, 1, 2, 143, '2024-09-05 14:43:19', '2024-09-16 08:49:42'),
(173, 3, 9, 22, '2024-10-24 21:05:15', '2024-06-08 10:00:35'),
(174, 5, 8, 419, '2025-04-01 11:46:17', '2024-11-02 10:36:42'),
(175, 2, 6, 172, '2025-04-11 22:28:19', '2025-03-01 18:14:09'),
(176, 2, 8, 461, '2025-05-11 03:24:07', '2024-06-10 08:21:17'),
(177, 5, 9, 89, '2025-04-19 18:01:59', '2025-04-25 01:13:03'),
(178, 4, 1, 128, '2024-10-24 09:32:09', '2025-01-05 11:14:53'),
(179, 2, 6, 334, '2024-09-08 01:59:27', '2025-03-01 12:09:59'),
(180, 1, 1, 72, '2024-08-26 15:30:12', '2025-02-18 18:17:29'),
(181, 3, 8, 373, '2025-05-21 20:01:50', '2024-05-31 13:15:06'),
(182, 1, 10, 440, '2024-11-01 13:05:27', '2025-01-23 07:45:01'),
(183, 1, 9, 208, '2024-10-11 04:06:38', '2025-02-08 18:53:19'),
(184, 5, 10, 382, '2024-07-20 08:14:34', '2024-08-12 17:28:55'),
(185, 1, 5, 166, '2024-10-10 02:19:36', '2024-11-16 14:54:49'),
(186, 5, 3, 498, '2024-12-25 11:21:05', '2025-05-07 09:31:47'),
(187, 1, 8, 150, '2024-10-29 19:29:02', '2024-10-03 03:26:30'),
(188, 5, 3, 226, '2025-03-29 00:09:51', '2024-07-24 06:00:33'),
(189, 5, 10, 339, '2025-01-18 04:50:39', '2024-09-26 07:24:55'),
(190, 4, 10, 313, '2024-07-04 17:49:26', '2024-07-22 16:24:13'),
(191, 4, 5, 445, '2024-12-13 02:36:18', '2024-10-11 02:39:47'),
(192, 5, 10, 408, '2024-09-01 19:27:45', '2024-12-03 23:59:49'),
(193, 5, 8, 65, '2025-03-04 11:47:28', '2025-04-19 19:12:21'),
(194, 5, 5, 94, '2024-06-18 12:22:14', '2024-06-12 11:23:52'),
(195, 5, 6, 316, '2025-03-31 16:52:01', '2024-10-26 05:17:24'),
(196, 4, 10, 147, '2025-04-30 05:23:15', '2025-05-30 19:06:37'),
(197, 2, 6, 309, '2024-09-10 12:48:51', '2024-09-06 05:25:22'),
(198, 1, 5, 30, '2024-12-22 21:37:06', '2025-05-09 15:50:12'),
(199, 5, 5, 311, '2025-04-17 05:32:15', '2025-01-01 11:07:50'),
(200, 5, 4, 109, '2024-10-08 06:35:46', '2024-09-19 05:17:34');

-- 1.Top 5 best-selling products by quantity and revenue?

-- by quantity
SELECT 
  p.name AS product_name, 
  SUM(ot.quantity) AS total_quantity_sold
FROM 
  order_items ot
LEFT JOIN 
  products AS p
ON 
  ot.product_id = p.id
GROUP BY 
  ot.product_id
ORDER BY 
  total_quantity_sold DESC
LIMIT 5;

-- by revenue
WITH order_quantity AS(
SELECT
	p.id,
	p.name,
	sum(oi.quantity) as quantity_order
FROM
  orders o
LEFT JOIN
  order_items oi
On
  o.id=oi.order_id
LEFT JOIN
  products p
ON
 oi.product_id = p.id
GROUP BY
 1
),

revenue_ranking AS (
SELECT
  oq.name,
  oq.quantity_order * p.price * (1 - p.discount_percent/100) AS revenue
FROM
  order_quantity AS oq
LEFT JOIN 
  products AS p
ON 
  p.id = oq.id
)

SELECT
  name,
  round(revenue) AS revenue
FROM
  revenue_ranking;
  
-- 2. Which customers placed the most orders?
  SELECT
    o.customer_id,
    c.full_name,
    COUNT(c.id) AS order_count
FROM 
  orders o
LEFT JOIN 
  customers c
ON
  o.customer_id = c.id
GROUP BY
  o.customer_id
ORDER BY
  order_count DESC;
  
-- 3. Top customers based on total spending?

WITH customer_total_spending AS(
SELECT
  o.customer_id,
  c.full_name AS full_name,
  ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS total_spending
FROM
  orders o
LEFT JOIN
  customers c
ON 
  o.customer_id = c.id
LEFT JOIN
  order_items oi
ON
  oi.order_id = o.id
LEFT JOIN
  products p
ON 
  oi.product_id = p.id
GROUP BY
   o.customer_id,
   c.full_name
ORDER BY
  total_spending DESC
)

SELECT 
  full_name,
  total_spending
FROM
  customer_total_spending
WHERE
  total_spending = (SELECT max(total_spending) FROM customer_total_spending);
  
-- 4. Compare online vs. offline sales for each store.
SELECT
  s.store_name,
  ROUND(SUM(CASE WHEN o.order_type = "offline" THEN oi.quantity * p.price * (1 - p.discount_percent/100) END)) AS offline_sale,
  ROUND(SUM(CASE WHEN o.order_type = "online" THEN oi.quantity * p.price * (1 - p.discount_percent/100) END)) AS online_sale
FROM
  orders o
LEFT JOIN
  stores s
ON 
  o.store_id = s.id
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
LEFT JOIN 
  products p
ON 
  oi.product_id = p.id
GROUP BY
  1;
  
-- 5.Which product categories generate the highest and lowest revenue?

-- max revenue
WITH category_revenue AS(
SELECT
  c.category_name AS category_name,
  ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS revenue
FROM
  order_items oi
LEFT JOIN
  products p
ON 
  oi.product_id = p.id
LEFT JOIN
  categories c
ON
  p.category_id = c.id
GROUP BY
  1
)

SELECT
  category_name,
  revenue AS max_revenue
FROM 
  category_revenue
WHERE 
  revenue = (SELECT max(revenue) FROM category_revenue);

-- min revenue
WITH category_revenue AS(
SELECT
  c.category_name AS category_name,
  ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS revenue
FROM
  order_items oi
LEFT JOIN
  products p
ON 
  oi.product_id = p.id
LEFT JOIN
  categories c
ON
  p.category_id = c.id
GROUP BY
  1
)

SELECT
  category_name,
  revenue AS min_revenue
FROM 
  category_revenue
WHERE 
  revenue = (SELECT min(revenue) FROM category_revenue);

-- 6.Which marketing campaign brought in the most orders?

## most orders
SELECT
  mc.campaign_name,
  COUNT(o.customer_id) AS order_count
FROM
  marketing_campaigns mc
INNER JOIN
  orders o
ON
  mc.id = o.marketing_id
GROUP BY
  1
ORDER BY
  order_count DESC;
  
## most revenue generating campaign

SELECT
  mc.id,
  ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS revenue,
  SUM(mc.budget) AS cost,
  ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100)) -  ROUND(SUM(mc.budget)) AS profit
FROM
   orders o
LEFT JOIN
  marketing_campaigns mc
ON 
  mc.id = o.marketing_id
LEFT JOIN 
  order_items oi
ON
  o.id = oi.order_id
LEFT JOIN
  products p
ON
 p.id = oi.product_id
WHERE
 mc.id IS NOT NULL
GROUP BY
 mc.id
 
 -- 7. What is the revenue trend over days or months?
 
 SELECT
   DATE(o.order_date) AS Day,
   ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS total_revenue
FROM
  orders o
LEFT JOIN
  order_items oi
ON 
  o.id = oi.order_id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
GROUP BY
  DATE(o.order_date)
ORDER BY
  Day;

 -- 8. day-over-day percentage change in revenue
 WITH sales_trend AS (
SELECT
   DATE(o.order_date) AS Day,
   ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS total_revenue
FROM
  orders o
LEFT JOIN
  order_items oi
ON 
  o.id = oi.order_id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
GROUP BY
  DATE(o.order_date)
ORDER BY
  Day
)

SELECT 
  Day,
  total_revenue,
  LAG(total_revenue) OVER (ORDER BY Day) AS prev_day_revenue,
  ROUND((total_revenue - LAG(total_revenue) OVER (ORDER BY Day)) /
  NULLIF(LAG(total_revenue) OVER (ORDER BY Day),0) * 100 ,2) AS percent_change
FROM 
  sales_trend
ORDER BY Day;

## 9. month-over-month sales trend

SELECT
   DATE_FORMAT(o.order_date, '%Y-%m') AS month,
   DATE_FORMAT(o.order_date, '%M %Y') AS month_name,
   ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS total_revenue
FROM
  orders o
LEFT JOIN
  order_items oi ON o.id = oi.order_id
LEFT JOIN
  products p ON oi.product_id = p.id
GROUP BY
  DATE_FORMAT(o.order_date, '%Y-%m'), DATE_FORMAT(o.order_date, '%M %Y')
ORDER BY
  month DESC;
  
-- 10. Which payment method is used most frequently?

SELECT 
  payment_method,
  COUNT(id) AS num_of_users
FROM 
  orders 
GROUP BY
  payment_method
HAVING 
  num_of_users = (
  SELECT 
    COUNT(id) AS max_uses
    FROM orders
    group by payment_method
    order by max_uses desc
    limit 1
);

-- 11. What are the current inventory levels per store and product?

SELECT 
  s.store_name AS store_name,
  p.name AS product_name,
  SUM(i.quantity) AS inventory_level
FROM 
  inventory i
LEFT JOIN
  stores s
ON
  i.store_id = s.id
LEFT JOIN
  products p
ON 
  p.id = i.product_id
GROUP BY
   s.store_name ,
   p.name ;

-- per store inventory level
SELECT
  s.store_name,
  sum(i.quantity) as quantity
FROM 
  stores s
JOIN
   inventory i
ON 
  s.id = i.store_id
GROUP BY 
  1
ORDER BY 2 DESC;

-- per product inventory level
SELECT
  p.name,
  SUM(i.quantity) as quantity
FROM 
  products p
JOIN 
  inventory i
ON 
  p.id = i.product_id
GROUP BY
   1
ORDER BY 
  2 desc;
  
-- 12. Add a column last_order_date to the customers table.

ALTER TABLE customers
ADD COLUMN last_order_date DATETIME;

-- 13. Update each customer’s last_order_date based on their latest order
UPDATE customers c
JOIN (
  SELECT
    customer_id,
    MAX(order_date) AS last_order_date
    FROM orders
    GROUP BY customer_id
    ) o
ON
 c.id = o.customer_id
SET
  c.last_order_date = o.last_order_date;
  
-- 14. Insert a new promotional campaign and assign it to new orders.
INSERT INTO marketing_campaigns (
	id,
    campaign_name,
    platform,
    budget,
    start_date,
    end_date,
    notes,
    created_at,
    updated_at
)
VALUES (
	21,
    'Summer Super Sale',
    'facebook',
    5000.00,
    '2025-06-01',
    '2025-06-30',
    'Promotional campaign targeting young adults during summer.',
    NOW(),
    NOW()
);

-- Assign

UPDATE orders
SET marketing_id = 21
WHERE id IN (
  SELECT id FROM (
    SELECT id
    FROM orders
    WHERE order_date >= '2025-06-01'
      AND marketing_id IS NULL
  ) AS sub
);

-- 15. Delete products that haven’t been sold in the last 6 months.

SELECT 
  *
FROM 
  products
WHERE 
  id NOT IN (
  SELECT 
    oi.product_id
  FROM 
    order_items oi
  JOIN
    orders o
  ON 
    oi.product_id = o.id
  WHERE 
    o.order_date >= (SELECT max(order_date) FROM orders) - INTERVAL 6 month);
    
-- 16. Rank customers by total amount spent

WITH customer_toal_spend AS(
SELECT
	o.customer_id,
    c.full_name as name,
	round(sum(oi.quantity*p.price*(1-p.discount_percent/100))) as total_spend
FROM 
  orders o
LEFT JOIN
  order_items oi
ON 
  o.id = oi.order_id
LEFT JOIN
  products p
ON 
  oi.product_id = p.id
LEFT JOIN
  customers c
ON
  o.customer_id = c.id
GROUP BY
  1
)

SELECT 
  name,
  total_spend,
  DENSE_RANK() OVER(ORDER BY total_spend DESC) AS customer_rank
FROM
  customer_toal_spend;

-- 17. Show the top 3 best-selling products per store.

-- by quantity
WITH best_selling_product AS(
SELECT
  o.store_id,
  s.store_name AS store_name,
  p.name AS product_name,
  SUM(oi.quantity) AS total_quantity_sold,
  DENSE_RANK() OVER (PARTITION BY store_name ORDER BY SUM(oi.quantity) DESC) AS sales_quantity_rank
FROM
  orders o
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
LEFT JOIN
  stores s
ON
  o.store_id = s.id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
GROUP BY
  1,2,3
)

SELECT 
  store_name,
  product_name,
  total_quantity_sold,
  sales_quantity_rank
FROM
  best_selling_product
WHERE
  sales_quantity_rank <= 3;

-- by revenue
WITH best_selling_product AS(
SELECT
  o.store_id,
  s.store_name AS store_name,
  p.name AS product_name,
  Round(sum(oi.quantity*p.price*(1-p.discount_percent/100))) AS total_revenue,
  DENSE_RANK() OVER (PARTITION BY store_name ORDER BY SUM(oi.quantity*p.price*(1-p.discount_percent/100)) DESC) AS revenue_rank
FROM
  orders o
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
LEFT JOIN
  stores s
ON
  o.store_id = s.id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
GROUP BY
  1,2,3
)

SELECT 
  store_name,
  product_name,
  total_revenue,
  revenue_rank
FROM
  best_selling_product
WHERE
  revenue_rank <= 3;
  
-- 18. Calculate a running total of daily revenue

WITH daily_revenue AS (
SELECT
  DATE(o.order_date) AS order_date,
  ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS revenue
FROM
  orders o
LEFT JOIN
  order_items oi
ON 
  o.id = oi.order_id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
GROUP BY
  1
ORDER BY
  1
)

SELECT
  order_date,
  revenue,
  sum(revenue) over (order by date(order_date)) as running_revenue
FROM
  daily_revenue;

-- 19. Compute a 7-day rolling average of total order amounts

WITH total_order AS(
SELECT
  DATE(o.order_date) as order_date,
  DATE_FORMAT(o.order_date, "%Y-%m") AS y_m,
  SUM(oi.quantity) as order_amount
FROM
  orders o
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
GROUP BY
  1,2
ORDER BY
  1
)

SELECT
  *,
  ROUND(AVG(order_amount) OVER(ORDER BY order_date ROWS BETWEEN 7 PRECEDING AND CURRENT ROW)) AS rolling_avg_7d
FROM
  total_order;
  
-- 20. Show the time difference between each customer's consecutive orders.


SELECT 
    o.customer_id,
    c.full_name,
    DATE(o.order_date) AS order_date,
    LAG(DATE(o.order_date)) OVER (PARTITION BY o.customer_id ORDER BY o.order_date) AS previous_order_date,
    DATEDIFF(
      DATE(o.order_date), 
      LAG(DATE(o.order_date)) OVER (PARTITION BY o.customer_id ORDER BY o.order_date)
    ) AS days_between_orders
FROM
    orders o
JOIN
  customers c
ON
  o.customer_id = c.id;
  
-- 21. Identify customers who placed two orders on back-to-back days.

WITH purchase_order AS (
SELECT
  o.customer_id,
  c.full_name,
  DATE(o.order_date) as order_date,
  LAG(DATE(o.order_date)) OVER ( PARTITION BY customer_id ORDER BY DATE(o.order_date)) AS previous_order_date
FROM
  orders o
LEFT JOIN
  customers c
ON
  o.customer_id = c.id
ORDER BY
   o.customer_id
)
SELECT
	DISTINCT customer_id,
	full_name
FROM 
  purchase_order
WHERE
  DATEDIFF(order_date, previous_order_date) = 1;
  
-- 22. Classify orders as ‘High’, ‘Medium’, or ‘Low’ value based on amount

WITH ranked_order AS (
SELECT
  o.id AS order_id,
  SUM(oi.quantity) AS order_amount,
  NTILE(3) OVER (ORDER BY SUM(oi.quantity)) AS grp_no
FROM
  orders o
LEFT JOIN
  order_items oi
ON 
  o.id = oi.order_id
GROUP BY
  o.id
)

SELECT
  order_id,
  order_amount,
  CASE 
    WHEN grp_no = 1 THEN "Low"
    WHEN grp_no = 2 THEN "Medium"
    ELSE "High" END AS order_class
FROM
  ranked_order;
  
-- 23. Show whether each day’s sales were higher or lower than the previous day.

WITH daily_sales_revenue AS(
SELECT
    DATE(o.order_date) AS order_date,
    ROUND(sum(oi.quantity * p.price * (1 - p.discount_percent / 100)), 2) AS revenue
FROM
  orders o
LEFT JOIN
  order_items oi 
ON o.id = oi.order_id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
GROUP BY
  DATE(o.order_date)
),

revenue_previousday AS (
SELECT
  order_date,
  revenue,
  LAG(revenue) OVER (ORDER BY order_date) AS previous_day_revenue
FROM
  daily_sales_revenue
)

SELECT
  order_date,
  revenue,
  previous_day_revenue,
  ROUND((revenue - previous_day_revenue) / previous_day_revenue * 100,2) AS day_over_day_percent_change
FROM
  revenue_previousday;
  
-- 24. Find customers who placed only one order ever

SELECT
  o.customer_id,
  COUNT(oi.order_id) AS total_order_placed
FROM
  orders o
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
GROUP BY
  1
HAVING
  COUNT(oi.order_id) = 1;

-- 25. Find products that were only ordered during marketing campaigns.

WITH campaign_products AS (
SELECT
  o.id,
  oi.product_id
FROM
  orders o
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
WHERE
  o.marketing_id IS NOT NULL
)

-- 26. Find the most popular product among buyers of 'Soybean Oil'.

WITH soybean_oil_buyer AS (
SELECT 
  DISTINCT o.customer_id AS customer_id
FROM 
  orders o
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
WHERE p.name = "Soybean Oil"
  
),

order_quantity AS(
SELECT
  oi.product_id,
  p.name,
  SUM(oi.quantity) AS total_order
FROM
  orders o
JOIN
  soybean_oil_buyer sb
ON
  o.customer_id = sb.customer_id
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
LEFT JOIN
  products p
ON
  p.id = oi.product_id
GROUP BY
  oi.product_id
)

SELECT
  name,
  total_order
FROM
  order_quantity oq
ORDER BY
  total_order DESC;
  

-- 27. Create a trigger to update last_order_date after a new order

DELIMITER //

CREATE TRIGGER 
  update_last_order_date
AFTER INSERT ON 
  orders
FOR EACH ROW
BEGIN
  update customers
  SET last_order_date = new.order_date
  WHERE id = new.customer_id 
  AND (last_order_date IS NULL OR 
           new.order_date > last_order_date);

END;
//

DELIMITER ;

-- 28. Schedule an update to refresh all last_order_date fields once daily

set global event_scheduler = on;

create event update_last_order_dates_daily
on schedule every 1 day
starts current_timestamp
on completion preserve
do
  update customers c
  set last_order_date = (
    select max(o.order_date)
    from orders o
    where o.customer_id = c.id
  );
  
-- 29. Do the highest spenders belong to the customers those spent in marketing campaings
SELECT
    o.customer_id,
    c.full_name,
    ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS total_revenue
FROM
  orders o
LEFT JOIN
  order_items oi
ON
  o.id = oi.order_id
LEFT JOIN
  products p
ON
  oi.product_id = p.id
LEFT JOIN
  
GROUP BY
  o.customer_id
LIMIT 
  10;
  
-- Top 10 highest spend customers
SELECT
  mc.id,
  ROUND(SUM(oi.quantity * p.price * (1 - p.discount_percent/100))) AS revenue,
  SUM(o.total_amount) AS cost,
  mc.budget
FROM 
  orders o
LEFT JOIN
  marketing_campaigns mc
    ON mc.id = o.marketing_id
LEFT JOIN 
  order_items oi
    ON o.id = oi.order_id
LEFT JOIN
  products p
    ON p.id = oi.product_id
WHERE
  mc.id IS NOT NULL
GROUP BY
  mc.id, mc.budget

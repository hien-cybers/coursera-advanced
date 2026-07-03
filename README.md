# Coursera Advanced

Hệ thống học trực tuyến cho lĩnh vực an toàn thông tin, xây dựng bằng PHP + MySQL, có đăng nhập JWT, phân quyền theo vai trò, mua khóa học bằng QR thanh toán, theo dõi tiến độ học và xuất chứng chỉ/hoá đơn.

## 1. Thiết kế hệ thống

### 1.1 Kiến trúc tổng quan

Hệ thống được chia thành 3 lớp chính:

| Lớp       | Thành phần                | Vai trò                                                                               |
| --------- | ------------------------- | ------------------------------------------------------------------------------------- |
| Giao diện | `*.html`, `*.css`, `*.js` | Hiển thị trang chủ, login, đăng ký, dashboard, trang admin và tương tác với API       |
| Ứng dụng  | `*.php`                   | Xử lý đăng nhập, thanh toán, quên mật khẩu, quản trị, cấp chứng chỉ, kiểm tra tiến độ |
| Dữ liệu   | MySQL / MariaDB           | Lưu người dùng, khóa học, bài học, đơn hàng, mã OTP, đánh giá, tiến độ học            |

### 1.2 Các chức năng chính

- Đăng ký, đăng nhập, đổi mật khẩu bằng OTP.
- Phân quyền theo `role`: `student`, `teacher`, `admin`.
- Danh sách khóa học, tuần học, bài học, video, quiz và flag thực hành.
- Tạo đơn hàng khi học viên đăng ký khóa học và sinh QR thanh toán.
- Admin duyệt hoặc hủy đơn hàng.
- Lưu tiến độ học và đánh giá khóa học.
- Sinh chứng chỉ và hóa đơn dạng HTML để in hoặc xuất PDF.

### 1.3 Luồng nghiệp vụ

1. Người dùng đăng ký tài khoản hoặc đăng nhập.
2. Hệ thống tạo JWT để xác thực cho các request sau đó.
3. Người dùng xem khóa học và chọn mua.
4. Backend tạo bản ghi `orders`, sinh QR thanh toán và mã ghi chú.
5. Admin kiểm tra, duyệt đơn hàng để mở quyền học.
6. Học viên học bài, lưu tiến độ vào `user_progress`.
7. Học viên gửi đánh giá vào `course_reviews`.
8. Khi hoàn thành khóa học, hệ thống sinh chứng chỉ.

### 1.4 Các API / module quan trọng

- `login.php`: xác thực người dùng, trả về JWT.
- `register.php`: tạo tài khoản học viên.
- `forgot_password.php` và `student_api.php` `/verify-otp`, `/reset-password`: đổi mật khẩu qua OTP.
- `checkout.php` và `student_api.php` `/checkout`: tạo đơn hàng và QR thanh toán.
- `admin_api.php`: quản lý đơn hàng, người dùng, doanh thu, hóa đơn.
- `courses.php`, `dashboard.php`, `coursera-script.js`: hiển thị dữ liệu học tập và thao tác UI.

### 1.5 Tính năng chi tiết theo vai trò

#### **ADMIN**

- **Quản lý đơn hàng**: xem danh sách, duyệt/hủy đơn, xóa đơn hàng bị hủy.
- **Quản lý người dùng**: xem danh sách, thêm/chỉnh sửa/xóa người dùng, gán vai trò.
- **Quản lý khóa học**: tạo/sửa/xóa khóa học, chỉnh tiêu đề, giá, badge, màu sắc, icon.
- **Quản lý nội dung**: thêm/sửa/xóa tuần học, thêm/sửa/xóa bài học (video, quiz, flag).
- **Doanh thu & Hóa đơn**: xem biểu đồ doanh thu theo ngày, xuất hóa đơn chi tiết.

#### **USER (Học viên)**

- **Xác thực & Mật khẩu**: đăng ký, đăng nhập JWT, quên mật khẩu qua OTP.
- **Mua khóa học**: xem danh sách, mua lẻ hoặc giỏ hàng, sinh QR thanh toán.
- **Học tập**: xem video bài học, làm quiz, gửi flag thực hành.
- **Theo dõi tiến độ**: lưu tiến độ bài học, kiểm tra % hoàn thành.
- **Đánh giá & Chứng chỉ**: đánh giá khóa học (sao + bình luận), tải chứng chỉ HTML/PDF, xem hóa đơn.
- **Hỗ trợ**: chatbot trả lời câu hỏi, webhook theo dõi thanh toán.

## 2. Thiết kế cơ sở dữ liệu

### 2.1 Danh sách bảng

| Bảng                | Mục đích                         | Khóa chính / trường quan trọng                                              |
| ------------------- | -------------------------------- | --------------------------------------------------------------------------- |
| `users`             | Lưu tài khoản người dùng         | `id`, `fullname`, `email`, `password_hash`, `role`                          |
| `courses`           | Lưu thông tin khóa học           | `id`, `title`, `price`, `original_price`, `badge`, `color`, `icon`          |
| `course_weeks`      | Chia nội dung khóa học theo tuần | `id`, `course_id`, `week_number`, `title`                                   |
| `lessons`           | Lưu bài học video / quiz / flag  | `id`, `week_id`, `type`, `title`, `duration`, `video_url`, `quiz_*`, `flag` |
| `orders`            | Lưu đơn hàng mua khóa học        | `id`, `user_id`, `course_name`, `price`, `current_step`                     |
| `course_reviews`    | Lưu đánh giá khóa học            | `id`, `user_id`, `course_id`, `rating`, `comment`                           |
| `user_progress`     | Lưu tiến độ hoàn thành bài học   | `user_id`, `lesson_id`, `completed_at`                                      |
| `discount_codes`    | Lưu mã giảm giá                  | `code`, `discount_rate`, `is_active`                                        |
| `activation_tokens` | Lưu token kích hoạt khóa học     | `token`, `course_id`, `is_used`                                             |
| `otp_codes`         | Lưu OTP khôi phục mật khẩu       | `email`, `otp`, `expires_at`                                                |

### 2.2 Quan hệ giữa các bảng

- `users` 1 - n `orders`
- `users` 1 - n `course_reviews`
- `users` 1 - n `user_progress`
- `courses` 1 - n `course_weeks`
- `course_weeks` 1 - n `lessons`
- `courses` 1 - n `course_reviews`
- `courses` 1 - n `activation_tokens`
- `orders.course_name` đang lưu mã khóa học (`course_id`) thay vì tên hiển thị

### 2.3 Ý nghĩa thiết kế dữ liệu

- `users` dùng `password_hash` để lưu mật khẩu đã mã hóa.
- `orders.current_step` dùng để theo dõi trạng thái đơn hàng: chờ duyệt, đã thanh toán, đã hủy.
- `lessons` hỗ trợ cả video học tập lẫn câu hỏi quiz và flag thực hành.
- `user_progress` giúp xác định bài nào đã hoàn thành để tính tiến độ học.
- `otp_codes` chỉ có hiệu lực ngắn hạn, phục vụ quy trình đặt lại mật khẩu.

## 3. Tóm tắt ngắn cho slide

- Nền tảng: PHP + MySQL, giao diện HTML/CSS/JS.
- Xác thực: JWT + phân quyền theo vai trò.
- Nghiệp vụ: đăng ký, học khóa học, thanh toán QR, duyệt đơn, lưu tiến độ, cấp chứng chỉ.
- Dữ liệu: mô hình hóa theo users, courses, lessons, orders, progress, reviews, OTP.

## 4. Cài đặt nhanh

1. Import file `database.sql` vào MySQL/MariaDB.
2. Cấu hình lại thông tin kết nối trong `db_connect.php` nếu cần.
3. Chạy `composer install` để cài thư viện JWT.
4. Đưa project vào web server như XAMPP, sau đó mở `coursera-index.html` hoặc các trang tương ứng.

## 5. Ghi chú

- Dự án đang dùng JWT secret cố định trong code PHP.
- Một số endpoint trả về HTML động để in hoá đơn và chứng chỉ.
- Dữ liệu mẫu trong `database.sql` đã gồm khóa học, bài học, đơn hàng, OTP và người dùng mẫu.

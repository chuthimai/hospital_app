# hospital_app

Đây là app cho bệnh viện. App gồm các tính năng: Đặt lịch, xem lịch đã hẹn, xem các dịch vụ cần làm, xem thông tin bác sỹ của bệnh viện, xem đơn thuốc, xem thông tin hoá đơn,...

## Công nghệ sử dụng
- Flutter 3.19.0
- Dart 3.3.0
- Pod 1.16.2

## Để bắt đầu

Dự án này được viết bằng Flutter, do đó để có thể build được cần cài đặt Flutter.

Cài đặt Flutter theo hướng dẫn: [Hướng dẫn](https://docs.flutter.dev/get-started/install)

Dưới đây là một số nguồn tài liệu tham khảo:

- [Tài liệu chính thức](https://docs.flutter.dev/)
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

---
## Usecase tổng quan
<img src="readme_assets/tổng quan hệ thống khám bệnh.jpg" width="500"/>

## Sơ đồ lớp của mobile
<img src="readme_assets/Class Diagram1.jpg" width="800"/>

## CSDL trên server
<img src="readme_assets/Entity Relationship Diagram2.jpg" width="800"/>

## Cấu trúc thư mục

Sử dụng tổ chức code theo kiến trúc Clean Architecture kết hợp với MVVM, chia theo từng chức năng của app.

| Cấu trúc tổng quan                                | Cấu trúc layer trong mỗi tính năng                         |
|---------------------------------------------------|------------------------------------------------------------|
| <img src="readme_assets/mobile.jpg" width="400"/> | <img src="readme_assets/featureA mobile.jpg" width="300"/> |

```text
├── .gitignore                      # Quy định file/thư mục bỏ qua khi commit Git
├── .metadata                      
├── README.md                       # Tài liệu mô tả project
├── analysis_options.yaml
├── android/                        # Code native Android (Gradle, AndroidManifest…)
├── devtools_options.yaml
├── ios/                            # Code native iOS (Xcode, Info.plist…)
├── lib/                            # Thư mục chính chứa source code Dart
│    ├── fakedata/                  # Dữ liệu giả để test (sẽ xoá khi có be)
│    ├── features/                  # Chia folder theo tính năng chính (theo clean architecture + MVVM)
│    │   ├── auth/                  # Tính năng Authentication (đăng nhập/đăng ký)
│    │   │   ├── data/              # Tầng data: tầng truy xuất và xử lý dữ liệu
│    │   │   │   ├── datasources/                    # Remote API + Local DB (Isar, SharedPref): dùng trong repositories impl
│    │   │   │   ├── models/                         # Chuyển đổi dữ liệu Data <-> Object <-> Entity: dùng trong datasources và repositories impl
│    │   │   │   └── repositories/                   # Repository implementation từ tầng domain (Nơi xử lý logic về dữ liệu)
│    │   │   ├── domain/            # Tầng domain: Business logic thuần (Tầng này sẽ đc gọi trong lớp presentation)
│    │   │   │   ├── entities/                       # Chứa Entity (Lớp chứa các trường cần trong việc gửi/nhận dữ liệu)
│    │   │   │   └── repositories/                   # Repository (interface)
│    │   │   └── presentation/      # Tầng UI (giao diện + state management)
│    │   │       ├── cubit/                          # Chứa cubit, state, event
│    │   │       ├── view/                           # Các page chính (LoginPage, RegisterPage...)
│    │   │       └── widgets/                        # Các thành phần nhỏ của page chính
│    │   ├── appointment/           # Tính năng đặt lịch hẹn
│    │   ├── home/                  # Màn hình trang chủ
│    │   ├── notification/          # Tính năng thông báo
│    │   ├── profile/               # Tính năng hồ sơ cá nhân
│    │   ├── setting/               # Cài đặt gồm: đổi mật khẩu, đổi sđt, thông báo, mode
│    │   ├── view_doctor/             # Xem danh sách mã QR/code còn hiệu lực
│    │   ├── view_followup_appointment/   # Xem lịch hẹn tái khám
│    │   ├── view_invoice/          # Xem hoá đơn
│    │   ├── view_medical_record/   # Xem hồ sơ bệnh án
│    │   ├── view_prescription/     # Xem đơn thuốc
│    │   ├── view_service/          # Xem dịch vụ
│    │   └── view_transfer_letter/  # Xem giấy chuyển viện
│    ├── main.dart
│    ├── share/                     # Code dùng chung (core/shared)
│    │   ├── constants/             # Các hằng số (keys, strings…)
│    │   ├── dio/                   # Viết các lớp kết nối với api theo Singleton pattern
│    │   ├── db/                    # Viết các lớp kết nối với db (isar) theo Singleton pattern
│    │   ├── navigation/            # Quản lý route/navigation
│    │   ├── notification/          # Quản lý thông báo đẩy
│    │   ├── themes/                # Định nghĩa theme (màu sắc, typography…)
│    │   ├── types/                 # Định nghĩa kiểu dữ liệu (enums, typedef…)
│    │   ├── utils/                 # Hàm tiện ích, helper function
│    │   └── widgets/               # Widget tái sử dụng toàn app
│    └── splash_screen.dart         # Màn hình khởi động app
├── linux/         # Code native cho Linux desktop
├── macos/         # Code native cho macOS desktop
├── web/           # Code hỗ trợ chạy trên Web
└── windows/       # Code native cho Windows desktop
```
## CSDL


## Nhánh build
Các bước thực hiện triển khai:
- Bước 1: Lấy toàn bộ mã nguồn của repo GitHub vào môi trường runner
- Bước 2: Cài Flutter SDK
- Bước 3: Cài đặt các thư viện phụ thuộc (dependency) cho dự án
- Bước 4: Tạo lại file firebase_options.dart từ GitHub Secrets
- Bước 5: Phân tích code (hiển thị warning nhưng ko dừng)
- Bước 6: Chạy testcase (nếu có)
- Bước 7: Build file APK
- Bước 8: Lưu file APK ra artifacts để tải về và gửi link tải app đến email tài khoản test đã đăng ký. 

## Sơ đồ triển khai
<img src="readme_assets/Deployment%20Diagram%20-%20HIS.jpg" /> 

## Kết quả sau khi chạy
| Trang Login                                  | Trang chủ                                    |
|----------------------------------------------|----------------------------------------------|
| <img src="readme_assets/1.png" width="200"/> | <img src="readme_assets/2.png" width="200"/> | 

| Đặt lịch                                     | Đặt lịch                                     | Danh sách lịch khám                          | 
|----------------------------------------------|----------------------------------------------|----------------------------------------------|
| <img src="readme_assets/3.png" width="200"/> | <img src="readme_assets/4.png" width="200"/> | <img src="readme_assets/5.png" width="200"/> |

| Danh sách bác sĩ                             | Thông tin bác sĩ chi tiết                    | Danh sách hoá đơn                              | Hoá đơn chi tiết                               | Mã QR thanh toán                             |
|----------------------------------------------|----------------------------------------------|------------------------------------------------|------------------------------------------------|----------------------------------------------|
| <img src="readme_assets/6.png" width="200"/> | <img src="readme_assets/7.png" width="200"/> | <img src="readme_assets/8.0.png" width="200"/> | <img src="readme_assets/8.1.png" width="200"/> | <img src="readme_assets/8.png" width="200"/> |


| Xem bệnh án đang khám                        | Xem dịch vụ có hình ảnh                       | Xem dịch vụ có bảng                           | Xem dịch vụ văn bản                           | Bệnh án đã đóng (PDF)                         |
|----------------------------------------------|-----------------------------------------------|-----------------------------------------------|-----------------------------------------------|-----------------------------------------------|
| <img src="readme_assets/9.png" width="200"/> | <img src="readme_assets/10.png" width="200"/> | <img src="readme_assets/11.png" width="200"/> | <img src="readme_assets/12.png" width="200"/> | <img src="readme_assets/15.png" width="200"/> |

| Xem đơn thuốc chi tiết                        |
|-----------------------------------------------|
| <img src="readme_assets/14.png" width="200"/> |

---
## Cách chạy project

- Clone source code
```shell
git clone https://github.com/chuthimai/hospital_app.git
```
- Cài đặt dependencies
```shell
flutter pub get
```
- Cấu hình Firebase
```shell
# cai dat
curl -sL https://firebase.tools | bash 

# dang nhap
firebase login 

# ds cac project dc luu
firebase projects:list 

# Cài đặt FlutterFire CLI bằng cách chạy lệnh sau từ bất kỳ thư mục nào
dart pub global activate flutterfire_cli 
```

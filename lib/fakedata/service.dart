import 'package:hospital_app/features/view_service/domain/entities/location.dart';
import 'package:hospital_app/features/view_service/domain/entities/service.dart';

/// Fake Location (các khoa, phòng ban)
final hospital = Location(id: 1, name: "Bệnh viện Đa khoa Trung ương");
final khoaKhamBenh = Location(id: 2, name: "Khoa Khám bệnh", partOf: hospital);
final khoaXetNghiem = Location(id: 3, name: "Khoa Xét nghiệm", partOf: hospital);
final khoaChanDoanHinhAnh = Location(id: 4, name: "Khoa Chẩn đoán hình ảnh", partOf: hospital);

/// Danh sách dịch vụ mẫu
List<Service> fakeServices = [
  Service(
    id: 1,
    name: "Khám nội tổng quát",
    price: 150000.0,
    location: khoaKhamBenh,
    isCompleted: false,
  ),
  Service(
    id: 2,
    name: "Khám tim mạch",
    price: 200000.0,
    location: khoaKhamBenh,
  ),
  Service(
    id: 3,
    name: "Khám da liễu",
    price: 180000.0,
    location: khoaKhamBenh,
  ),
  Service(
    id: 4,
    name: "Xét nghiệm máu tổng quát",
    price: 250000.0,
    location: khoaXetNghiem,
    extraDetails: "Kiểm tra công thức máu, đường huyết, mỡ máu",
  ),
  Service(
    id: 5,
    name: "Xét nghiệm nước tiểu",
    price: 100000.0,
    location: khoaXetNghiem,
    isCompleted: false,
  ),
  Service(
    id: 6,
    name: "Xét nghiệm sinh hóa",
    price: 220000.0,
    location: khoaXetNghiem,
  ),
  Service(
    id: 7,
    name: "Chụp X-quang phổi",
    price: 300000.0,
    location: khoaChanDoanHinhAnh,
  ),
  Service(
    id: 8,
    name: "Chụp CT Scanner sọ não",
    price: 1500000.0,
    location: khoaChanDoanHinhAnh,
  ),
  Service(
    id: 9,
    name: "Siêu âm bụng tổng quát",
    price: 400000.0,
    location: khoaChanDoanHinhAnh,
    isCompleted: false,
  ),
  Service(
    id: 10,
    name: "Chụp MRI cột sống thắt lưng",
    price: 3000000.0,
    location: khoaChanDoanHinhAnh,
    extraDetails: "Phát hiện thoát vị đĩa đệm, hẹp ống sống",
  ),
];

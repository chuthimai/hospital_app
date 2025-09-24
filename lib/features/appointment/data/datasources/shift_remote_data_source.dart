import '../models/shift_api_model.dart';

abstract class ShiftRemoteDataSource {
  Future<List<ShiftApiModel>> getAllShifts();
}

class ShiftRemoteDataSourceImpl implements ShiftRemoteDataSource {
  @override
  Future<List<ShiftApiModel>> getAllShifts() async {
    // TODO: Kết hợp API sau
    return [
      ShiftApiModel(identifier: 3, name: "Ca sáng", startTime: "08:00:00", endTime: "12:00:00"),
      ShiftApiModel(identifier: 4, name: "Ca chiều", startTime: "13:00:00", endTime: "17:00:00"),
      ShiftApiModel(identifier: 5, name: "Ca tối", startTime: "17:00:00", endTime: "22:00:00"),
    ];
  }

}
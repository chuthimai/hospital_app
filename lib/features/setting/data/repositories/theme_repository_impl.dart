import '../../domain/repositories/theme_repository.dart';
import '../datasources/theme_local_data_source.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource _dataSource;

  ThemeRepositoryImpl({required ThemeLocalDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<bool> isCurrentDarkTheme() async {
    final isDarkMode = await _dataSource.isCurrentDarkTheme();
    return isDarkMode;
  }

  @override
  Future<void> switchTheme(bool isDarkMode) async {
    await _dataSource.switchTheme(isDarkMode);
  }
}

class IdFormatter {
  static String formatTwelveNumber(int id) {
    return id.toString().padLeft(12, '0');
  }

  static String formatFiveNumber(int id) {
    return id.toString().padLeft(5, '0');
  }
}

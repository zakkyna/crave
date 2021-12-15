extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String replaceLast(String substring, String replacement) {
    int index = lastIndexOf(substring);
    if (index == -1) return this;
    return this.substring(0, index) +
        replacement +
        this.substring(index + substring.length);
  }
}

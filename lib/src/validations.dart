// Determine if a String is digit
bool isDigit(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

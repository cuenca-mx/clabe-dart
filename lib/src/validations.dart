// Determine if a String is digit
bool isDigit(String s) {
  if(s == null) {
    return false;
  }
  int N = s.length;
  for (var i = 0; i < N; i++) {
    try {
      int.parse(s[i]);
    } catch (e) {
      return false;
    }
  }
  return true;
}
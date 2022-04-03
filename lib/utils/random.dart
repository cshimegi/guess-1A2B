import 'dart:math';

class RandomGenerator {
  static int anyNumberBetween(int min, int max) {
    var random = Random();
    return min + random.nextInt(max - min);
  }

  static String anyAlphabet(bool isLowerCase) {
    final int min = isLowerCase ? 97 : 65;
    int charCode = anyNumberBetween(min, min + 25);
    return String.fromCharCode(charCode);
  }

  static List<String> alphabets(int total, bool isLowerCase) {
    var random = Random();
    final int min = isLowerCase ? 97 : 65;
    return List.generate(
        total, (_) => String.fromCharCode(min + random.nextInt(26)));
  }
}

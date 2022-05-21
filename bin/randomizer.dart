import 'dart:math';

extension Randomizer on int {
  int randomize(int scale) {
  Random random = new Random();
  return random.nextInt(scale);
  }
}
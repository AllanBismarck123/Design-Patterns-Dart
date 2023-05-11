import 'package:design_patterns/adapter/roundPeg.dart';

class RoundHole {

  double _radius = 0;

  RoundHole(radius) {
    _radius = radius;
  }

  double getRadius() {
    return _radius;
  }

  bool fits(RoundPeg peg) {
    return getRadius() >= peg.getRadius();
  }

}
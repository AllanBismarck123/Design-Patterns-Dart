import 'package:design_patterns/factory/polygon.dart';

class Triangle implements Polygon {

  @override
  String createPolygon() {
    return "Triangle";
  }
}
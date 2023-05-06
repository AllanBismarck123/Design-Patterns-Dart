import 'package:design_patterns/factory/polygon.dart';
import 'package:design_patterns/factory/polygonFactory.dart';

class Square implements Polygon  {

  @override
  String createPolygon() {
    return "Square";
  }
}
import 'package:design_patterns/factory/pentagol.dart';
import 'package:design_patterns/factory/polygon.dart';
import 'package:design_patterns/factory/square.dart';
import 'package:design_patterns/factory/triangle.dart';

class PolygonFactory {
  late Polygon? polygon;

   Map<int, Polygon> polygons = {
      3: Triangle(), 
      4: Square(),
      5: Pentagol()
    };

  Polygon? getPolygon(int numberOfSides) {
    for (final entry in polygons.entries) {
      if (entry.key == numberOfSides) {
        return entry.value;
      }
    }
    return null;
  }
}
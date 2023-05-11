import 'package:design_patterns/adapter/roundPeg.dart';
import 'package:design_patterns/adapter/squarePeg.dart';
import 'package:design_patterns/adapter/squarePegAdapter.dart';

import 'roundHole.dart';

class Client {

  run() {
    RoundHole hole = RoundHole(5.0);
    RoundPeg rpeg = RoundPeg(5.0);
    print(hole.fits(rpeg)); // true

    SquarePeg smallSqpeg = SquarePeg(5.0);
    SquarePeg largeSqpeg = SquarePeg(10.0);

    SquarePegAdapter smallSqpegAdapter = SquarePegAdapter(smallSqpeg);
    SquarePegAdapter largeSqpegAdapter = SquarePegAdapter(largeSqpeg);
    print(hole.fits(smallSqpegAdapter)); // true
    print(hole.fits(largeSqpegAdapter)); // false  
  }
}
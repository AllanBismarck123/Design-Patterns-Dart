import 'dart:math';
import 'package:design_patterns/adapter/roundPeg.dart';
import 'package:design_patterns/adapter/squarePeg.dart';

class SquarePegAdapter extends RoundPeg {

  SquarePeg? _peg;

  SquarePegAdapter(SquarePeg peg) : super(0.0) {
    _peg = peg;
  }

  @override
  double getRadius() { 
    return _peg!.getWidth() * sqrt(2)/2;
  }

}
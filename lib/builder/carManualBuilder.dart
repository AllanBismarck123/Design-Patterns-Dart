import 'package:design_patterns/builder/builder.dart';

import 'manual.dart';

class ManualBuilder implements Builder {
  Manual? _manual;

  @override
  reset() {
    _manual = Manual();
  }

  @override
  setEngine(engine) {
    _manual?.engine = "Esse carro possui motor $engine";
  }

  @override
  setGPS(gps) {
    if(gps) {
      _manual?.gps = "Esse carro possui GPS";
    } else {
      _manual?.gps = "Esse carro não possui GPS";
    }
  }

  @override
   setSeats(numberSeats) {
    _manual?.seats = "Esse carro possui $numberSeats assentos";
  }

  @override
  setTripComputer(tripComputer) {
    if(tripComputer) {
      _manual?.tripComputer = "Esse carro possui computador de bordo";
    } else {
      _manual?.gps = "Esse carro não possui computador de bordo";
    }
  }

  Manual? getProduct() {
    var product = _manual;
    reset();
    return product;
  } 
}
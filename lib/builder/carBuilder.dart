import 'package:design_patterns/builder/builder.dart';

import 'car.dart';

class CarBuilder implements Builder {
  Car? _car;

  @override
  reset() {
    _car = Car();
  }

  @override
  setEngine(engine) {
    _car?.engine = engine;
  }

  @override
  setGPS(gps) {
    _car?.gps = gps;
  }

  @override
  setSeats(numberSeats) {
    _car?.seats = numberSeats;
  }

  @override
  setTripComputer(tripComputer) {
    _car?.tripComputer = tripComputer;
  }

  Car? getProduct() {
    var product = _car;
    reset();
    return product;
  }
      
}
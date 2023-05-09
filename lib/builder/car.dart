class Car {
  int? seats;
  String? engine;
  bool? tripComputer;
  bool? gps;
  String? model;

  @override
  String toString() {
    return "Seats: $seats\nEngine: $engine\nTripComputer: $tripComputer\nGPS: $gps\n";
  }
}

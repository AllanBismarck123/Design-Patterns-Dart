import 'builder.dart';

class Director {
  
  constructSportsCar(Builder builder) {
      builder.reset();
      builder.setSeats(2);
      builder.setEngine("Sport");
      builder.setTripComputer(true);
      builder.setGPS(false);
  }

  constructSUVCar(Builder builder) {
      builder.reset();
      builder.setSeats(5);
      builder.setEngine("SUV");
      builder.setTripComputer(true);
      builder.setGPS(true);
  }

  constructConvesibleCar(Builder builder) {
      builder.reset();
      builder.setSeats(4);
      builder.setEngine("Convesible");
      builder.setTripComputer(true);
      builder.setGPS(true);
  }

}
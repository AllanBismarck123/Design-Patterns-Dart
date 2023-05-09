import 'car.dart';
import 'carBuilder.dart';
import 'carManualBuilder.dart';
import 'director.dart';
import 'manual.dart';

class Application {

  makeCar(String model) {
    Director director = Director();

    CarBuilder carBuilder = CarBuilder();
    ManualBuilder manualBuilder = ManualBuilder();

    switch(model) {
      case "Sport":
        director.constructSportsCar(carBuilder);
        director.constructSportsCar(manualBuilder);
        break;
      case "SUV":
        director.constructSUVCar(carBuilder);
        director.constructSUVCar(manualBuilder);
        break;
      default: 
        director.constructConvesibleCar(carBuilder);
        director.constructConvesibleCar(manualBuilder);
    }
    
    Car? car = carBuilder.getProduct();    
    Manual? manual = manualBuilder.getProduct();

    return "${car.toString()}\n\n${manual.toString()}";
  }
}
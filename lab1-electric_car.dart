import 'car.dart';

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);

  void printProperties() {
    super.printProperties();
    print('Battery Life: $batteryLife kWh');
  }
}

void main() {
  ElectricCar myElectricCar = ElectricCar('Tesla', 'Model S', 2022, 100);
  myElectricCar.printProperties();
}

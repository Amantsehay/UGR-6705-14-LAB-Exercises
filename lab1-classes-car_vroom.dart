import 'car.dart';

extension CarVroom on Car {
  void vroom() {
    print('Vroom Vroom');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Corolla', 2022);
  myCar.vroom();
}

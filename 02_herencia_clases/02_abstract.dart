abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print("vehiculo encendido");
  }

  void apagar() {
    encendido = false;
    print("vehiculo apagado");
  }

  bool revisarMotor();
}

class coche extends Vehiculo {
  int km = 15000;

  // Implementa el metodo de la clase abstracta
  @override
  bool revisarMotor() {
    return false;
  }
}

void main() {
  // La clase abstract no puede instanciar
  // final tesla = vehiculo();

  final tesla = coche();
  tesla.encender();

  print("Revisar: ${tesla.revisarMotor()}");
}

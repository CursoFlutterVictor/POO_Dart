class Propiedades {
  bool encendido = false;

  void encender() {
    encendido = true;
    print("vehiculo encendido");
  }

  void apagar() {
    encendido = false;
    print("vehiculo apagado");
  }
}

// La clase Coche hereda de Propiedades y añade cosas
class Coche extends Propiedades {
  int km = 15000;
}

void main() {
  final Coche c = new Coche();
  c.encender();
  c.apagar();
  print(c.km);
}

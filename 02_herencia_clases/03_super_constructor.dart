class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNonmbre() {
    print("Nombre: $nombre\nEdad: $edad");
  }
}

class Cliente extends Persona {
  // con "super" ejecutamos el constructor de la clase base
  Cliente(String nombreCliente, int edadCliente)
      : super(nombreCliente, edadCliente) {}
}

void main() {
  Cliente c = Cliente("paco", 18);

  c.imprimirNonmbre();
}

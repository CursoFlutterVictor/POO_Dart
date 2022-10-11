class Logger1 {
  // Los mixins son clases abstractas. No pueden crearse instancias.
  // No pueden contener constructores
  // Logger();

  void imprimir1(String texto) {
    final DateTime hoy = DateTime.now();
    print("$hoy : $texto");
  }
}

class Logger2 {
  void imprimir2(String texto) {
    print("LOG: $texto");
  }
}

// Clase Logger3 hereda de 1 y 2.
// OJO!!! Si contienen metodos con el mismo nombre se ejecuta el de la
//        ultima clase heredada (ultimo with)
class Logger3 extends Logger1 with Logger2 {}

void main() {
  final astro = Logger3();
  astro.imprimir1("hola");
  astro.imprimir2("adios");
}

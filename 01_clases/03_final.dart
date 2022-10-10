class Cuadrado {
  final int lado;
  final int area;

  /* Un set no puede ser inicializado como final

  Cuadrado(int lado, int area) {
    this.lado = lado;
    this.area = area;
  }

  */

  // Una solucion es poner :
  // Inicializa los valores a la vez que

  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado {}
}

void main() {
  final Cuadrado miCuadrado = new Cuadrado(2);
  print(miCuadrado);
}

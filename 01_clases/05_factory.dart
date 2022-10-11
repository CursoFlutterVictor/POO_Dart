class Rectangulo {
  late int base;
  late int altura;
  late int area;
  late String tipo;

  // cuadrado: base = altura, rectangulo base != altura

  // El constructor fatory sirve para identificar que tipo de constructor se
  // adecua mejor a nuestra clase

  factory Rectangulo(int base, int altura) {
    if (base == altura)
      return Rectangulo.cuadrado(base);
    else
      return Rectangulo.rectangulo(base, altura);
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = "Cuadrado";
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = "Rectangulo";
  }
}

void main() {
  Rectangulo figura1 = new Rectangulo(3, 3);
  print(figura1.tipo);

  Rectangulo figura2 = new Rectangulo(5, 3);
  print(figura2.tipo);
}

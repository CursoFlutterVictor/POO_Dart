/*
Ejercicio: Inicializar una clase rectangulo dobde las propiedades sean base, altura y area

- La base y la altura se pueden modificar mientras que el area va a a ser el
  resultado de base * altura

- Hacer el ejercicio utilizando get y set y posteriormente utilizando el 
  constructor de la clase

Ejercicio: En el archivo constructores_get_set crear un contructor donde pueda
modificar la edad y no el nombre

*/

class Rectangulo {
  late int _base;
  late int _altura;
  late int _area;

  // Constructor
  Rectangulo(int base, int altura) {
    _base = base;
    _altura = altura;
    _area = base * altura;
  }

  // Get y Set
  int get base {
    return _base;
  }

  int get altura {
    return _altura;
  }

  int get area {
    return _area;
  }

  set base(int base) {
    _base = base;
    _area = base * altura;
  }

  set altura(int altura) {
    _altura = altura;
    _area = base * altura;
  }

  // Con override indicamos que sobreescribimos el metodo "padre"
  @override
  String toString() {
    return ("BASE  : ${_base}\nALTURA: ${_altura}\nAREA  : ${_area}");
  }
}

void main() {
  Rectangulo r = new Rectangulo(5, 2);

  print(r.toString());

  r.altura = 6;

  print(r.toString());
}

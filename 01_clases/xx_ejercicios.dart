/*
Ejercicio: 
  - Inicializar una clase rectangulo dobde las propiedades sean base, altura y area

  - La base y la altura se pueden modificar mientras que el area va a a ser el
    resultado de base * altura

  - Hacer el ejercicio utilizando get y set y posteriormente utilizando el 
    constructor de la clase

Ejercicio: 

  - En el archivo constructores_get_set crear un contructor donde pueda
  modificar la edad y no el nombre

Ejercicio: 
  - Hacer el ejercicio para calcular el resultado de una asignatura
    con dos examenes. 

  - La clase asignatura consta de 1 tipo que sera el nombre de 
    la asignatura, resultado del primer examen, como numero decimal y resultado
    del segundo examen como numero decimal.

  - Si la media de los dos examenes es menor a 5 el constructor adecuado sera el
    constructor "suspenso" y si el resultado es >= 5 "aprobado".
  
  - Ambos constructores tendran una variable "tipo" a mostrar en pantalla

*/

class Rectangulo {
  late int _base;
  late int _altura;

  // Constructor
  Rectangulo(int base, int altura) {
    _base = base;
    _altura = altura;
  }

  // Get y Set
  int get base {
    return _base;
  }

  int get altura {
    return _altura;
  }

  int get area {
    return base * altura;
  }

  set base(int base) {
    _base = base;
  }

  set altura(int altura) {
    _altura = altura;
  }

  // Con override indicamos que sobreescribimos el metodo "padre"
  @override
  String toString() {
    return ("BASE  : ${_base}\nALTURA: ${_altura}\nAREA  : ${area}");
  }
}

void main() {
  Rectangulo r = new Rectangulo(5, 2);

  print(r.toString());

  r.altura = 6;

  print(r.toString());
}

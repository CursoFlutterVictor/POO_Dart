class Persona {
  // Campos o propiedades. Los privados empiezan por _
  late String nombre;
  late int edad;
  String _bio = "Hola esto es una propiedad privada";

  // Constructor
  Persona({
    this.edad = 0,
    this.nombre = "",
  });

  // Get y Set
  set bio(String texto) {
    _bio = texto;
  }

  String get bio {
    return _bio;
  }

  // Con override indicamos que sobreescribimos el metodo "padre"
  @override
  String toString() {
    return 'Nombre: ${nombre}, Edad: ${edad}';
  }
}

class herramientas {
  static final List<String> listado = ["martillo", "llave", "destornillador"];
  static const List<String> listadoConst = [
    "martillo",
    "llave",
    "destornillador"
  ];

  static void imprimirListado() => listado.forEach((element) {
        print(element);
      });
}

void main() {
  // crasheo, porque es const
  //herramientas.listadoConst.add("tenazas");

  herramientas.listado.add("tenazas");

  herramientas.imprimirListado();

  // Podemos añadir al metodo static mas herramientas
  // pero solo nos interesa leerlos
}

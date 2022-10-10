import '02_contructores_get_set.dart';

void main() {
  print("\nEJEMPLOS CLASES\n");

  final persona1 = new Persona(edad: 39, nombre: "Victor");

  print("");

  print(persona1);
  print("NOMBRE: ${persona1.nombre}");
  print("EDAD  : ${persona1.edad}");

  persona1.bio = "Establecido via setter"; // Acceso a traves de setter
  print("BIO   : ${persona1.bio}"); // Acceso a traves de getter, es privado.

  print(persona1.toString());
}

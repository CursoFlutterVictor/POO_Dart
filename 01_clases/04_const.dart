class Location {
  final double lat;
  final double long;

  static String var1 = "valor 1";
  static const String var2 = "valor 2";

  // Los constructores constantes se inicializan en el mismo lugar de memoria
  const Location({required this.lat, required this.long});
}

void main() {
  Location.var1 = "valor 1 modificado 1";
  print(Location.var1);

  final sanFrancisco1 = Location(lat: 18.2313, long: 33.21231);
  final sanFrancisco2 = Location(lat: 18.2332, long: 33.21231);
  final sanFrancisco3 = Location(lat: 18.2345, long: 33.21231);

  print(sanFrancisco1 == sanFrancisco2); // Diferente pos.mem
  //FALSE

  print(sanFrancisco2 == sanFrancisco3); // Diferente pos.memo
  //FALSE

  Location.var1 = "valor 1 modificado 2";
  print(Location.var1);

  const sanFrancisco4 = const Location(lat: 18.0000, long: 33.21231);
  const sanFrancisco5 = const Location(lat: 18.0001, long: 33.21231);
  const sanFrancisco6 = const Location(lat: 18.0001, long: 33.21231);

  print(sanFrancisco4 == sanFrancisco5); // Diferente pos.mem y valores
  //FALSE

  print(sanFrancisco5 == sanFrancisco6); // Misma pos.mem y valores
  //TRUE

  Location.var1 = "valor 1 modificado 3";
  print(Location.var1);
  print(Location.var2);
}

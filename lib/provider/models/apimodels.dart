class Api_model2 {
  final String titel1;
  final String emage_adres;

  Api_model2({required this.titel1, required this.emage_adres});
  factory Api_model2.fromJson(Map<String, dynamic> jsone) {
    return Api_model2(titel1: jsone['titel'], emage_adres: jsone['image']);
  }
}

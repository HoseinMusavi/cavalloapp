class Api_model {
  final String titel1;
  final String prise1;

  Api_model({required this.titel1, required this.prise1});
  factory Api_model.fromJson(Map<String, dynamic> jsone) {
    return Api_model(titel1: jsone['titel'], prise1: jsone['prise']);
  }
}

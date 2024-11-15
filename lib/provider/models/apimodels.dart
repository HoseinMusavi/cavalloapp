class Api_model2 {
  final String titele;
  final String picture;
  final String body;
  final String like;
  final String view;
  final String id;

  Api_model2({
    required this.titele,
    required this.picture,
    required this.body,
    required this.like,
    required this.view,
    required this.id,
  });
  factory Api_model2.fromJson(Map<String, dynamic> jsone) {
    return Api_model2(
      titele: jsone['titele'],
      picture: jsone['picture'],
      body: jsone['body'],
      like: jsone['like'],
      view: jsone['view'],
      id: jsone['id'],
    );
  }
}

class Api_model {
  final String name;
  final String body;
  final String pictuer;
  final String likes;

  Api_model({
    required this.name,
    required this.body,
    required this.pictuer,
    required this.likes,
  });
  factory Api_model.fromJson(Map<String, dynamic> jsone) {
    return Api_model(
        name: jsone['name'],
        body: jsone['body'],
        pictuer: jsone['pictuer'],
        likes: jsone['likes']);
  }
}

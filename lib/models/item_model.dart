class ItemModel {
  ItemModel({
    required this.name,
    required this.image});

  String name;
  String image;

  factory ItemModel.fromJson(dynamic json) => ItemModel(
      name: json["name"],
      image: json["image"]
    );

  dynamic toJson() => {
    "name": name,
    "image": image
  };
}
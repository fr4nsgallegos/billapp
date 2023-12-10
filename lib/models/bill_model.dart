class BillModel {
  String product;
  double price;
  String type;

  BillModel({
    required this.product,
    required this.price,
    required this.type,
  });

  Map<String, dynamic> toJson() => {
        "product": product,
        "price": price,
        "type": type,
      };

  factory BillModel.fromJson(Map<String, dynamic> json) => BillModel(
        product: json["product"],
        price: double.parse(json["price"].toString()),
        type: json["type"],
      );
}

class BillModel {
  String product;
  double price;
  String type;

  BillModel({
    required this.product,
    required this.price,
    required this.type,
  });

  convertirAMap() => {
        "product": product,
        "price": price,
        "type": type,
      };
}

import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  String product;
  String type;
  double price;
  ItemWidget({
    required this.product,
    required this.type,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(
          Icons.shopping_cart,
        ),
        title: Text(product),
        subtitle: Text(type),
        trailing: Text("S/ $price"),
      ),
    );
  }
}

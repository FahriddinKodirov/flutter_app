import 'dart:convert';

class Drug {
  num? id;
  String? name;
  String? description;
  String? imageUrl;
  num? price;
  num? quantity;

  Drug({required this.id,
        required this.name,
        required this.description,
        required this.imageUrl,
        required this.price,
        required this.quantity});

  factory Drug.fromJson(Map<String,dynamic> jsonData){
    num id = jsonData['id']?? 0;
    String name = jsonData['name']?? '';
    String description = jsonData['description']?? '';
    String imageUrl = jsonData['imageUrl']?? '';
    num price = jsonData['price']?? 0;
    num quantity = jsonData['quantity']?? 0;
    return Drug(id: id, name: name, description: description, imageUrl: imageUrl, price: price, quantity: quantity);
  }
}


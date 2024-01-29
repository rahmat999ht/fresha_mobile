import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ModelProduct {
  final String id;
  final String image;
  final String name;
  final String hastagMl;
  final String category;
  final String desc;
  final int price;
  final int stock;
  final DateTime createdAt;
  final DateTime updatedAt;
  ModelProduct({
    required this.id,
    required this.image,
    required this.name,
    required this.hastagMl,
    required this.category,
    required this.desc,
    required this.price,
    required this.stock,
    required this.createdAt,
    required this.updatedAt,
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'name': name,
      'hastag_ml': hastagMl,
      'category': category,
      'desc': desc,
      'price': price,
      'stock': stock,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
    };
  }

  factory ModelProduct.fromMap(Map<String, dynamic> map) {
    return ModelProduct(
      id: map['id'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      hastagMl: map['hastag_ml'] as String,
      category: map['category'] as String,
      desc: map['desc'] as String,
      price: map['price'] as int,
      stock: map['stock'] as int,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelProduct.fromJson(String source) => ModelProduct.fromMap(json.decode(source) as Map<String, dynamic>);
}

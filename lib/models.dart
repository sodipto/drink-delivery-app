import 'package:flutter/material.dart';

class Product {
  String name;
  String color;
  String imgfUrl;

  Product(this.name, this.color, this.imgfUrl);

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    color = json['Color'];
    imgfUrl = json['imgfUrl'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['Color'] = this.color;
    data['imgfUrl'] = this.imgfUrl;
    return data;
  }
}



class CartItem {
  String name;
  String color;
  String imgfUrl;
  int quantity ;
  double price;

  CartItem(this.name, this.color, this.imgfUrl,this.quantity,this.price);

  CartItem.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    color = json['Color'];
    imgfUrl = json['imgfUrl'];
    quantity = json['quantity'];
    price = json['price'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['Color'] = this.color;
    data['imgfUrl'] = this.imgfUrl;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    return data;
  }
}

class Review {
  String username;
  String userimage;
  String comment;

  Review(this.username, this.userimage, this.comment);

  Review.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    userimage = json['userimage'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['userimage'] = this.userimage;
    data['comment'] = this.comment;
    return data;
  }
}
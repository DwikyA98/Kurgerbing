import 'package:flutter/foundation.dart';

FooditemList fooditemList = FooditemList(foodItems: [
  FoodItem(
    id: 1,
    title: "Beach BBQ Burger",
    hotel: "Kurger Bing",
    price: 14.49,
    imgUrl:
        "https://liquipedia.net/commons/images/3/35/League_Infobox_Garen.jpg",
  ),
  FoodItem(
    id: 2,
    title: "Kick Ass Burgers",
    hotel: "Kurger Bing",
    price: 11.99,
    imgUrl:
        "https://liquipedia.net/commons/images/3/35/League_Infobox_Garen.jpg",
  ),
  FoodItem(
    id: 3,
    title: "Supreme Pizza Burger",
    hotel: "Kurger Bing",
    price: 8.49,
    imgUrl:
        "https://liquipedia.net/commons/images/3/35/League_Infobox_Garen.jpg",
  ),
  FoodItem(
    id: 4,
    title: "Chilly Cheeze Burger",
    hotel: "Kurger Bing",
    price: 14.49,
    imgUrl:
        "https://liquipedia.net/commons/images/3/35/League_Infobox_Garen.jpg",
  ),
  FoodItem(
    id: 5,
    title: "Beach BBQ Burger",
    hotel: "Garen",
    price: 14.49,
    imgUrl:
        "https://liquipedia.net/commons/images/3/35/League_Infobox_Garen.jpg",
  ),
  FoodItem(
    id: 6,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
        "https://liquipedia.net/commons/images/3/35/League_Infobox_Garen.jpg",
  ),
]);

class FooditemList {
  List<FoodItem> foodItems;

  FooditemList({@required this.foodItems});
}

class FoodItem {
  int id;
  String title;
  String hotel;
  double price;
  String imgUrl;
  int quantity;

  FoodItem({
    @required this.id,
    @required this.title,
    @required this.hotel,
    @required this.price,
    @required this.imgUrl,
    this.quantity = 1,
  });

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}

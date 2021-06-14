import 'package:flutter/foundation.dart';

FooditemList fooditemList = FooditemList(foodItems: [
  FoodItem(
    id: 1,
    title: "Beef Burger",
    hotel: "Kurger Bing",
    price: 4.49,
    imgUrl:
        "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/2/8/9d5ba3e4-4499-4f63-8df5-efd3accc8089.jpg.webp",
  ),
  FoodItem(
    id: 2,
    title: "Cheese Burger",
    hotel: "Kurger Bing",
    price: 5.99,
    imgUrl:
        "https://images.tokopedia.net/img/cache/500-square/product-1/2020/4/27/99417919/99417919_579c33ac-a55e-4bab-8f8e-ff0dada339f4_1080_1080.webp",
  ),
  FoodItem(
    id: 3,
    title: "Crispy Fried Fish Burger",
    hotel: "Kurger Bing",
    price: 8.49,
    imgUrl:
        "https://girlheartfood.com/wp-content/uploads/2020/06/Crispy-Fish-Burger-Recipe-9.jpg",
  ),
  FoodItem(
    id: 4,
    title: "Chicken Katsu Curry Burger",
    hotel: "Kurger Bing",
    price: 10.49,
    imgUrl:
        "https://flockler.com/thumbs/sites/192/chicken-katsu-curry-burger-1-3c22c7cf-62f7-4360-a4ff-56db6329c972_s600x600_c1944x1131_l0x894.jpg",
  ),
  FoodItem(
    id: 5,
    title: "Mushroom Swiss Burger",
    hotel: "Kurger Bing",
    price: 7.49,
    imgUrl:
        "https://sweetcayenne.com/wp-content/uploads/2019/09/mushroom-swiss-smashburger-7-500x500.jpg",
  ),
  FoodItem(
    id: 6,
    title: "Crispy Onian Ring Cheese Burger",
    hotel: "Kurger Bing",
    price: 14.49,
    imgUrl: "https://turano.com/wp-content/uploads/2019/05/06.22_ig.jpg",
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

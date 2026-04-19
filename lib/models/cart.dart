import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for  sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Waffle Debut',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/Nike Waffle Debut.jpg',
    ),

    Shoe(
      name: 'Li-Ning Way of Wade',
      price: '236',
      description: 'Future-built. Street-ready. Wade-approved.',
      imagePath: 'lib/images/Li-Ning Way of Wade.jpg',
    ),

    Shoe(
      name: 'New Balance XC-72',
      price: '236',
      description: 'The future the past dreamt about.',
      imagePath: 'lib/images/New Balance XC-72.jpg',
    ),

    Shoe(
      name: 'New Balance 574',
      price: '236',
      description: 'The shoe that made New Balance legendary. ',
      imagePath: 'lib/images/New Balance 574.jpg',
    ),

    Shoe(
      name: 'Nike MC Trainer 2',
      price: '236',
      description: 'from heavy lifts to sprint drills without missing a beat.',
      imagePath: 'lib/images/Nike MC Trainer 2.jpg',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
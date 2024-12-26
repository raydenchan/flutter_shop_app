import 'shoe.dart';

class Cart {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Pureboost 5 Running Shoes',
      price: '569',
      imagePath: 'lib/assets/1.jpg',
      description:
          'Everyday running shoes made in part with recycled materials.',
    ),
    Shoe(
      name: 'Adizero Boston 12 Shoes',
      price: '629',
      imagePath: 'lib/assets/2.jpg',
      description:
          'Lightweight running shoes made in part with recycled materials.',
    ),
    Shoe(
      name: 'Gazelle Indoor Shoes',
      price: '499',
      imagePath: 'lib/assets/3.jpg',
      description: 'Iconic shoes for effortless everyday style.',
    ),
    Shoe(
      name: 'Adizero Adios 9 Running Shoes',
      price: '599',
      imagePath: 'lib/assets/4.jpg',
      description:
          'Low-stack, race-ready running shoes made in part with recyceled materials.',
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

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}

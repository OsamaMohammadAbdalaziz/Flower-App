class Item {
  String imagepath;
  double price;
  String location;
  String name;

  Item(
      {required this.name,
      required this.imagepath,
      required this.price,
      required this.location});
}

final List<Item> items = [
  Item(
      name: "Product1",
      price: 40,
      imagepath: "assets/image/1.webp",
      location: "Flowery Shop"),
  Item(
      name: "Product2",
      price: 40,
      imagepath: "assets/image/2.webp",
      location: "Flowery Shop"),
  Item(
      name: "Product3",
      price: 40,
      imagepath: "assets/image/3.webp",
      location: "Flowery Shop"),
  Item(
      name: "Product4",
      price: 40,
      imagepath: "assets/image/4.png",
      location: "Flowery Shop"),
  Item(
      name: "Product5",
      price: 40,
      imagepath: "assets/image/5.webp",
      location: "Flowery Shop"),
  Item(
      name: "Product6",
      price: 40,
      imagepath: "assets/image/6.jpg",
      location: "Flowery Shop"),
  Item(
      name: "Product7",
      price: 40,
      imagepath: "assets/image/7.jpg",
      location: "Flowery Shop"),
  Item(
      name: "Product8",
      price: 40,
      imagepath: "assets/image/8.webp",
      location: "Flowery Shop"),
  Item(
      name: "Product9",
      imagepath: "assets/image/9.webp",
      price: 40,
      location: "Flowery Shop"),
  Item(
      name: "Product10",
      imagepath: "assets/image/10.jpg",
      price: 40,
      location: "Flowery Shop"),
];

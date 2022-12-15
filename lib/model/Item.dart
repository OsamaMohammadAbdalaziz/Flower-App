class Item {
  String ImagePATH;
  double Price;
  String Location;

  Item({required this.ImagePATH, required this.Price, required this.Location});
}


  final List<Item> items = [
    Item(Price: 40, ImagePATH: "assets/image/1.webp", Location: "Flowery Shop"),
    Item(Price: 40, ImagePATH: "assets/image/2.webp", Location: "Flowery Shop"),
    Item(Price: 40, ImagePATH: "assets/image/3.webp", Location: "Flowery Shop"),
    Item(Price: 40, ImagePATH: "assets/image/4.png", Location: "Flowery Shop"),
    Item(Price: 40, ImagePATH: "assets/image/5.webp", Location: "Flowery Shop"),
    Item(Price: 40, ImagePATH: "assets/image/6.jpg", Location: "Flowery Shop"),
    Item(Price: 40, ImagePATH: "assets/image/7.jpg", Location: "Flowery Shop"),
    Item(Price: 40, ImagePATH: "assets/image/8.webp", Location: "Flowery Shop"),
  ];
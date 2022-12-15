class Item {
  String ImagePATH;
  double Price;
  String Location;
  String Name;

  Item({required this.Name, required this.ImagePATH, required this.Price, required this.Location});
}


  final List<Item> items = [
    Item(Name: "Product1", Price: 40, ImagePATH: "assets/image/1.webp", Location: "Flowery Shop"),
    Item(Name: "Product2", Price: 40, ImagePATH: "assets/image/2.webp", Location: "Flowery Shop"),
    Item(Name: "Product3", Price: 40, ImagePATH: "assets/image/3.webp", Location: "Flowery Shop"),
    Item(Name: "Product4", Price: 40, ImagePATH: "assets/image/4.png", Location: "Flowery Shop"),
    Item(Name: "Product5", Price: 40, ImagePATH: "assets/image/5.webp", Location: "Flowery Shop"),
    Item(Name: "Product6", Price: 40, ImagePATH: "assets/image/6.jpg", Location: "Flowery Shop"),
    Item(Name: "Product7", Price: 40, ImagePATH: "assets/image/7.jpg", Location: "Flowery Shop"),
    Item(Name: "Product8", Price: 40, ImagePATH: "assets/image/8.webp", Location: "Flowery Shop"),
  ];
  
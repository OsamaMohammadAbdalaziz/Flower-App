// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flower_app/model/Item.dart';
import 'package:flower_app/pages/Product_details.dart';
import 'package:flower_app/provider/Cart.dart';
import 'package:flower_app/shared/Colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Cartt = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          Product: items[index],
                        ),
                      ),
                    );
                  },
                  // use ClipRRect & Positioned
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].ImagePATH)),
                      ),
                    ]),
                    footer: GridTileBar(
                      // backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            Cartt.add(items[index]);
                          },
                          icon: Icon(Icons.add)),

                      leading: Text("\$40"),
                      title: Text(
                        "",
                      ),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/Space.png"),
                          fit: BoxFit.cover),
                    ),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/image/Osama.jpg")),
                    accountEmail: Text("osama.mohammad2352002@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 225, 225, 225),
                        )),
                    accountName: Text("Osama Mohammad",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 225, 225, 225),
                        )),
                  ),
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("My Products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Help"),
                    leading: Icon(Icons.help_center),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Information"),
                    leading: Icon(Icons.perm_device_information),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {},
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text(
                    "Devloped by Osama Mohammad © 2023",
                    style: TextStyle(fontSize: 16),
                  )),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 24,
                      child: Container(
                          child: Text(
                            "${Cartt.SelectedProducts.length}",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 13, 0, 255)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    "\$ ${Cartt.Price}",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            )
          ],
          backgroundColor: appbarBlue,
          title: Text("Home"),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, file_names

import 'package:flower_app/model/Item.dart';
import 'package:flower_app/provider/Cart.dart';
import 'package:flower_app/shared/AppBar.dart';
import 'package:flower_app/shared/Colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarBlue,
        title: Text("CheckOut Screen"),
        actions: [ProductsAndPrice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: cartt.itemCount,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(cartt.SelectedProducts[index].name),
                        subtitle: Text(
                            "\$${cartt.SelectedProducts[index].price} - ${cartt.SelectedProducts[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              cartt.SelectedProducts[index].imagepath),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              cartt.delete(cartt.SelectedProducts[index]);
                            },
                            icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNred),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
            child: Text(
              "Pay \$${cartt.price}",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}

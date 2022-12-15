// ignore_for_file: prefer_const_constructors

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
    final Cartt = Provider.of<Cart>(context);
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
                  itemCount: Cartt.SelectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(Cartt.SelectedProducts[index].Name),
                        subtitle: Text(
                            "${Cartt.SelectedProducts[index].Price} - ${Cartt.SelectedProducts[index].Location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              Cartt.SelectedProducts[index].ImagePATH),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Cartt.delete(Cartt.SelectedProducts[index]);
                            },
                            icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Pay \$${Cartt.Price}",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNred),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
          ),
        ],
      ),
    );
  }
}

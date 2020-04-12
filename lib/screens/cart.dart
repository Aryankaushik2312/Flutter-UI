import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Icon(
                    Icons.panorama_fish_eye,
                    size: 200,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  right: 55,
                  top: 55,
                  child: Icon(
                    Icons.remove_shopping_cart,
                    size: 80,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Text(
              "Unfortunately, Your Cart Is Empty",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please Add Something In Your Cart',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Continue Ordering",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

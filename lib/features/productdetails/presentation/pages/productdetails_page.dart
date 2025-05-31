import 'package:flutter/material.dart';
import 'package:e_commerce/features/home/data/models/home_model.dart';

class ProductdetailsPage extends StatelessWidget {
  final ProductModel products;

  const ProductdetailsPage({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Details")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  products.imageurl,
                  height: 300,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  products.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Buy Now -   EGP  ${products.price} "),
              ),
            )
          ],
        ));
  }
}

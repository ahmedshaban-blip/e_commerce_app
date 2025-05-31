import 'package:e_commerce/features/home/data/models/home_model.dart';
import 'package:e_commerce/features/productdetails/presentation/pages/productdetails_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ProductModel> Products = [
    ProductModel(
        id: 1,
        name: "T-shirt preimum",
        imageurl: "assets/images/preimum.jpg",
        price: 190,
        description: "This is a  Preimum T-shirt"),
    ProductModel(
        id: 2,
        name: "Men-s-Two-Piece-Business-Suit",
        imageurl: "assets/images/Men-s-Two-Piece-Business-Suit-Bl.jpg",
        price: 1900,
        description: "This is a  Men-s-Two-Piece-Business-Suit"),
    ProductModel(
        id: 3,
        name: "T-shirt Polo",
        imageurl: "assets/images/T-shirt Polo.jpg",
        price: 190,
        description: "This is a  T-shirt Polo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: ListView.builder(
        itemCount: Products.length,
        itemBuilder: (BuildContext context, int index) {
          final products = Products[index];
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductdetailsPage(products: products),
                )),
            child: Card(
              color: const Color.fromARGB(255, 120, 133, 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "${products.id}-",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(products.name, style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      products.imageurl,
                    ),
                  ),
                  Text(products.description,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic)),
                  Text(
                    "${products.price} EGP",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

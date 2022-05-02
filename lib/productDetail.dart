import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'category.dart';

class ProductDetail extends StatelessWidget {
  final String name;
  final String price;
  final String productLink;
  final bool stock;
  const ProductDetail(
      {Key? key,
      required this.name,
      required this.price,
      required this.productLink,
      required this.stock})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: productLink,
                child: Image.asset(
                  productLink,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.amber.shade400,
                  size: 40,
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                price,
                style: TextStyle(fontSize: 16, color: Colors.amber.shade600),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Product description Product description Product description Product description Product description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: stock ? Colors.amber.shade400 : Colors.black,
                ),
                child: Center(
                  child: Text(
                    stock ? "Add to Cart" : "Out of Stock",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}

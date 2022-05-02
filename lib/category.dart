import 'package:flutter/material.dart';
import 'productDetail.dart';

class Category extends StatefulWidget {
  final String category;
  const Category({Key? key, required this.category}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Widget> listToShow = [];
  @override
  void initState() {
    super.initState();
    if (widget.category == "Staple Food") {
      listToShow = [
        productCard("Oil", "7 dollar", "assets/oil.jpg", stock: true),
        productCard("Milk", "3 dollar", "assets/milk.jpg", stock: true),
        productCard("Meat", "12 dollar", "assets/meat.jpg", stock: true),
        productCard("Flour", "6 dollar", "assets/flour.jpg"),
        productCard("Pasta", "4 dollar", "assets/pasta.jpg"),
      ];
    } else if (widget.category == "Confectionery") {
      listToShow = [
        productCard("Cake", "5 dollar", "assets/cake.jpg", stock: true),
        productCard("Cookie", "4 dollar", "assets/cookie.jpg", stock: true),
        productCard("Chocolate", "1 dollar", "assets/chocolate.jpg",
            stock: true),
      ];
    } else if (widget.category == "Beverages") {
      listToShow = [
        productCard("Ayran", "2 dollar", "assets/ayran.jpg"),
        productCard("Coke", "3 dollar", "assets/coke.jpg", stock: true),
        productCard("Coffee", "5 dollar", "assets/coffee.jpg", stock: true),
        productCard("Water", "1 dollar", "assets/water.jpg", stock: true),
      ];
    } else if (widget.category == "Cleaning") {
      listToShow = [
        productCard("Liquid Soap", "8 dollar", "assets/liquidSoap.jpg",
            stock: true),
        productCard("Dish Soap", "11 dollar", "assets/dishSoap.jpg",
            stock: true),
      ];
    }
  }

  productCard(String name, String price, String imageURL,
      {bool stock = false}) {
    return InkWell(
      onTap: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail(
                      name: name,
                      price: price,
                      productLink: imageURL,
                      stock: stock,
                    )));
      }),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.3),
                blurRadius: 4,
                spreadRadius: 2)
          ],
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Hero(
            tag: imageURL,
            child: Container(
              width: 130,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageURL), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(17)),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade500),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1,
      children: listToShow,
    );
  }
}

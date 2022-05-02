import 'package:flutter/material.dart';
import 'package:marketapp/category.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: controller,
            indicatorColor: Colors.amber.shade400,
            unselectedLabelColor: Colors.grey.shade500,
            labelColor: Colors.amber.shade300,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                child: Text(
                  "Staple Food",
                ),
              ),
              Tab(
                child: Text(
                  "Confectionery",
                ),
              ),
              Tab(
                child: Text(
                  "Beverages",
                ),
              ),
              Tab(
                child: Text(
                  "Cleaning",
                ),
              )
            ]),
        Expanded(
          child: TabBarView(controller: controller, children: [
            Category(
              category: "Staple Food",
            ),
            Category(
              category: "Confectionery",
            ),
            Category(
              category: "Beverages",
            ),
            Category(
              category: "Cleaning",
            ),
          ]),
        )
      ],
    );
  }
}

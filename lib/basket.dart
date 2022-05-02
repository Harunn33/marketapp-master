import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            "Basket",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade400),
          ),
        ),
        ListTile(
          title: Text("Chocolate Wafer"),
          subtitle: Text("2 pieces x 0.5 cent"),
          trailing: Text("1 dollar"),
        ),
        ListTile(
          title: Text("Coke"),
          subtitle: Text("6 pieces x 1.5 dollar"),
          trailing: Text("9 dollar"),
        ),
        ListTile(
          title: Text("Cake"),
          subtitle: Text("3 pieces x 1 dollar"),
          trailing: Text("3 dollar"),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 20.0),
            child: Column(
              children: [
                Text(
                  "Total amount",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade400),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "13 dollar",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22.0, right: 22.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber.shade400,
            ),
            child: Center(
              child: Text(
                "Complete the Shopping",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}

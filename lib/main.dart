import 'package:flutter/material.dart';
import 'basket.dart';
import 'products.dart';
import 'productDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeContentNumber = 0;
  List _contents = [];
  @override
  void initState() {
    super.initState();
    _contents = [
      Products(),
      Basket(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Market Clone",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.amber.shade400),
        ),
      ),
      body: _contents[activeContentNumber],
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text("Harun Şimşek"),
            accountEmail: Text("hrnsmsk@gmail.com"),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background5.jpg"),
                ),
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeContentNumber,
        selectedItemColor: Colors.amber.shade500,
        unselectedItemColor: Colors.grey.shade500,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Basket")
        ],
        onTap: (int target) {
          setState(() {
            if (target == 0) {
              activeContentNumber = 0;
            } else {
              activeContentNumber = 1;
            }
          });
        },
      ),
    );
  }
}

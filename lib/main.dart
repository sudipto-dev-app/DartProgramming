import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(MyApp());
}

// Hot reload => ctl + s
// Hot restart => ctl + shift + \

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Ostad app',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: Text('My Shopping List',style: TextStyle(color: Colors.white,)),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart,color: Colors.white,size: 26,)
        ],
      ),
      body: Scrollbar(
          thickness: 20,
          radius: Radius.circular(10),
          child: ListView(
            children: [
              ListTile(title: Text('Apples'),leading: Icon(Icons.shopping_basket),),
              ListTile(title: Text('Bananas'),leading: Icon(Icons.shopping_basket),),
              ListTile(title: Text('Bread'),leading: Icon(Icons.shopping_basket),),
              ListTile(title: Text('Milk'),leading: Icon(Icons.shopping_basket),),
              ListTile(title: Text('Eggs'),leading: Icon(Icons.shopping_basket),)
            ],
          )
      ),
    );
  }
}
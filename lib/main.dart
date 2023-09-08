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
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Ostad app',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.green,
        elevation: 70,
        centerTitle: true,
        title: Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
        leading: Icon(Icons.add_business_rounded,color: Colors.white,),
        actions: [
          Icon(Icons.search,color: Colors.white,),
        ],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('This is mod 5 Assingnment',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'My',style: TextStyle(color: Colors.red,fontSize: 16)),
                  TextSpan(text: ' phone',style: TextStyle(color: Colors.blueAccent,fontSize: 16)),
                  TextSpan(text: ' name',style: TextStyle(color: Colors.purple,fontSize: 16)),
                  TextSpan(text:'Your phone name' ,style: TextStyle(color:Colors.amber,fontSize: 20,fontWeight: FontWeight.w700)),
                ]
              ))
            ],
          )
        ],
      )
    );
  }
}

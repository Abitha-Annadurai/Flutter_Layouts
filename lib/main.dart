// @dart=2.9
import 'package:flutter/material.dart';

import 'layput/layout_types.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey,),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Flutter Code', style: TextStyle(color: Colors.black, fontSize: 20 ),),
        leading: Padding(padding: EdgeInsets.only(left: 12), child: Image.asset('assest/icon.jpg')),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/bg6.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        child: Center(
         child: Container(
            padding: EdgeInsets.only(left: 100,),
            child: Row(
              children: [
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LayoutTpyes(),),);
                },
                  child: Text('Layout', style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),

        ),
        ),
    );
  }
}

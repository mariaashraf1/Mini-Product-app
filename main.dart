import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
         leading: BackButton(color: Colors.white,onPressed: (){},),
         backgroundColor: Colors.deepPurpleAccent,
         title: const Center(child: Text("profile page      ")),
       ),
        body:
        Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
         child: SingleChildScrollView(
           child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Column(
                 children: const [
                   CircleAvatar(
                     radius: 104,
                     backgroundColor: Colors.deepPurpleAccent,
                   child: CircleAvatar(
                     radius: 100,
                     backgroundColor: Colors.transparent,
                     backgroundImage: AssetImage("assets/purple-user-icon-in-the-circle-thin-line-vector-23745268.jpg"),
                   ),
                   ),
                   TextField(
                     style: TextStyle(color: Colors.black87),
                     decoration: InputDecoration(
                     hintText: "please enter your name",
                     labelText:"name",
                     labelStyle:TextStyle( color: Colors.deepPurpleAccent),
                     prefixIcon: Icon(Icons.person),
                         fillColor: Colors.grey,
                         prefixIconColor: Colors.deepPurpleAccent,
                   ),
               ),
                   SizedBox(height:20),
                   TextField(
                     style: TextStyle(color: Colors.black87),
                     decoration: InputDecoration(
                       hintText: "please enter your mail",
                       labelText:"mail",
                       labelStyle:TextStyle( color: Colors.deepPurpleAccent),
                       prefixIcon: Icon(Icons.mail),
                       fillColor: Colors.grey,
                       prefixIconColor: Colors.deepPurpleAccent,
                     ),
                   ),
                   SizedBox(height:20),
                   TextField(
                     style: TextStyle(color: Colors.black87),
                     decoration: InputDecoration(
                       hintText: "please enter your birthday",
                       labelText:"Birthday",
                       labelStyle:TextStyle( color: Colors.deepPurpleAccent),
                       prefixIcon: Icon(Icons.calendar_month),
                       fillColor: Colors.grey,
                       prefixIconColor: Colors.deepPurpleAccent,
                     ),

                   ),
                   SizedBox(height:20),
                   TextField(
                     style: TextStyle(color: Colors.black87),
                     decoration: InputDecoration(
                       hintText: "please enter your phone number",
                       labelText:"phone number",
                       labelStyle:TextStyle( color: Colors.deepPurpleAccent),
                       prefixIcon: Icon(Icons.phone),
                       fillColor: Colors.grey,
                       prefixIconColor: Colors.deepPurpleAccent,
                     ),
                   ),
                   SizedBox(height:20),
                   TextField(
                     style: TextStyle(color: Colors.black87),
                     decoration: InputDecoration(
                       hintText: "please enter your address",
                       labelText:"address",
                       labelStyle:TextStyle( color: Colors.deepPurpleAccent),
                       prefixIcon: Icon(Icons.map),
                       fillColor: Colors.grey,
                       prefixIconColor: Colors.deepPurpleAccent,
                     ),
                   ),

                 ],
               ),
             ],
           ),
        ),
         ),
      ),
      )
    );
  }
}
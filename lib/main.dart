import 'package:flutter/material.dart';
import 'package:products_page/product.dart';
import 'package:products_page/product_card.dart';
import 'package:products_page/profilepage.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),)

  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          leading: BackButton(onPressed: (){
            Navigator.push(
              context,MaterialPageRoute(builder: (context) =>const Profilepage()),
            );

          },),
          title: const Text("Earnings store"),
          centerTitle: true,
        ),
        body:
        Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Wrap(
                children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      style: const TextStyle(color: Colors.black87),
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius: BorderRadius.circular(80),

                        ),
                        hintText: "Search",
                        labelText:"Search",
                        prefixIcon: const Icon(Icons.search),
                        labelStyle:const TextStyle( color: Colors.brown),
                        prefixIconColor: Colors.brown,


                      ),

                  ),
                    ),
                  const SizedBox(height:30),


                    ProductCard(product: sampleProduct1,),
                    ProductCard(product: sampleProduct2,),
                    ProductCard(product: sampleProduct3,),
                    ProductCard(product: sampleProduct4,),
                    ProductCard(product: sampleProduct5,),


                  ],
                ),
            ),
            ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {  },
          backgroundColor: Colors.brown,
          child: const Icon(Icons.shopping_bag, color: Colors.white,size: 35,),

        ),
      );


  }
}

import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: Colors.white, onPressed: () {

        },),
        backgroundColor: Colors.brown,
        title: const Center(child: Text("profile page        ")),
        centerTitle: true,
      ),
      body:
      Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 104,
                        backgroundColor: Colors.brown,
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              "asset/purple-user-icon-in-the-circle-thin-line-vector-23745268.jpg"),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius
                              .all(Radius.circular(70))),
                          hintText: "please enter your name",
                          labelText: "name",
                          labelStyle: TextStyle(color: Colors.brown),
                          prefixIcon: Icon(Icons.person),
                          fillColor: Colors.grey,
                          prefixIconColor: Colors.brown,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius
                              .all(Radius.circular(70))),
                          hintText: "please enter your mail",
                          labelText: "mail",
                          labelStyle: TextStyle(color: Colors.brown),
                          prefixIcon: Icon(Icons.mail),
                          fillColor: Colors.grey,
                          prefixIconColor: Colors.brown,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius
                              .all(Radius.circular(70))),
                          hintText: "please enter your birthday",
                          labelText: "Birthday",
                          labelStyle: TextStyle(color: Colors.brown),
                          prefixIcon: Icon(Icons.calendar_month),
                          fillColor: Colors.grey,
                          prefixIconColor: Colors.brown,
                        ),

                      ),
                      SizedBox(height: 20),
                      TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius
                              .all(Radius.circular(70))),
                          hintText: "please enter your phone number",
                          labelText: "phone number",
                          labelStyle: TextStyle(color: Colors.brown),
                          prefixIcon: Icon(Icons.phone),
                          fillColor: Colors.grey,
                          prefixIconColor: Colors.brown,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius
                              .all(Radius.circular(70))),
                          hintText: "please enter your address",
                          labelText: "address",
                          labelStyle: TextStyle(color: Colors.brown),
                          prefixIcon: Icon(Icons.map),
                          fillColor: Colors.grey,
                          prefixIconColor: Colors.brown,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.pop(context);
           },
         backgroundColor: Colors.brown,
           child: const Icon(Icons.navigate_next, color: Colors.white,size: 35,),
    )
    )
    ;
  }
}
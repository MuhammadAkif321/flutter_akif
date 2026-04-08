import 'package:flutter/material.dart';

class CalculaterApp extends StatefulWidget {
  const CalculaterApp({super.key});

  @override
  State<CalculaterApp> createState() => _CalculaterAppState();
}

class _CalculaterAppState extends State<CalculaterApp> {
  int result = 12;
  var firstcontroller = TextEditingController();
  var lastcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Calculator App"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller:firstcontroller ,

              decoration: InputDecoration(
                suffixIconColor: Colors.blue,
                prefixIconColor: Colors.pink,
                labelText: "Number 1",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.eighteen_mp),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller: lastcontroller,

              decoration: InputDecoration(
                suffixIconColor: Colors.blue,
                prefixIconColor: Colors.pink,
                labelText: "Number 2",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.eighteen_mp),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                String firstName = firstcontroller.text.trim();
                int f = int.parse(firstName);
                String lastName = lastcontroller.text.trim();
                int l = int.parse(lastName);
                setState(() {
                  result = f+l;
                });

                },

                  child: Text("+",style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){
                String firstName = firstcontroller.text.trim();
                int f = int.parse(firstName);
                String lastName = lastcontroller.text.trim();
                int l = int.parse(lastName);
                setState(() {
                  result = f-l;
                });
              }, child: Text("-",style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){
                String firstName = firstcontroller.text.trim();
                int f = int.parse(firstName);
                String lastName = lastcontroller.text.trim();
                int l = int.parse(lastName);
                setState(() {
                  result = f*l;
                });
              }, child: Text("*",style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){
                String firstName = firstcontroller.text.trim();
                int f = int.parse(firstName);
                String lastName = lastcontroller.text.trim();
                int l = int.parse(lastName);
                setState(() {
                  result = f~/l;
                });
              }, child: Text("/",style: TextStyle(fontSize: 20),)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){

            }, child: Text("CLEAR",style: TextStyle(fontSize: 30),)),
          ),

          Text("$result",style: TextStyle(fontSize: 17),)


        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CalculaterApp extends StatefulWidget {
  const CalculaterApp({super.key});

  @override
  State<CalculaterApp> createState() => _CalculaterAppState();
}

class _CalculaterAppState extends State<CalculaterApp> {
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
              ElevatedButton(onPressed: (){}, child: Text("+",style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){}, child: Text("-",style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){}, child: Text("*",style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){}, child: Text("/",style: TextStyle(fontSize: 20),)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){}, child: Text("CLEAR",style: TextStyle(fontSize: 30),)),
          ),

          Text("Result",style: TextStyle(fontSize: 30),),


        ],
      ),
    );
  }
}

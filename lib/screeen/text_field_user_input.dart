import 'package:flutter/material.dart';

class TextFieldUserInput extends StatefulWidget {
  const TextFieldUserInput({super.key});

  @override
  State<TextFieldUserInput> createState() => _TextFieldUserInputState();
}

class _TextFieldUserInputState extends State<TextFieldUserInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Text Field"),
      ),
      body: Column(
        spacing: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: "First name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.eighteen_mp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .phone,
              decoration: InputDecoration(

                labelText: "Phone number",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.eighteen_mp),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Last name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.eighteen_mp),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Clear")),
              ElevatedButton(onPressed: (){}, child: Text("Combine")),
            ],
          )
        ],
      ),
    );
  }
}

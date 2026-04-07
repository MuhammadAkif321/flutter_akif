import 'package:flutter/material.dart';

class GridviewPractice extends StatelessWidget {
  const GridviewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("Gridview Simple", style: TextStyle(color: Colors.white))),
      ),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2,
        ),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/icons/Afridi.webp"),
          ),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),
          Container(color: Colors.black,),
          Container(color: Colors.teal,),
          Container(color: Colors.purple,),
          Container(color: Colors.cyan,),







        ],
      ),
    );
  }
}

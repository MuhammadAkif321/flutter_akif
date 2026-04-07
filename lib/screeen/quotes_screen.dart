import 'package:flutter/material.dart';
import 'package:metapi/list.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("welcome Quotes Topic")),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsets.all(26),
              child: Card(color:Colors.cyan,child: Text(quotesList[index],style: TextStyle(fontSize: 20),)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  if( index == 4) {
                    index = 0;

                  }else{
                    index++;

                  }
                });
              }, child: Text("NEXT")),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if( index == 0) {
                  index = 4;

                }else{
                  index--;

                }
              });
            }, child: Text("PREVIOUS")),


          ],
        ),
      ),
    );
  }
}

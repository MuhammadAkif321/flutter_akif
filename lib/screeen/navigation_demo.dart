import 'package:flutter/material.dart';
import 'package:metapi/screeen/Gridview_practice.dart';
import 'package:metapi/screeen/counter_demo.dart';
import 'package:metapi/screeen/quotes_screen.dart';

class NavigationDemo extends StatelessWidget {
  const NavigationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("HOME SCREEN"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                child: (Text("1")),
              ),
              title: Text("GridView"),
              trailing: Icon((Icons.arrow_forward)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return GridviewPractice();
                }));
              },
            ),
          ),
          Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                child: (Text("2")),
              ),
              title: Text("CounterApp"),
              trailing: Icon((Icons.arrow_forward)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return CounterDemo();
                }));
              },
            ),
          ),

          Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                child: (Text("3")),
              ),
              title: Text("QuotesApp"),
              trailing: Icon((Icons.arrow_forward)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return QuotesScreen();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}

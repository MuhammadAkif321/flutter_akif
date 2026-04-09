import 'package:flutter/material.dart';
import 'package:metapi/screeen/Gridview_practice.dart';
import 'package:metapi/screeen/calculater_app.dart';
import 'package:metapi/screeen/counter_demo.dart';
import 'package:metapi/screeen/dmc_app.dart';
import 'package:metapi/screeen/quotes_screen.dart';
import 'package:metapi/screeen/text_field_user_input.dart';

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
          Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                child: (Text("4")),
              ),
              title: Text("User input"),
              trailing: Icon((Icons.arrow_forward)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TextFieldUserInput();
                }));
              },
            ),
          ),

          Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                child: (Text("5")),
              ),
              title: Text("Calculator App"),
              trailing: Icon((Icons.arrow_forward)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return CalculaterApp();
                }));
              },
            ),
          ),

          Card(
            color: Colors.teal,
            child: ListTile(
              leading: CircleAvatar(
                child: (Text("6")),
              ),
              title: Text("DMC App"),
              trailing: Icon((Icons.arrow_forward)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return DmcApp(

                  );
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}

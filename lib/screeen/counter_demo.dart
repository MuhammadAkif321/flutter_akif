import 'package:flutter/material.dart';

class CounterDemo extends StatefulWidget {
  const CounterDemo({super.key});

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(

          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      counter--;
                    });
                  }, child: Text("decrement")),
                  Text(counter.toString()),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      counter--;
                    });
                  }, child: Text("increment")),
                ],
              ),
            ),
            Row(

              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    counter =0 ;
                  });
                }, child: Text("Reset")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DmcApp extends StatefulWidget {
  const DmcApp({super.key});

  @override
  State<DmcApp> createState() => _DmcAppState();
}

class _DmcAppState extends State<DmcApp> {
  double obtainedMarks = 20;
  double percentage  = 40;
  String grade = "ABC";
  var eng  =TextEditingController();
  var urdu  =TextEditingController();
  var maths  =TextEditingController();
  var science  =TextEditingController();
  var computer  =TextEditingController();
  var dld  =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("DMC",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller: eng,
              decoration: InputDecoration(
                labelText: "Enter English Marks",
                border: OutlineInputBorder(),

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller: urdu,
              decoration: InputDecoration(
                labelText: "Enter Urdu Marks",
                border: OutlineInputBorder(),

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller: maths,
              decoration: InputDecoration(
                labelText: "Enter Maths Marks",
                border: OutlineInputBorder(),

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller: science,
              decoration: InputDecoration(
                labelText: "Enter Science Marks",
                border: OutlineInputBorder(),

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller: computer,
              decoration: InputDecoration(
                labelText: "Enter Computer Marks",
                border: OutlineInputBorder(),

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: .number,
              controller: dld,
              decoration: InputDecoration(
                labelText: "Enter DLD Marks",
                border: OutlineInputBorder(),

              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Clears"))),
                Expanded(child: ElevatedButton(onPressed: (){
                  String first = eng.text.trim();
                  double f = double.parse(first);
                  String second = urdu.text.trim();
                  double s = double.parse(second);
                  String third = maths.text.trim();
                  double t = double.parse(third);
                  String fourth = science.text.trim();
                  double fo = double.parse(fourth);
                  String fifth = computer.text.trim();
                  double fif = double.parse(fifth);
                  String sixth = eng.text.trim();
                  double si = double.parse(sixth);
                  setState(() {
                    obtainedMarks = (f+s+t+fo+fif+si) ;
                    percentage =(f+s+t+fo+fif+si)/600 * 100 ;
                    if(obtainedMarks>=500){
                      grade  ="A";
                    }
                    else if(obtainedMarks>=400 && obtainedMarks<500){
                      grade =" B";
                    }
                    else {
                      grade = "C";
                    }
                  });
                }, child: Text("Result"))),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$obtainedMarks -> obtained marks",style: TextStyle(fontSize: 20,color: Colors.teal),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$percentage -> percentage",style: TextStyle(fontSize: 20,color: Colors.amber),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$grade -> grade",style: TextStyle(fontSize: 20,color: Colors.pink),),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListviewPractice extends StatelessWidget {
  const ListviewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cricketPlayers = [
      "Farhan","Saim","Babar","Abdullah","Rizwan","Asif ali",
      "Shadab","Nawaz","Shaheen","Naseem","Abrar","usman tariq"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("Welcome ListView_Builder",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
      ),
      body: ListView.builder(
          itemCount: cricketPlayers.length,
          itemBuilder: (BuildContext context,int index){
            return Card(color: Colors.cyan,
            child: Padding(padding: const EdgeInsets.all(20),
            

            child: ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/icons/Afridi.webp"),
                backgroundColor: Colors.white,
              ),
              title: Center(child: Text(cricketPlayers[index])),
              trailing: Icon(Icons.access_alarm,color: Colors.pinkAccent,size: 30,),
            )

            ),
            );
          }),
    );
  }
}

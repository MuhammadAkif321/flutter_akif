import 'package:flutter/material.dart';

class ImageInsertion extends StatelessWidget {
  const ImageInsertion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),)),
      
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.teal,
                backgroundImage: AssetImage("images/icons/Afridi.webp",),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,color: Colors.teal,)),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Text("Full Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),

            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.teal),
              child: Center(child: Text("Muhammad Akif",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 25,),
            Text("Course",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),


            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.teal),
              child: Center(child: Text("Mobile App Dev",style: TextStyle(color: Colors.white),)),
            ),

            SizedBox(height: 25,),
            Text("Phone No",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),

            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.teal),
              child: Center(child: Text("+923779644888",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 25,),
            Text("Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),


            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.teal),
              child: Center(child: Text("1ddw2fefe%^",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 25,),
            Text("Best Friend",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),

            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.teal),
              child: Center(child: Text("Rahatullahh",style: TextStyle(color: Colors.white),)),
            ),

            IconButton.filled(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("Confirmation"),
                  content: Row(
                    children: [
                      Text("Are u sure to logout"),
                      Icon(Icons.logout),
                    ],
                  ),
                  actions: [
                    TextButton(onPressed: (){}, child: Text("No")),
                    TextButton(onPressed: (){}, child: Text("Yes")),
                  ],
                );
              });

            }, icon:Icon(Icons.logout,size: 50,)),

          ],
        ),
      )
      
    );
  }
}

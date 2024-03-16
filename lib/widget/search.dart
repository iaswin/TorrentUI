import 'package:flutter/material.dart';
import './setting.dart';



class seh extends StatelessWidget {
  const seh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WebTorrent"),
          leading:Icon(Icons.menu) ,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search),
            ),
            IconButton(onPressed:(){}, icon:Icon(Icons.public)),
            IconButton(onPressed: (){}, icon: Icon(Icons.sort)),
            IconButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MySettingsPage()));

             

            }, icon:Icon(Icons.more_vert)),

          ],
          
          backgroundColor: Colors.blue,
         
         
        ),
        body: Center(
          
          child:
           Column(children: [ TextField(                
               decoration: InputDecoration(
                 hintText: ' torrent Link',
                 prefix: Icon(Icons.search),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(100),
                 ),
               ),              
             ),],
             
           ),
        ),
      ),
    );
  }
}


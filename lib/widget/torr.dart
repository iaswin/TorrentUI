import 'package:flutter/material.dart';

import './search.dart';
import './search.dart';
import './setting.dart';
class addq extends StatelessWidget {
  const addq({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WebTorrent"),
          leading:Icon(Icons.menu) ,
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => seh()));
            }, icon: Icon(Icons.search),
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
                 hintText: 'Enter your torrent Link',
                 helperText: "Torrent URL !!",
                 prefix: Icon(Icons.add),
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


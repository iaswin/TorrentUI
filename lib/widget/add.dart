import 'package:flutter/material.dart';
import 'package:torrent_1/widget/search.dart';
import 'package:torrent_1/widget/torr.dart';
import './add.dart';
import './search.dart';
import './setting.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            tabs:[
              Tab(icon: Icon(Icons.add)),
          Tab(icon: Icon(Icons.bolt)),
          Tab(icon: Icon(Icons.download_done)),
            ]
          ),
          backgroundColor: Colors.blue,
         
         
        ),
        
        
        body:
         TabBarView(children: [
        
          Text("Add torrent"),
          Text("High speed Download"),
          Text("download done"),
          

        ],
       ),
       floatingActionButton: FloatingActionButton(
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => addq()));
  },
  tooltip: 'Add',
  child: Icon(Icons.add),
),

       
       
  
      
    ));

   
       
  }
}
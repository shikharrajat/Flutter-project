import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MeraApp();
}

class MeraApp extends State<MyApp>{
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.deepPurple.shade200,
       appBar: AppBar(
           title: Text("Event Scheduler"),
         backgroundColor: Colors.deepPurple.shade500,
       ),
       body:Container(
         width: double.infinity,
         child: ListView.builder(
           itemCount: _list.length,
           itemBuilder: (context, index) {
             return Padding(
               padding: const EdgeInsets.all(20.0),
               child: ListTile(
                 contentPadding: EdgeInsets.all(8),
                 title: Center(child: _list[index],),
                 shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                 tileColor: Colors.white,
                 textColor: Colors.black



               ),
             );
           },
         ),
       ),

         floatingActionButton: Builder(builder: (context){
         return FloatingActionButton(
         onPressed: () async {
           String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
           setState(() {
             _list.add(Text(newText, textAlign: TextAlign.center, style: TextStyle(fontSize: 15) ,));

   });
   },
           child:  Icon(Icons.add),
                   backgroundColor: Colors.deepPurple.shade500,
    );
  }
       ),

     ),
   );
  }

  
}
    
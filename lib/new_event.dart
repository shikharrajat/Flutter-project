import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();

}

class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text("New Event"),
              backgroundColor: Colors.deepPurple.shade500,

            ),
    body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [SizedBox(
    width: 400,
    child: TextField(
    minLines: 1,
    maxLines:   10,
    enabled: true,
    style: TextStyle(fontSize:21,color: Colors.white),
    controller: _textEditingController,
    decoration: InputDecoration(
    // contentPadding: EdgeInsets.all(25.0),
    labelStyle: TextStyle(
    fontSize: 20,
    color: Colors.white,
    ),
    filled: true,
    fillColor: Colors.deepPurple.shade500,
    prefixIcon: Icon(Icons.event,color: Colors.white,),
    hintText: "Enter Text Here ..",
    hintStyle: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 18),
    label: Text("Event",style: TextStyle(fontSize: 20)),
    enabledBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(40.0)
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40.0)
    ),

    ),

    ),
    ),
      Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  String newEventText = _textEditingController.text;
                  Navigator.of(context).pop(newEventText);
                },
                child:
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ADD",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),

                  ],
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
                    backgroundColor: Colors.white.withOpacity(0.4),
                    shape: StadiumBorder()
                ),
              ),
            );


          }
      )
    ],
    ),
    ),

            backgroundColor: Colors.deepPurple.shade200,
          );
  }

}
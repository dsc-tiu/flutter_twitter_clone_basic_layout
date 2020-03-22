import 'package:flutter/material.dart';
 class Abc extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Messages'),
       ),
       body:Column(

       mainAxisAlignment:MainAxisAlignment.center,

       children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(left:80.0),
           child: Text('Send a message,get a message'),
         ),
         SizedBox(
           height: 2.0,
         ),
         Padding(
           padding: const EdgeInsets.only(left:80.0),
           child: FlatButton(onPressed: (){}, child: Text('Write a Message',
             style: TextStyle(
               color: Colors.white
             ),
           ),
           color: Colors.blue,
           ),
         )
       ],
       ),
         floatingActionButton: FloatingActionButton(
         onPressed: (){},
           child: Icon(Icons.message,
             color: Colors.white,
           ),
          backgroundColor: Colors.blue
     ),


     );
   }
 }

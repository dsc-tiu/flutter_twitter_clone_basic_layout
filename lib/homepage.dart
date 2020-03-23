import 'package:flutter/material.dart';
import 'package:twitter/drawer.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Center(
        child: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
        backgroundColor: Colors.white,
        
      ),
      drawer: Draw() ,
      body:ListView(
        children: List.generate(
          100,
              (int index) {
            return _listItem(index);
          },
        ),
      ),

    );

  }
}
Widget _listItem(int index) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage("images/bear - Copy.jpeg"),
    ),
    title: Text(
      "samarpita bhaumik",

      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          "This is Flutter create twitter ui",
          overflow: TextOverflow.clip,
          maxLines: 3,
        ),
        SizedBox(
          height: 10,
        ),


       Image.asset("images/bear - Copy.jpeg"),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.comment),
            Icon(Icons.repeat),
            Icon(Icons.favorite_border),
            Icon(Icons.share),
          ],
        ),
      ],
    ),
  );
}

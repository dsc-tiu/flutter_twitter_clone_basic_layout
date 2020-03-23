import 'package:flutter/material.dart';
import 'package:twitter/homepage.dart';
import 'package:twitter/message.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CustomBar(),
    );
  }
}
      class CustomBar extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return Scaffold(

            extendBody: true,
            body: Home(),
            bottomNavigationBar: BottomAppBar(
              notchMargin: 0,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(icon:Icon(Icons.home), color: Colors.blue,highlightColor:Colors.purple,
                            splashColor: Colors.purple,
                            onPressed:(){
                              print('hello');
                            },

                          ),
                          SizedBox(width: 1,),
                          IconButton(icon:Icon(Icons.search), color: Colors.blue,
                            onPressed: (){
                              showSearch(context: context, delegate: Search());
                            },
                          ),
                          SizedBox(width: 1,),

                          Icon(Icons.notifications, color: Colors.blue,),
                          SizedBox(width: 1,),
                          IconButton(icon:Icon(Icons.markunread),color: Colors.blue,
                            onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Abc()),); },
                          ),
                          SizedBox(width: 1,),
                        ],
                      ),
                    ),

                ],
              ),
            ),
            floatingActionButton:  FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
            ),
          );
        }
      }


      class Search extends SearchDelegate<String>{
      final name=[
        "samarpita_bhaumik",
        "rohit",
        "akash",
        "sayandip",
        "DSC_TIU",
      ];
      final recent=[
        "samarpita_bhaumik",
        "rohit",
      ];
  @override
  List<Widget> buildActions(BuildContext context) {

    return[
      IconButton(icon: Icon(Icons.clear),onPressed: (){
        query="";
      },)
    ];


  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon:AnimatedIcon(icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
    ) ,
        onPressed: (){
      close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {

    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList=query.isEmpty?recent:name.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap:(){
        showResults(context);
      },
      title: /*Text(
        suggestionList[index],)*/
         RichText(text:TextSpan(
           text:suggestionList[index].substring(0,query.length),
           style: TextStyle(
             color: Colors.black,fontWeight: FontWeight.bold,
           ),
           children: [TextSpan(
             text: suggestionList[index].substring(query.length),
             style:TextStyle(color:Colors.grey)
           )]
         ) ),
      ),
      itemCount: suggestionList.length,
    );


  }

      }


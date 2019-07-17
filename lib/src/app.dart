import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.redAccent
        )
      ),
      home: Scaffold(
        appBar: AppBar(
        title: Text('PC Manager'),
        centerTitle: true,
        ),
            body:  Padding(
                padding: EdgeInsets.only(top: 100),
                child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: <Widget>[
                  Container(

                    child: Card(
                      child: Column(
                          children: <Widget>[

                        Icon(Icons.file_download,size: 100,),
                        Text("Transfer Files",style: TextStyle(
                          fontSize: 30,

                          fontWeight: FontWeight.w100
                        ),
                        textAlign: TextAlign.center,)
                      ],

                      ),
                    ),

                  ),
                  Container(

                    child: Card(
                      child: Column(
                        children: <Widget>[

                          Icon(Icons.audiotrack,size: 100,),
                          Text("Play Song",style: TextStyle(
                              fontSize: 30,

                              fontWeight: FontWeight.w100
                          ),
                            textAlign: TextAlign.center,)
                        ],

                      ),
                    ),

                  ),
                  Container(

                    child: Card(
                      child: Column(
                        children: <Widget>[

                          Icon(Icons.photo,size: 100,),
                          Text("Screenshot",style: TextStyle(
                              fontSize: 30,

                              fontWeight: FontWeight.w100
                          ),
                            textAlign: TextAlign.center,)
                        ],

                      ),
                    ),

                  ),
                  GestureDetector(
                    onTap: () async{
                      print("hello");
                      await http.get("http://192.168.1.105:7000/polls");

                    },
                    child: Card(
                      child: Column(
                        children: <Widget>[

                          Icon(Icons.power_settings_new,size: 100,),
                          Text("Shutdown ",style: TextStyle(
                              fontSize: 30,

                              fontWeight: FontWeight.w100
                          ),
                            textAlign: TextAlign.center,)
                        ],

                      ),
                    ),
                  ),
                ],
              ),
            )

      ),
    );
  }
}
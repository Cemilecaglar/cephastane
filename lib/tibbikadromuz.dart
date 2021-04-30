import 'package:flutter/material.dart';
import 'package:hastaneuygulamasi/asistanlar.dart';
import 'package:hastaneuygulamasi/uzmandoktorlar.dart';
void main(){
  runApp(tibbiKadromuz());
}
class tibbiKadromuz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(fontFamily: 'Calibri'),
      home:Scaffold(
      appBar: AppBar( centerTitle: true,
        backgroundColor:Color(0xFFff9800) ,
        title: Text('Tıbbi Kadromuz',
        textAlign: TextAlign.center,
        style:TextStyle(
          color: Colors.black45,
          fontWeight:FontWeight.w800,
          fontSize: 30,
        ),
      ),
    ),
        backgroundColor: Colors.white10,
        body:SafeArea(
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
          Container(
          color:Color(0xffBDBDBD),
          child:(Padding(
            padding:const EdgeInsets.all(23.0),
            child:FlatButton(
              highlightColor:Color(0xffBDBDBD),
              onPressed: (){
                Navigator.pushNamed(context, '/uzmandoktorlar',arguments: {});
              },
              child:Text('Uzman Doktorlar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight:FontWeight.w800,
                  letterSpacing: 0.5,
                  fontSize: 40,
                ),
              ),
            ),
          )),
        ),
                Container(
                  color:Color(0xffBDBDBD),
                  child:(Padding(
                    padding:const EdgeInsets.all(23.0),
                    child:FlatButton(
                      highlightColor:Color(0xffBDBDBD),
                      onPressed: (){
                        Navigator.pushNamed(context,'/asistanlar',arguments: {});
                       /* Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>ContactsPage(),
                            )
                        );*/
                      },
                      child:Text('Asistanlar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight:FontWeight.w800,
                          letterSpacing: 0.5,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  )),
                ),
          ]),
        )
      ),
    );

  }
}

import 'package:flutter/material.dart';
import 'package:hastaneuygulamasi/hastanemiz.dart';
import 'package:hastaneuygulamasi/tibbikadromuz.dart';

import 'ayarlar.dart';
import 'nobetListesi.dart';
import 'hakkinda.dart';
import 'iletisim.dart';


void main() {
  runApp(menu());
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(fontFamily: 'Calibri'),
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text('KONYA ŞEHİR HASTANESİ',
            textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.black45,
              fontWeight:FontWeight.w800,
              fontSize: 30,
            ),
          ),
          backgroundColor:Color(0xFFff9800) ,
        ),
        backgroundColor: Colors.white10 ,
        body:SafeArea(
          child:(Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                color:Color(0xffBDBDBD),
                child:(Padding(
                  padding:const EdgeInsets.all(23.0),
                  child:FlatButton(
                    highlightColor:Color(0xffBDBDBD),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>hastanemiz(),
                        )
                      );
                    },
                    child:Text('Hastanemiz',
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
              Card(
                color:Color(0xffBDBDBD),
                child:Padding(
                  padding: const EdgeInsets.all(23.0),
                  child:FlatButton(
                    highlightColor:Color(0xffBDBDBD),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=>tibbiKadromuz(),
                      )
                      );
                    },
                    child:Text('Tıbbi Kadromuz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight:FontWeight.w800,
                        letterSpacing: 0.5,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color:Color(0xffBDBDBD),
                child:Padding(
                  padding: const EdgeInsets.all(23.0),
                  child:FlatButton(
                    highlightColor:Color(0xffBDBDBD),
                    onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>NobetListesi(),
                      )
                    );
                    },
                    child:Text('Nöbet Listesi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight:FontWeight.w800,
                        letterSpacing: 0.5,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color:Color(0xffBDBDBD),
                child:Padding(
                  padding: const EdgeInsets.all(23.0),
                  child:FlatButton(
                    highlightColor:Color(0xffBDBDBD),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=>Hakkinda(),
                          )
                      );
                    },
                    child:Text('Hakkında',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight:FontWeight.w800,
                        letterSpacing: 0.5,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color:Color(0xffBDBDBD),
                child:Padding(
                  padding: const EdgeInsets.all(23.0),
                  child:FlatButton(
                    highlightColor:Color(0xffBDBDBD),
                    onPressed:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=>iletisim(),
                          )
                      );
                    },
                    child:Text('İletişim',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight:FontWeight.w800,
                        letterSpacing: 0.5,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );

  }
}

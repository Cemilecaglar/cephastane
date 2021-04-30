import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(iletisim(),
  );
}

class iletisim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(fontFamily: 'Calibri'),
        home:Scaffold(
          backgroundColor: Colors.white10,
          body:SafeArea(
            child:Center(
              child:Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(radius: 70.0,
                    backgroundColor: Colors.black54,
                    backgroundImage: AssetImage('images/logo.jpg'),
                  ),
                  Text(' Adana Çevre Yolu Karatay/KONYA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:30,color:Colors.black87,
                    ),
                  ),
                  Divider(height:10),
                  Card(
                      margin:EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      color:Colors.black12,
                      child:ListTile(leading:Icon(
                        Icons.email,
                        size:30,
                        color:Colors.black87,
                      ),title:Text('konyash@saglik.gov.tr',
                        style: TextStyle(
                          color:Colors.black54,
                          fontSize:34,
                        ),
                      ),)
                  ),
                  SizedBox(height:10,),
                  Card(
                      margin:EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      color:Colors.black12,
                      child:ListTile(leading:Icon(
                        Icons.phone,
                        size:30,
                        color:Colors.black87,
                      ),title:Text('0 (332) 310 50 00',
                        style: TextStyle(
                          color:Colors.black54,
                          fontSize:34,
                        ),
                      ),)
                  ),
                  SizedBox(height:10,),
                  Card(
                      margin:EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      color:Colors.black12,
                      child: ListTile(leading:Icon(
                        Icons.print,
                        size:30,
                        color:Colors.black87,
                      ),title:Text('0 (332) 310 54 98',
                        style: TextStyle(
                          color:Colors.black54,
                          fontSize:34,
                        ),
                      ),)
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

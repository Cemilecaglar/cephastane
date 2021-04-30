import 'package:flutter/material.dart';

class Hata extends StatefulWidget {
  @override
  _HataState createState() => _HataState();
}

class _HataState extends State<Hata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Hata'),
        centerTitle: true,
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Konya Şehir Hastanesi',
            style:TextStyle(fontFamily: 'Calibri',
            fontSize: 30.0)),
            Text('Tc numarası 11 haneli olmalıdır.'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:16.0),
                child:ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/');
                  },
                  child:Text('Ana Sayfaya Dön'),
                ),
            ),
          ],
          ),
        ),
      )
    );
  }
}

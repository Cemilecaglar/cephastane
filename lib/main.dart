import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hastaneuygulamasi/asistanlar.dart';
import 'package:hastaneuygulamasi/hakkinda.dart';
import 'package:hastaneuygulamasi/hastanemiz.dart';
import 'package:hastaneuygulamasi/hata.dart';
import 'package:hastaneuygulamasi/iletisim.dart';
import 'package:hastaneuygulamasi/tibbikadromuz.dart';
import 'package:hastaneuygulamasi/uzmandoktorlar.dart';
import 'menu.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Konya Şehir Hastanesi",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AnaSayfa(),
        '/menu': (context) => menu(),
        '/tibbikadromuz': (context) => tibbiKadromuz(),
        '/uzmandoktorlar': (context) => uzmandoktorlar(),
        '/asistanlar': (context) => asistanlar(),
        '/hastanemiz': (context) => hastanemiz(),
        '/hakkinda': (context) => Hakkinda(),
        '/hata': (context) => Hata(),
        '/iletisim': (context) => iletisim(),

      },
    );
  }
}


class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String tcNo='';
  String Sifre='';
  String data='';

  void kontrolet() {
    if ((tcNo.length == 11)&&(Sifre.length>=6)){
      var data=[];
      data.add(tcNo);
      data.add(Sifre);
     Navigator.push(
        context,
        MaterialPageRoute(
          builder:(context)=>menu(),
          settings: RouteSettings(
            arguments: data,
          ),
        )
      );
    }
    else{
      Navigator.pushNamed(context,'/hata');
    }
  }

  void Kaydet(String text){
    setState(() {
      tcNo=text;
    });
  }
  void Kaydet2(String text)
  {
    setState(() {
      Sifre=text;
    });
  }
  @override
  Widget build(BuildContext context) {
    bool butonaktif = false;
    if ((tcNo.length == 11)&&(Sifre.length>=6)) {
      butonaktif = true;
    }
    else{
      butonaktif=false;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(radius: 70.0,
              backgroundColor: Colors.black54,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
            Text('Konya Şehir Hastanesi',
                style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 30)),
            Text('Tc numaranız:',
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 300,
                  child: TextFormField(
                    maxLength: 11,
                    decoration: InputDecoration(
                      hintText: 'Tc numaranızı giriniz',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                    onChanged: (text) {
                      Kaydet(text);
                    },
                  )
              ),
            ),
            Text(
              'Şifrenizi giriniz:',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                child: TextFormField(
                  obscureText: true,
                  maxLength: 15,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (text) {
                    Kaydet2(text);
                  },
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical:16.0),
              child: ElevatedButton(
                onPressed: butonaktif ? kontrolet : null,
                child: Text('Giriş'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }


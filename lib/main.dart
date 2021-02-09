import 'package:flutter/material.dart';
import 'package:flutter_guess_number/tahminEkrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context).size;
    var ekranYUkseklik = ekranBilgisi.height;
    var ekranGenislik = ekranBilgisi.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Tahmin Oyunu",
              style:
                  TextStyle(
                      color: Colors.blue,
                      fontSize: ekranYUkseklik / 20,
                      fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height:ekranYUkseklik/ 4 ,child: Image.asset("resimler/dice.png")),
            SizedBox(
              width: ekranGenislik / 2,
              height: ekranYUkseklik / 20,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text(
                  "Oyun Başla",
                  style: TextStyle(fontSize: ekranYUkseklik / 40),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TahminEkrani()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

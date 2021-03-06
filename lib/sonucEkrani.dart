import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SonucEkrani extends StatefulWidget {
  bool sonuc;

  SonucEkrani({this.sonuc});

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context).size;
    var ekranYUkseklik = ekranBilgisi.height;
    var ekranGenislik = ekranBilgisi.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuc Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: ekranYUkseklik / 4,
                child: Image.asset(widget.sonuc ? "resimler/happy.png" : "resimler/sad.png")),
            Text(
              widget.sonuc ? "Kazandınız" : "Kaybettiniz",
              style: TextStyle(
                color: Colors.blue,
                fontSize: ekranYUkseklik / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: ekranGenislik / 2,
              height: ekranYUkseklik / 20,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text(
                  "Tekrar Oyna",
                  style: TextStyle(fontSize: ekranYUkseklik / 40),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

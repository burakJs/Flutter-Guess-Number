import 'package:flutter/material.dart';
import 'package:flutter_guess_number/sonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {


  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context).size;
    var ekranYUkseklik = ekranBilgisi.height;
    var ekranGenislik = ekranBilgisi.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Kalan Hak : 4",
              style:
              TextStyle(
                color: Colors.blue,
                fontSize: ekranYUkseklik / 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Yardım : Tahmini Azalt",
              style:
              TextStyle(
                color: Colors.blue,
                fontSize: ekranYUkseklik / 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ekranGenislik / 20),
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: ekranYUkseklik / 30,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onSubmitted: (String metin){
                  print("$metin");
                },
              ),
            ),
            SizedBox(
              width: ekranGenislik / 2,
              height: ekranYUkseklik / 20,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text(
                  "Tahmin Et",
                  style: TextStyle(fontSize: ekranYUkseklik / 40),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

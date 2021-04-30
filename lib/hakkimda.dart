import 'package:flutter/material.dart';
import 'sorular.dart';

class Hakkimda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("Hakkımızda")),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                      " Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456"
                          " kodlu MOBİL PROGRAMLAMA dersi kapsamında 183301129"
                          " numaralı Özlem YILDIZ tarafından 30 Nisan 2021 günü yapılmıştır. ")
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SoruAnasayfa()),
                  );
                },
                child: Text(
                  "Oyuna başla!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ])));
  }
}

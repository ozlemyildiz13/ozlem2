import 'package:flutter/material.dart';
import 'package:ozlem2/soruSor.dart';

int puan = 0;

class SoruAnasayfa extends StatefulWidget {
  @override
  _SoruAnasayfaState createState() => _SoruAnasayfaState();
}

class _SoruAnasayfaState extends State<SoruAnasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              "Puan: $puan",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                kategoriler("fun.jpg", "Karışık", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SoruSor(
                            "Angelina Jolie",
                            "fena",
                            "1: Oyuncu, Film Yapımcısı, Hayırsever",
                            "2: Üç Altın Küre, iki Sinema Oyuncuları Derneği Ödülü ve bir de Oscar sahibidir.",
                            "3: 2014-2016 yılları arasında Brad Pitt ile evliydi.",
                            "karisik")),
                  );
                }),
                kategoriler("film-dizi.jpg", "Film-Dizi", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SoruSor(
                            "The Revenant / Diriliş",
                            "revent",
                            "1: Film, Hugh Glass'ın hayatından esinlenildi.",
                            "2: Leonardo DiCaprio, bu film ile en iyi erkek oyuncu ödülünü kazanmıştır.",
                            "3: Leonardo DiCaprio, Tom Hardy gibi oyuncular rol almıştır.",
                            "film")),
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                kategoriler("sarki.jpg", "Şarkı", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SoruSor(
                            "Bohemian Rhapsody",
                            "tipler",
                            "1: Senfonik Rock türündedir.",
                            "2: Günümüzde, şarkıyla aynı isimde grubun biyografik bir filmi yayınlanmıştır.",
                            "3: İngiliz rock grubu Queen'in şarkısıdır.",
                            "sarki")),
                  );
                }),
                kategoriler("ulke.jpg", "Ülke", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SoruSor(
                            "Türkiye",
                            "bayrak",
                            "Topraklarının büyük bölümü Anadolu'da, küçük bir bölümü ise Balkan Yarımadası'nın güneydoğu uzantısı olan Trakya'da yer alan ülke.",
                            "Marmara Denizi ise İstanbul Boğazı ve Çanakkale Boğazı ile birlikte Anadolu'yu Trakya'dan yani Asya'yı Avrupa'dan ayırır.",
                            "Kuzeybatıda Bulgaristan, batıda Yunanistan, kuzeydoğuda Gürcistan, doğuda Ermenistan, İran ve Azerbaycan'ın ekslav toprağı Nahçıvan, güneydoğuda ise Irak ve Suriye komşusudur.",
                            "ulke")),
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                kategoriler("unlu.jpg", "Ünlü", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SoruSor(
                            "Taylor Swift",
                            "guzel",
                            "1: 11 Grammy ödülü sahibi Amerikalı şarkıcı, söz yazarı ve yönetmen.",
                            "2: Geçmiş yıllarda; Country- Country Rock tarzında eser vermesine karşın günümüzde Pop tarzında eserleri yaygındır.",
                            "3: ''Shake It Off'', ''Blank Space'' ve ''Bad Blood'' single çalışmaları vardır.",
                            "unlu")),
                  );
                }),
                kategoriler("kitap.jpg", "Kitap", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SoruSor(
                            "Harry Potter ve Felsefe Taşı",
                            "herry",
                            "1:  Fantastik türdedir.",
                            "2:  30 Haziran 1997'de Londra Bloomsbury Yayınları tarafından basılmıştır.",
                            "3: J. K. Rowling tarafından yazılmıştır.",
                            "kitap")),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget kategoriler(String dosyaYolu, String butonAdi, Function islem) =>
    GestureDetector(
        onTap: islem,
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              child: Image(
                image: AssetImage('resim/$dosyaYolu'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 10.0),
                child: Container(
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      color: Colors.black,
                      onPressed: () {},
                      child: Text(
                        "$butonAdi",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )),
          ],
        ));

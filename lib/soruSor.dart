import 'package:flutter/material.dart';
import 'package:ozlem2/sorular.dart';

class SoruSor extends StatefulWidget {
  String isim = "";
  String resimYolu = "";
  String soru1 = "";
  String soru2 = "";
  String soru3 = "";
  String kategori = "";
  SoruSor(
    this.isim,
    this.resimYolu,
    this.soru1,
    this.soru2,
    this.soru3,
    this.kategori,
  );
  @override
  _SoruSorState createState() => _SoruSorState();
}

class _SoruSorState extends State<SoruSor> {
  Function kontrol() {
    if (widget.kategori == "unlu") {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SoruSor(
                "Johnny Depp",
                "deep",
                "1: Sweeney Todd: Fleet Sokağı'nın Şeytani Berberi filmindeki Demon Barber rolüyle En İyi Erkek Oyuncu ödüllerinde birinci seçildi.",
                "2: On kere Altın Küre Ödülü'ne aday gösterildi.",
                "3: Karayip Korsanları serisinde rol aldı.",
                "")),
      );
    }
    if (widget.kategori == "kitap") {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SoruSor(
                "Yüzüklerin Efendisi: Yüzük Kardeşliği",
                "lord",
                "1: Fantastik türdedir.",
                "2: Hobbit serisi devam kitaplarındandır.",
                "3: John Ronald Reuel Tolkien tarafından yazılmıştır.",
                "")),
      );
    }
    if (widget.kategori == "sarki") {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SoruSor(
                "Shape Of You",
                "shape",
                "1: Pop türündedir.",
                "2: Ed Sheeran'ın şarkısıdır.",
                '3: "Castle on the Hill" adlı şarkısı ile birlikte çıkış single\'ları olarak dijital platformlarda yayımlandı.',
                "")),
      );
    }
    if (widget.kategori == "ulke") {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SoruSor(
                "Norveç",
                "norvec",
                "1:  Kuzey Avrupa'da bulunan İskandinav Yarımadası'nın batısında bir ülkedir.",
                "2: Anayasal monarşi ile yönetilen ülkenin başkenti Oslo'dur.",
                '3: Finlandiya, İsveç ve Rusya ile komşudur.',
                "")),
      );
    }
    if (widget.kategori == "film") {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SoruSor(
                "Prison Break",
                "break",
                "1: ABD yapımı bir aksiyon dizisidir.",
                "2: 2005 yılında yılında yayınlanmaya başlamıştır.",
                '3: Dominic Purcell, Lincoln Burrows karakterini canlandırırken; Wentworth Miller,Michael Scofield karakterini canlandırmıştır',
                "")),
      );
    }
    if (widget.kategori == "karisik") {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SoruSor(
                "Let It Be",
                "sarki",
                "1: Rock türündedir.",
                "2: Grup aynı isimli belgesel filmi ile müzik dalında akademi ödülü kazanmıştır.",
                '3: İngiliz müzik grubu The Beatles\'ın şarkısıdır.',
                "")),
      );
    }
    if (widget.kategori == "") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SoruAnasayfa()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: ListView(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text(
              "${widget.isim}",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Container(
            height: 250,
            child: Image(
              image: AssetImage('resim/sorular/${widget.resimYolu}.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                Text("${widget.soru1}"),
                SizedBox(height: 20),
                Text("${widget.soru2}"),
                SizedBox(height: 20),
                Text("${widget.soru3}"),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: Colors.black,
                      onPressed: () {
                        kontrol();
                      },
                      child: Text(
                        "Pas",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          color: Colors.black,
                          onPressed: () {
                            setState(() {
                              puan += 1;
                            });
                            kontrol();
                          },
                          child: Text(
                            "Doğru",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          color: Colors.black,
                          onPressed: () {
                            setState(() {
                              puan -= 1;
                            });
                            kontrol();
                          },
                          child: Text(
                            "Yanlış",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:ozlem2/hakkimda.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

var formKey = GlobalKey<FormState>();

class _GirisSayfasiState extends State<GirisSayfasi> {
  String kullanici = "";
  String sifre = "";
  String alert = "";
  String alert1 = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('resim/s.png'),
                      height: size.height * 0.35,
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (x) {
                          x.length < 8
                              ? alert = "8 karakterden az olamaz"
                              : alert = "";
                          setState(() {
                            kullanici = x;
                          });
                        },
                        cursorColor: Colors.white,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.white),
                          hintText: "Kullanıcı Adı",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        autofocus: true,
                      ),
                    ),
                    Text(
                      alert,
                      style: TextStyle(color: Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (x) {
                          x.length < 4
                              ? alert1 = "4 karakterden az olamaz"
                              : alert1 = "";
                          setState(() {
                            sifre = x;
                          });
                        },
                        cursorColor: Colors.white,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.white),
                          hintText: "Kullanıcı Adı",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        autofocus: true,
                      ),
                    ),
                    Text(
                      alert1,
                      style: TextStyle(color: Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: size.width * 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: Colors.black,
                          onPressed: () {
                            if (formKey.currentState.validate()) {
                              formKey.currentState.save();
                              if (kullanici.length >= 8 && sifre.length >= 4) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Hakkimda()),
                                );
                              }
                            }
                          },
                          child: Text(
                            "Giriş yap",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

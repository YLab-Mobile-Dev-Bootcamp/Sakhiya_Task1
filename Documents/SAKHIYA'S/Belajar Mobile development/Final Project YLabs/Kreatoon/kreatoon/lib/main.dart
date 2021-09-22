import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  "Kreatoon",
                  style: TextStyle(color: Colors.amber[800]),
                ),
                backgroundColor: Colors.black,
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.amber[800],
                    )),
              ),
              backgroundColor: Colors.black,
              body: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KreatoonImage(),
                          SecondLineKreatoon(),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Text("Sakura Katsu",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.yellow[800],
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "By Zolivia Anne",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "Seorang gadis cantik bernama sakura telah berhasil merebut hati seorang pemuda kaya raya bernama Sasuke. Sasuke pun tertarik dengan dia, walaupun kisahnya penuh dengan lika-liku. Sakura pun terus mengejar mimpinya agar dia bisa menjadi...",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )),
                          ButtonKreatoon(),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Text("List Episode",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                          KreatoonEpisode5(),
                          KreatoonEpisode4(),
                          KreatoonEpisode3(),
                          KreatoonEpisode2(),
                          KreatoonEpisode1(),
                        ]),
                  ),
                ],
              ))),
    );
  }
}

class KreatoonImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
              padding: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  print("tapped");
                },
                child: Container(
                  width: 45,
                  height: 45,
                  child: Card(
                    color: Colors.grey[400]!.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark,
                          color: Colors.amber[800],
                          size: 20,
                        )),
                  ),
                ),
              )),
        ),
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/girl.png"), fit: BoxFit.cover),
        ));
  }
}

class SecondLineKreatoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(right: 3, bottom: 5, left: 5, top: 7),
            child: Icon(
              Icons.circle,
              color: Colors.yellow[800],
              size: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text("Favorit Saya",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal)),
          )
        ]),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: 3, bottom: 5, left: 150, top: 7),
              child: Icon(
                Icons.visibility,
                color: Colors.white,
                size: 15,
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 3, bottom: 5, top: 5, right: 5),
                child: Text(
                  "10K",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
          ],
        )
      ],
    );
  }
}

class ButtonKreatoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(10),
      child: SizedBox(
        height: 50,
        width: 400,
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Baca Komik",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              )),
          style: ElevatedButton.styleFrom(
              primary: Colors.amber[800],
              onPrimary: Colors.white,
              elevation: 8),
        ),
      ),
    );
  }
}

class KreatoonEpisode5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: EdgeInsets.all(10),
      color: Colors.grey[900],
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/girl.png"),
            title: const Text('Sakura Katsu',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text(
              'Episode 5',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KreatoonEpisode4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: EdgeInsets.all(10),
      color: Colors.grey[900],
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/girl.png"),
            title: const Text('Sakura Katsu',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('Episode 4',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

class KreatoonEpisode3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: EdgeInsets.all(10),
      color: Colors.grey[900],
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/girl.png"),
            title: const Text('Sakura Katsu',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('Episode 3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

class KreatoonEpisode2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: EdgeInsets.all(10),
      color: Colors.grey[900],
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/girl.png"),
            title: const Text('Sakura Katsu',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('Episode 2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

class KreatoonEpisode1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: EdgeInsets.all(10),
      color: Colors.grey[900],
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/girl.png"),
            title: const Text('Sakura Katsu',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('Episode 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

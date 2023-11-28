import 'package:flutter/material.dart';
import 'package:letterku/bookmarks.dart';
import 'package:letterku/isi.dart';
import 'package:letterku/main_menu.dart';
import 'package:letterku/isi3.dart';

class SinopsisOlympus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(10)
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BookmarkScreen()));
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ],
              ),
              Container(
                width: 250,
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset('assets/messageImage_1696588827553.jpg',
                        height: 20),
                  ),
                  Container(
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.black, fontSize: 15,
                          fontWeight: FontWeight.bold),
                      child: Text("LetterKu"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
              children: <Widget>[
                SizedBox(width: 30), //gambar dari pembatas kiri ke kanan
                Image.asset('assets/olympus.png', width: 150),
                SizedBox(width: 45,), // gambar ke text kanan tentangkamu

                Container(
                    child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text('Olympus Heroes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          SizedBox(height: 20), // Menambahkan jarak 20 pixel
                          Text('Rick Riordan', style: TextStyle(color: Colors.orangeAccent, fontSize: 18)),
                          SizedBox(height: 20), // Menambahkan jarak 20 pixel
                          Text('Released on Jan, 2011', style: TextStyle(fontSize: 14),),
                          Padding(padding: EdgeInsets.all(10))
                        ]
                    )
                )


              ]
          ),


          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow),
                        Text('3.7', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text('Rating'),
                  ],
                ),
              ),
              VerticalDivider(color: Colors.black),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('8.9 MB', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Size'),
                  ],
                ),
              ),
              VerticalDivider(color: Colors.black),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('513', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Pages'),
                  ],
                ),
              ),
            ],
          ),


          SizedBox(height: 30),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child :Text('About This Book', style: TextStyle(fontWeight: FontWeight.bold),)
              )
            ],
          ),

          SizedBox(height: 5),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child :Text('The Son of Neptune adalah novel petualangan fantasi tahun 2011 yang ditulis oleh penulis Amerika Rick Riordan , berdasarkan mitologi Yunani dan. Ini adalah buku kedua dalam seri The Heroes of Olympus , didahului oleh The Lost Hero dan diikuti oleh The Mark of Athena . Kisah ini mengikuti petualangan Percy Jackson yang amnesia , putra setengah dewa Neptunus yang juga dikenal sebagai Poseidon , saat ia bertemu dengan sekelompok dewa Romawi dan pergi ke Alaska bersama teman barunya Hazel Levesque dan Frank Zhang untuk membebaskan dewa kematian Yunani, Thanatos. , dan membantu menyelamatkan dunia dari Gaea , dewi bumi.')
              )
            ],
          ),

          SizedBox(height: 30),

          Center(
            child: SizedBox(
              width: 160,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Isi3()));
                },
                child: Text('Read Full', style: TextStyle(fontSize: 16),),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
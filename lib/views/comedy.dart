import 'package:flutter/material.dart';
import 'package:letterku/controller/comedy_controller.dart';
import 'package:letterku/models/comedy_model.dart';



class Comedy extends StatelessWidget {
  final ComedyController controller = ComedyController();
  @override
  Widget build(BuildContext context) {
    List<ComedyBooks> comedyBooks = controller.getComedyBooks();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: (){
                        controller.navigatetoGenre(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  width: 215,
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      child: Image.asset('assets/messageImage_1696588827553.jpg',
                          height: 30),
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    ),
                    Container(
                      child: DefaultTextStyle(
                        style: TextStyle(color: Colors.black, fontSize: 20,
                            fontWeight: FontWeight.bold),
                        child: Text("LetterKu"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text(
                    'Comedy',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),
            Row(
              children: <Widget>[
                ImageWithText1('assets/doge.png', 'Doge Meka', '4.9'),
                ImageWithText1('assets/barrack.png', 'Obama Bad', '4.1'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText1('assets/comedy1.png', 'Ganteng', '4.3'),
                ImageWithText1('assets/bonk.png', 'Hayuk Bro', '4.5'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText1('assets/squidward.png', 'Lah Bang', '4.4'),
                ImageWithText1('assets/doge.png', 'Doy Doge', '4.2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWithText1 extends StatelessWidget {
  final String imagePath;
  final String text;
  final String text2;

  ImageWithText1(this.imagePath, this.text, this.text2);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 410,
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              Image.asset(
                  imagePath
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(right: 62),
                            child: Text(
                              text,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(right: 70),
                              child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text(
                                        text2,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ))

                                  ]
                              )
                          )
                        ]
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
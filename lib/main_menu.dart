import 'package:flutter/material.dart';
import 'package:letterku/author.dart';
import 'package:letterku/bookmarks.dart';
import 'package:letterku/controller/controller.dart';
import 'package:letterku/discover.dart';
import 'package:letterku/genre.dart';
import 'package:letterku/views/account_edit.dart';
import 'package:letterku/views/menu_view.dart';
import 'package:letterku/views/menugenre_view.dart';
import 'package:letterku/views/menuauthor_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainMenuScreen extends StatefulWidget{
  State createState() => _CreateMainMenu();
}

class _CreateMainMenu extends State<MainMenuScreen>{
  final MainMenuController controller = MainMenuController();
  late SharedPreferences loginData;
  late String username;

  void initState(){
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username')!;
    });
  }

  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Expanded(child: buildAppBar()),
                ),
                Menu(),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text("Explore By Genre", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Genre1()));
                          },
                          child: const Icon(Icons.arrow_right_alt, size: 30, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ],
                  ),
                ),
                MenuGenre(),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text("Explore By Author", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Author1()));
                          },
                          child: const Icon(Icons.arrow_right_alt, size: 30, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ],
                  ),
                ),
                MenuAuthor(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomAppBar(),
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      height: 60,
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainMenuScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.deepOrangeAccent,
                          size: 25,
                        ),
                        Text("Home", style: TextStyle(color: Colors.deepOrangeAccent))
                      ],
                    ),
                  ),
                ),),
              Expanded(
                child:Container(
                  width: 100,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, color: Colors.grey.shade600,size: 25,),
                        Text("Discover", style: TextStyle( color: Colors.grey.shade600))
                      ],
                    ),
                  ),
                ),),
              Expanded(
                child:Container(
                  width: 100,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BookmarkScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bookmarks, color: Colors.grey.shade600,size: 25,),
                        Text("Bookmark", style: TextStyle(color: Colors.grey.shade600))
                      ],
                    ),
                  ),
                ),),
              Expanded(
                child:Container(
                  width: 100,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountEdit()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, color: Colors.grey.shade600,size: 25,),
                        Text("Account", style: TextStyle(color: Colors.grey.shade600))
                      ],
                    ),
                  ),
                ),),
            ],
          )
      ),
    );
  }

  Row buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Image.asset("messageImage_1696588827553.jpg", height: 30),
        ),
        const DefaultTextStyle(
          style: TextStyle(color: Colors.black, fontSize: 20,
              fontWeight: FontWeight.bold),
          child: Text("LetterKu"),
        ),
      ],
    );
  }

}
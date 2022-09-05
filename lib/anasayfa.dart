import 'package:airbnb_clone/pages/design_page.dart';
import 'package:airbnb_clone/pages/camp_page.dart';
import 'package:airbnb_clone/pages/iconic_page.dart';
import 'package:airbnb_clone/pages/islands_page.dart';
import 'package:airbnb_clone/pages/tiny_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int chooseIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(140),
            child: AppBar(
              backgroundColor: Colors.white,
              title: Container(


                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,

                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.white),
                            ),


                            height: 50.0,
                            color: Colors.white,
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Where to?",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text("Anywhere · Any week · Add guests",
                                          style:
                                              TextStyle(color: Colors.black54,fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey.withOpacity(0.5),width: 1.5)),
                                    child: Icon(
                                      Icons.tune,
                                      color: Colors.black,size: 20,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              bottom: const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                indicatorColor: Colors.pink,
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Tab(
                      icon: ImageIcon(
                        AssetImage("pictures/icon/iconic.jpg"),

                      ),
                      text: "Iconic",
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("pictures/icon/camp.jpg"),
                    ),
                    text: "Camp",
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("pictures/icon/design.jpg"),
                    ),
                    text: "Design",
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("pictures/icon/ıslands.jpg"),
                    ),
                    text: "Islands",
                  ),

                    Tab(
                      icon: ImageIcon(
                        AssetImage("pictures/icon/tiny.jpg"),
                      ),
                      text: "Tiny homes",

                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(children: [
            IconicPage(),
            CampPage(),
            BeachPage(),
            TinyPage(),
            IslandsPage()
          ]),
          bottomNavigationBar:

          BottomNavigationBar(

            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("pictures/icon/zoom_icon.png"),
                  ),
                  label: "Explore"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("pictures/icon/ecommerce_icon.png"),
                    size: 30,
                  ),
                  label: "Wishlists"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("pictures/icon/airbnb_icon.png"),
                  ),
                  label: "Trips"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("pictures/icon/inbox_icon.png")),
                  label: "Inbox"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("pictures/icon/profile_icon.png")),
                  label: "Profile"),
            ],
            onTap: (indeks) {
              setState(() {
                chooseIndeks = indeks;
              });
            },
            currentIndex: chooseIndeks,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.black54,
            showSelectedLabels: true,
            showUnselectedLabels: true,
          ),
        ),
      ),
    );
  }
}

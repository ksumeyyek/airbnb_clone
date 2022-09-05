import 'package:airbnb_clone/design.dart';
import 'package:flutter/material.dart';


class BeachDetailPage extends StatefulWidget {
  Beach ev;

  BeachDetailPage({required this.ev});

  @override
  State<BeachDetailPage> createState() => _BeachDetailPageState();
}

class _BeachDetailPageState extends State<BeachDetailPage> {
  @override
  Widget build(BuildContext context) {

    var ev=widget.ev;
    return  Scaffold(
appBar: AppBar(title:const Text("data"),),
      body: Column(children: [
        Image.asset("pictures/ev/${ev.resimAdi}",
            height: 240, width: 450, fit: BoxFit.fill),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 5),
          child: Column(
            children: [
              Text(
                "${ev.houseAdi}",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 7,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star_rate_rounded,
                      size: 15,
                    ),
                    Text("${ev.puan} · "),
                    Text(
                      "47 reviews",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black),
                    ),
                    Text(" · ${ev.konumAdi}"),
                  ],
                ),
              ),

            ],
          ),
        ),
        Divider(
          thickness: 2,
          indent: 30,
          endIndent: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2, right: 50, left: 50),
          child: Row(children: [
            Column(
              children: [
                Text("Home hosted by : Geoff",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text("Superhost"),
              ],
            ),
            const Spacer(),
            Image.asset("pictures/profile.png",width: 60,height: 60,),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30,top: 10,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(content: "10 guests"),
              Chip(content: "1 pool"),
              Chip(content: "5 beds"),
              Chip(content: "3 baths"),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          indent: 30,
          endIndent: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 5, bottom: 5),
          child: Column(
            children: <Widget>[
              //basic example
              Row(children: [
                Icon(Icons.work),
                Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 50,top: 10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dedicated workspace",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Expanded(child: Text("A common area with wifi that's well-suited for working.",))
                    ],

                  ),
                )
              ]),
              Row(
                children: [
                  Icon(Icons.stars),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 50,top: 10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Geoff is a Superhost",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),

                          Text("Superhost are experienced ,highly rated hosts who are committed providing great stays for guests."
                              ,),

                      ],

                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          "Free cancellation for 48 hours",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text("",)
                      ],

                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 2,
          indent: 30,
          endIndent: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 2),
          child: Row(
            children: [
              Text(
                "${ev.fiyat} ₺ ",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("night",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
              const Spacer(),
              SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Reserve",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.pink),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class Chip extends StatelessWidget {
  String content;

  Chip({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 74,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Center(
            child: Text(
              content,
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}

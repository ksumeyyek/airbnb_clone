import 'package:airbnb_clone/design.dart';
import 'package:airbnb_clone/design_detail_page.dart';
import 'package:flutter/material.dart';

class BeachPage extends StatefulWidget {
  const BeachPage({Key? key}) : super(key: key);

  @override
  State<BeachPage> createState() => _BeachPageState();
}

class _BeachPageState extends State<BeachPage> {
  Future<List<Beach>> evleriGetir() async {
    var evlerListesi = <Beach>[];
    var h1 = Beach(
        houseId: 2,
        houseAdi: "Shipping Container",
        konumAdi: "Manitoba , Canada",
        resimAdi: "yellow.png",
        puan: 4.89,
        tarih: "Sep 25 - 30",
        fiyat: 3.302);
    var h2 = Beach(
        houseId: 1,
        houseAdi: "Farm Gate House",
        konumAdi: "Nova Scotia , Canada",
        resimAdi: "horse.png",
        puan: 4.78,
        tarih: "Sep 30 - Oct 5",
        fiyat: 5.057);
    var h3 = Beach(
        houseId: 3,
        houseAdi: "Canyon Cliff House",
        konumAdi: "Colorado , United States",
        resimAdi: "cave.png",
        puan: 4.98,
        tarih: "Oct 22 - 27",
        fiyat: 5.124);
    evlerListesi.add(h1);
    evlerListesi.add(h2);
    evlerListesi.add(h3);
    return evlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Beach>>(
        future: evleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var evlerListesi = snapshot.data;
            return ListView.builder(
                itemCount: evlerListesi!.length,
                itemBuilder: (context, indeks) {
                  var ev = evlerListesi[indeks];
                  return GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>BeachDetailPage(ev:ev)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 20, top: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: new BoxDecoration(color: Colors.white),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      "pictures/ev/${ev.resimAdi}",
                                      height: 225,
                                      width: 328,
                                      fit: BoxFit.fill,
                                    )),
                                Positioned(
                                  bottom: 170,
                                  right: 5,
                                  //give the values according to your requirement
                                  child: IconButton(
                                    color: Colors.transparent,
                                    iconSize: 30,
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.black38,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 5, left: 15, right: 15),
                            child: Row(
                              children: [
                                Text(
                                  "${ev.houseAdi}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                ),
                                Text(" ${ev.puan}"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${ev.konumAdi}",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3, bottom: 10),
                                  child: Text("${ev.tarih}",
                                      style: TextStyle(color: Colors.black54)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${ev.fiyat} ₺",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        " night",
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: Container(
        height: 30,
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.black,
          icon: const Icon(Icons.map_sharp,color: Colors.white,size: 20,),
          label: const Text('Map',style: TextStyle(fontSize: 15),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vatansoft_demo/ui/User.dart';
class Hizmet{
  String name;
  double payment;
  Hizmet(this.name,this.payment);
}
class Urun{
  String name;
  double payment;
  int piece;
  double custom;
  Urun(this.name,this.payment,this.piece){
    this.custom = payment*piece;
  }

}
Adisyon(BuildContext context) {
  List<Hizmet> Hizmetler = [];
  Hizmet hizmet = Hizmet("Saç Kesimi", 80.0);
  Hizmet hizmet1 = Hizmet("Röfle", 200);
  Hizmetler.add(hizmet);
  Hizmetler.add(hizmet1);
  List<Urun> Urunler = [];
  Urun urun = Urun("Schwarzkopf Saç Spreyi", 80,4);
  Urunler.add(urun);
  return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Adisyon İçeriği",
                    style: TextStyle(
                        color: Color.fromRGBO(44, 44, 155, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(255, 214, 214, 1),
                      ),
                      child: Center(
                        child: Text(
                          "ÖDENMEDİ",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 46, 86, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color.fromRGBO(194, 225, 255, 1),
                        ),
                        child: Center(
                          child: Text(
                            "380.00₺",
                            style: TextStyle(
                                color: Color.fromRGBO(81, 89, 179, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.people_outline,
                                size: 20,
                                color: Color.fromRGBO(64, 64, 165, 1)),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Color.fromRGBO(64, 64, 165, 0.2),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Text("Özge Korkmaz"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.phone_in_talk_outlined,
                                size: 20,
                                color: Color.fromRGBO(50, 175, 125, 1)),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Color.fromRGBO(50, 175, 125, 0.2)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("500-000-00-00"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.military_tech_outlined,
                                size: 20,
                                color: Color.fromRGBO(0, 132, 255, 1)),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Color.fromRGBO(0, 132, 255, 0.2)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, bottom: 10),
                          child: Text("9700 Puan (97.00₺)"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 70,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    container1(Icons.add, "Hizmet/Ürün Ekle",
                        Color.fromRGBO(56, 56, 151, 1)),
                    container1(Icons.local_offer_outlined, "İndirim Uygula",
                        Color.fromRGBO(231, 167, 5, 1)),
                    container1(Icons.wallet_membership_outlined, "Ödeme Ekle",
                        Color.fromRGBO(13, 147, 94, 1)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Hizmetler",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color.fromRGBO(92, 92, 92, 1)),),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return HizmetlerCard(Hizmetler[index]);
                }),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Ürünler",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color.fromRGBO(92, 92, 92, 1)),),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return UrunlerCard(Urunler[index]);
                }),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Ödemeler",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color.fromRGBO(92, 92, 92, 1)),),
              ),
            ),
          ],
        ),
      ));
}

UrunlerCard(Urun urun) {
  return Padding(
    padding: const EdgeInsets.only(left: 10,right: 10,top:10),
    child: Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(urun.name,style:TextStyle(color: Color.fromRGBO(70, 70, 70, 1)),),

                Text("${urun.payment}₺ | ${urun.piece} Adet | ${urun.custom}₺",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
                UserInfo()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color:  Color.fromRGBO(0, 153, 255, 0.05),
              ),
              child: Icon(Icons.create_outlined,color: Color.fromRGBO(0, 153, 255, 1),),
            ),
          )
        ],
      ),
    ),
  );
}

HizmetlerCard(Hizmet hizmet) {
  return Padding(
    padding: const EdgeInsets.only(left: 10,right: 10,top:10),
    child: Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(hizmet.name,style:TextStyle(color: Color.fromRGBO(70, 70, 70, 1)),),

                Text("${hizmet.payment}₺",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
                UserInfo()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color:  Color.fromRGBO(0, 153, 255, 0.05),
              ),
              child: Icon(Icons.create_outlined,color: Color.fromRGBO(0, 153, 255, 1),),
            ),
          )
        ],
      ),
    ),
  );
}

HizmetlerContainer() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Container()]),
    ),
  );
}

container1(var icon, String string, var renk) {
  return Container(
    height: 70,
    width: 115,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: renk,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 1), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: Colors.white,
            size: 23,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromRGBO(250, 250, 250, 0.1)),
        ),
        Text(
          string,
          style: TextStyle(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget ornek(BuildContext context, int index) {
  return Container(
    height: 100,
    color: Colors.indigo,
    alignment: Alignment.center,
    child: Text("sadasdasdsadasdasd"),
  );
}

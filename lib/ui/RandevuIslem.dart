import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:vatansoft_demo/ui/User.dart';

class Islem {
  String name;
  var icon;
  int notification = 0;
  var color;

  Islem(this.name, this.icon, this.color);
}

RandevuIslem(BuildContext context) {
  List<Islem> RandevuIslemleri = randevuIslemleri();
  List<Islem> AdisyonIslemleri = adisyonIslemleri();
  List<Islem> MusteriIslemleri = musteriIslemleri();
  List<String> ipuclari = [];
  ipuclari.add(
      "Müşterilerimize COVID-19 riskine karşın gerekli önlemleri aldığınıza dair bilgilendirme mesajı gönderin");
  ipuclari.add(
      "Mehmet Arsay ");
  return Scaffold(
    appBar: AppBar(
      toolbarHeight: MediaQuery.of(context).size.width / 5,
      actions: [
        Container(
            height: MediaQuery.of(context).size.width / 5,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: UserInfoAppbar(MediaQuery.of(context).size.width / 7),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 9,
                    height: MediaQuery.of(context).size.width / 9,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.notifications_none,
                      color: Color.fromRGBO(255, 194, 40, 1),
                      size: MediaQuery.of(context).size.width / 13,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color.fromRGBO(255, 194, 40, 0.2)),
                    constraints: BoxConstraints(),
                  ),
                ),
              ],
            )),
      ],
    ),
    body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4.75,
          color: Color.fromRGBO(245, 245, 245, 1),
          child: Swiper(
            autoplayDisableOnInteraction: false,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("KULLANIM İPUÇLARI"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: kullanimIpuclari(ipuclari, index),
                  ),
                ],
              );
            },
            itemCount: ipuclari.length,
            pagination: new SwiperPagination(),
          ),
        ),
        SizedBox.expand(
          child: DraggableScrollableSheet(
              initialChildSize: 0.73,
              minChildSize: 0.729,
              maxChildSize: 1,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 60,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromRGBO(202, 202, 202, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          primary: false,
                          controller: scrollController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textBaslik("Randevu İşlemleri",context),
                              container3(RandevuIslemleri.length,
                                  RandevuIslemleri, context),
                              textBaslik("Adisyon & Paket İşlemleri",context),
                              container3(AdisyonIslemleri.length,
                                  AdisyonIslemleri, context),
                              textBaslik("Müşteri İşlemleri",context),
                              container3(MusteriIslemleri.length,
                                  MusteriIslemleri, context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    ),
  );
}

kullanimIpuclari(List<String> ipuclari, int index) {
  return Container(
    child: Text(
      ipuclari[index],
      textAlign: TextAlign.center,
    ),
  );
}

container3(int itemCount, List<Islem> islemler, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.width / 3.5,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint("${islemler[index].name} Tıklandı");
            },
            child: Padding(
              padding:itemCount == islemler.length - 1 ?  const EdgeInsets.only(
                left: 15,right: 15
              ) :  const EdgeInsets.only(
                left: 15,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7.5)),
                  color: islemler[index].color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, right: 15, left: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 8,
                            height: MediaQuery.of(context).size.width / 8,
                            alignment: Alignment.center,
                            child: Icon(
                              islemler[index].icon,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width / 17,
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: Colors.black.withOpacity(0.1)),
                            constraints: BoxConstraints(),
                          ),
                        ),
                        Visibility(
                          visible:
                              islemler[index].notification == 0 ? false : true,
                          child: Positioned(
                            top: 10,
                            right: 2,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              alignment: Alignment.center,
                              child: islemler[index].notification > 99
                                  ? Text(
                                      "99+",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: islemler[index].color,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Text(
                                      islemler[index].notification.toString(),
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: islemler[index].color,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      islemler[index].name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width / 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
  );
}

textBaslik(String string,BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 12, left: 15, right: 15, bottom: 7),
    child: Text(
      string,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width / 20),
    ),
  );
}

List<Islem> randevuIslemleri() {
  List<Islem> RandevuIslemleri = [];
  Islem islem =
      Islem("Yeni Randevu Oluştur", Icons.add, Color.fromRGBO(255, 83, 117, 1));
  RandevuIslemleri.add(islem);
  islem = Islem("Talepleri Görüntüle", Icons.event_note_outlined,
      Color.fromRGBO(123, 79, 201, 1));
  islem.notification = 5;
  RandevuIslemleri.add(islem);
  islem = Islem("Randevuları Görüntüle", Icons.block_flipped,
      Color.fromRGBO(46, 193, 168, 1));
  islem.notification = 2;
  RandevuIslemleri.add(islem);
  return RandevuIslemleri;
}

List<Islem> adisyonIslemleri() {
  List<Islem> AdisyonIslemleri = [];
  Islem islem =
      Islem("Yeni Adisyon Oluştur", Icons.add, Color.fromRGBO(90, 166, 108, 1));
  AdisyonIslemleri.add(islem);
  islem = Islem("Adisyonları Görüntüle", Icons.edit_outlined,
      Color.fromRGBO(255, 132, 62, 1));
  islem.notification = 100;
  AdisyonIslemleri.add(islem);
  islem = Islem("Borçlu  Adisyonlar", Icons.access_time_outlined,
      Color.fromRGBO(111, 145, 154, 1));
  islem.notification = 2;
  AdisyonIslemleri.add(islem);
  return AdisyonIslemleri;
}

List<Islem> musteriIslemleri() {
  List<Islem> MusteriIslemleri = [];
  Islem islem =
      Islem("Yeni Müşteri", Icons.add, Color.fromRGBO(148, 86, 177, 1));
  MusteriIslemleri.add(islem);
  islem = Islem("Müşterileri Düzenle", Icons.edit_outlined,
      Color.fromRGBO(149, 150, 160, 1));
  MusteriIslemleri.add(islem);
  islem = Islem("Müşteri Block", Icons.warning_amber_outlined,
      Color.fromRGBO(244, 26, 71, 1));
  MusteriIslemleri.add(islem);
  return MusteriIslemleri;
}

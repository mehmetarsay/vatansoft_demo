
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

UserInfo(double size){
  return Container(
    child: Row(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: Colors.blue.shade400,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/defaultProfilePhoto.png"),
            ),
            borderRadius: new BorderRadius.all(
                new Radius.circular(8)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text("İrem Gürsoy",style: TextStyle(color: Color.fromRGBO(128, 128, 128, 1),fontSize: 12,fontWeight: FontWeight.w600),),
        ),

      ],
    ),
  );

}

UserInfoAppbar(double size){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Colors.blue.shade400,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage("assets/defaultProfilePhoto.png"),
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(60)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "İrem Gürsoy",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "Güzellik Uzmanı",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
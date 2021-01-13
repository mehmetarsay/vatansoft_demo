
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

UserInfo(){
  return Container(
    child: Row(
      children: [
        Container(
          height: 25,
          width: 25,
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
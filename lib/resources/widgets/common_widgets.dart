import 'package:flutter/material.dart';

Widget inputWidget({@required lable, @required hintText, @required controller}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: lable,
        hintText: hintText,
      ),
      controller: controller,
    ),
  );
}

Widget informationWidget({@required lable, @required content}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
            child: Text(lable)
        ),
        Expanded(
            flex: 1,
            child: Text(content)
        ),
      ],
    ),
  );
}

Widget buttonWidget({@required lable, @required colorButton, @required colorText, @required onPress}) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 40, right: 40),
      decoration: BoxDecoration(
        color: colorButton,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(lable, style: TextStyle(color: colorText, fontSize: 15),
      ),
    ),
    onTap: onPress,
  );
}
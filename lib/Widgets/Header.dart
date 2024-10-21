import 'package:flutter/material.dart';

Row HomeHeader(Size screenSize, String title, String btnTitle) {
  return Row(
    children: [
      SizedBox(
        width: 10,
      ),
      Text(
        '$title',
        style: TextStyle(
            fontSize: screenSize.height * 0.02, fontWeight: FontWeight.bold),
      ),
      Spacer(),
      GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 13, 112, 251),
              )),
          child: Row(
            children: [
              Text(
                '$btnTitle',
                style: TextStyle(
                  fontSize: screenSize.height * 0.015,
                  color: const Color.fromARGB(255, 13, 112, 251),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: const Color.fromARGB(255, 13, 112, 251),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 15,
        height: 80,
      ),
    ],
  );
}

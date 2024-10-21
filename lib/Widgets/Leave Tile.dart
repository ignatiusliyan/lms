import 'package:flutter/material.dart';

Container LeaveTile(
    Size screenSize, String src, String name, String date, IconData icon) {
  return Container(
    padding: EdgeInsets.only(left: 8, right: 8),
    width: screenSize.width * 0.45,
    height: screenSize.height * 0.08,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 155, 155, 155),
            blurRadius: 3,
            offset: Offset(2, 2),
          ),
        ],
        color: Color.fromARGB(255, 13, 112, 251),
        borderRadius: BorderRadius.circular(20)),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(src),
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              name,
              style: TextStyle(
                  fontSize: screenSize.height * 0.018,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              children: [
                Icon(
                  icon,
                  size: screenSize.height * 0.025,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  date,
                  style: TextStyle(
                      fontSize: screenSize.height * 0.018, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}

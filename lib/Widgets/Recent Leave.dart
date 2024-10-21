import 'package:flutter/material.dart';

Padding recentLeave(Size screenSize, String category, String date,
    String reason, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          leading: Icon(
            icon,
            size: screenSize.height * 0.03,
            color: Color.fromARGB(255, 13, 112, 251),
          ),
          title: Text(
            '$category',
            style: TextStyle(
                fontSize: screenSize.height * 0.02,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            '$date\n$reason',
            style: TextStyle(
                fontSize: screenSize.height * 0.019, color: Colors.black38),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: screenSize.height * 0.02,
            ),
            onPressed: () {},
          ),
        )),
  );
}

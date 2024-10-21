import "package:flutter/material.dart";

Container dashboardTile(Size screenSize, String title, String totalDate,
    String leaveDate, IconData tileicon) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(20)),
    width: screenSize.width * 0.3,
    height: screenSize.height * 0.101,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: screenSize.height * 0.05,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      tileicon,
                      size: screenSize.height * 0.028,
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      Text(
                        '$leaveDate',
                        style: TextStyle(
                            fontSize: screenSize.height * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' /$totalDate',
                        style: TextStyle(
                            fontSize: screenSize.height * 0.02,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          // Spacer(),
          Text(
            '   $title',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: screenSize.height * 0.015,
                fontWeight: FontWeight.bold,
                color: Colors.black38),
          )
        ],
      ),
    ),
  );
}

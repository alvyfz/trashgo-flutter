import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DataCard extends StatelessWidget {
  String title;
  String data;
  String countData;
  Color color;

  DataCard(
      {required this.title,
      required this.data,
      required this.countData,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(7, 10, 7, 5),
        height: 140,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Card(
            color: color,
            elevation: 4,
            shadowColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Text(
                  data,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(countData,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
              ],
            )));
  }
}

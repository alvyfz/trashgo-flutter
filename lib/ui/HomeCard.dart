import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trashgo/pages/ReportPage.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
      height: 110,
      width: double.maxFinite,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ReportPage()));
              },
              child: Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        'assets/trash.svg',
                        color: Color(0xff5472D3),
                        height: 70,
                      ),
                    ),
                  ),
                  Text("Report", style: TextStyle(color: Colors.grey))
                ]),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        'assets/calendar.svg',
                        color: Color(0xff5472D3),
                        height: 60,
                      ),
                    ),
                  ),
                  Text(
                    "Schedule",
                    style: TextStyle(color: Colors.grey),
                  )
                ]),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        'assets/history.svg',
                        color: Color(0xff5472D3),
                        height: 60,
                      ),
                    ),
                  ),
                  Text("History", style: TextStyle(color: Colors.grey))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

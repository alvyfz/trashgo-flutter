import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trashgo/ui/DataCard.dart';
import 'package:trashgo/ui/HomeCard.dart';
import 'package:trashgo/ui/MapCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/TrashGoBrand.svg'),
        backgroundColor: Color(0xff6A1B9A),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
          ListView(
            children: [
              HomeCard(),
              MapCard(),
              Row(
                children: [
                  DataCard(
                    countData: '(ton/tahun)',
                    data: '36.740.685,50',
                    title: 'Timbulan Sampah',
                    color: Color(0xffC4C4C4),
                  ),
                  DataCard(
                    countData: '5,861,200.65 (ton/tahun)',
                    data: '15.95%',
                    title: 'Pengurangan Sampah',
                    color: Color(0xffFFC107),
                  ),
                ],
              ),
              Row(
                children: [
                  DataCard(
                    countData: '19,143,551.95 (ton/tahun)',
                    data: '52.1%',
                    title: 'Penanganan Sampah',
                    color: Color(0xff17A2B8),
                  ),
                  DataCard(
                    countData: '25,004,752.60 (ton/tahun)',
                    data: '68.06%',
                    title: 'Sampah terkelola',
                    color: Color(0xff28A745),
                  ),
                ],
              ),
              Row(
                children: [
                  DataCard(
                    countData: 'Nasional',
                    data: '16.754',
                    title: 'Bank Sampah Unit',
                    color: Color(0xff6610F2),
                  ),
                  DataCard(
                    countData: '11,735,932.90 (ton/tahun)',
                    data: '31.94%',
                    title: 'Sampah Tidak terkelola',
                    color: Color(0xffDC3545),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

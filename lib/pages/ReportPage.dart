import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trash Report",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Report with the following steps:'),
                        Text(
                          '1. Scan the barcode available at the landfill site.',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '2. A clear photo of the garbage dump.',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '3. Click the submit report button to complete the report',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Scan QRcode',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.qr_code,
                      size: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff9C4DCC),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text('Open camera',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Take a picture',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.photo_outlined,
                      size: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff9C4DCC),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text('Open camera',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 170, 0, 0),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: OutlineButton(
                  child: Text('Send report',
                      style: TextStyle(
                          color: Color(0xff9c4dcc),
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  borderSide: BorderSide(
                    color: Color(0xff9C4DCC),
                    style: BorderStyle.solid,
                    width: 1.8,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

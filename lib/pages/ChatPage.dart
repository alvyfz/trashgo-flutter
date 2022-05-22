import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Chat',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF5EDFA),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choice',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.cyan,
                                child: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Inbox')
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.cyan,
                                child: Icon(
                                  Icons.group,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Group chat')
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              'Your chat',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.cyan,
                    child: Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Grup Kp. Cincau Residence',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Row(children: [
                        Text(
                          'You:  ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text('the schedule has appeared',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ]),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.cyan,
                    child: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alexandra',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('please take out the trash bro',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            )
          ]),
        ));
  }
}

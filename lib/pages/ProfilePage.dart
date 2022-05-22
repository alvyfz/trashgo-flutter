import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.cyan,
                      child: Text(
                        'RS',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Relevant Semesta',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Information account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Relevant Semesta',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'relevantsemesta@gmail.com',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            '+62812345678910',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Ajak teman menggunakan trashGO',
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'General',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Privacy policy',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Terms of service',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Rate us',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50,
                      child: OutlineButton(
                        child: Text('LOG OUT',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                          style: BorderStyle.solid,
                          width: 1.8,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

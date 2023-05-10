// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix_chat_app/features/chat/pages/user_chat.dart';
import 'package:matrix_chat_app/features/invite_user/pages/page_1.dart';
import 'package:matrix_chat_app/features/user_preferences/pages/page_1.dart';

class ChatHomePage extends StatefulWidget {
  final Client client;
  final ProfileInformation profile;
  const ChatHomePage({super.key, required this.client, required this.profile});
  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}
//Profile
//get accountData => _accountData;



class _ChatHomePageState extends State<ChatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Text('MatChat',
                        style: TextStyle(
                          fontFamily: 'obitron',
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 1.5
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Settings(
                              profile: widget.profile,
                            );
                          }));
                        },
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return GenerateScreen();
                }));
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Convo();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: null,
                          radius: 25,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rick Astley',
                                style: TextStyle(
                                  fontFamily: 'EDU',
                                  color: Colors.white,
                                  fontSize: 23,
                                  letterSpacing: 1.6,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('Never gonna give you up',
                                style: TextStyle(
                                  fontFamily: 'EDU',
                                  letterSpacing: 1.4,
                                  color: Colors.grey[300],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 0,
                color: Colors.black,
                thickness: 0.5,
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:matrix_chat_app/features/user_preferences/widgets/catalogue.dart';

class BackgroundSelection extends StatefulWidget {
  const BackgroundSelection({Key? key}) : super(key: key);

  @override
  State<BackgroundSelection> createState() => _BackgroundSelectionState();
}

class _BackgroundSelectionState extends State<BackgroundSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
            'Select your Background',
          style: TextStyle(fontFamily: 'obitron', fontSize: 20, color: Colors.white),
        ),
      ),
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Catalogue(),
                Catalogue()
              ]
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Catalogue(),
                Catalogue()
              ],
            )
          ]
      ),
    );
  }
}

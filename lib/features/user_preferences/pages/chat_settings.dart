import 'package:flutter/material.dart';
import 'package:matrix_chat_app/features/user_preferences/pages/chat_settings.dart';

class ChatSettings extends StatefulWidget {
  const ChatSettings({Key? key}) : super(key: key);

  @override
  State<ChatSettings> createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
                'Settings',
                    style: TextStyle(
                fontSize: 20,
              letterSpacing: 1.4,
              fontFamily: 'obitron',
            ),
            ),
          ),
        ),
      ),
      body: ElevatedButton(
        onPressed: () {
        }, child: Text('white'),

      )
    );
  }
}

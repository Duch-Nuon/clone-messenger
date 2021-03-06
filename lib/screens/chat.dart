import 'package:clone_chat/data/photo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  static final now = new DateTime.now();
  String formattedTime = DateFormat('kk:mm').format(now);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: ListView.builder(
        itemCount: photo.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Card(
              elevation: 0,
              child: SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(photo[index]),
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              color: Colors.green,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            name[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'You: sent a void clip.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(formattedTime),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

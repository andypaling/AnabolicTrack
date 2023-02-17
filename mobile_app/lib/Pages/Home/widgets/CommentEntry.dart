import 'package:flutter/material.dart';

class CommentEntry extends StatefulWidget {
  const CommentEntry({Key? key}) : super(key: key);

  @override
  State<CommentEntry> createState() => _CommentEntryState();
}

class _CommentEntryState extends State<CommentEntry> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigoAccent,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.bolt,
                    color: Colors.white,
                  ),
                  Text(' Daily Notes:',
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70)),
                ],
              ),
              const SizedBox(
                width: 170,
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Sleep, Mood, etc...",
                      hintStyle: TextStyle(
                          color: Colors.white60,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                ),
              )
            ],
          )),
    );
  }
}

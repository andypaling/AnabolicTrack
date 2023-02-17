import 'package:flutter/material.dart';

class WeightEntry extends StatefulWidget {
  const WeightEntry({Key? key}) : super(key: key);

  @override
  State<WeightEntry> createState() => _WeightEntryState();
}

class _WeightEntryState extends State<WeightEntry> {
  @override
  Widget build(BuildContext context) {
    return Card(
          color: Colors.redAccent,

          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.scale_outlined,
                        color: Colors.white,
                      ),
                      Text(' Daily Weight:',
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          )),
                    ],),

                  const SizedBox(
                    width: 170,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Weight",
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                    ),
                  )
              ])),
    );
  }
}

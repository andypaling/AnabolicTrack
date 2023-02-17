import 'package:flutter/material.dart';

class CurrentProgramme extends StatelessWidget {
  const CurrentProgramme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.redAccent,
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
          bottom: 10,
        ),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.show_chart,
                      color: Colors.white,
                    ),
                    Text(
                      ' Current Programme',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Text('Monday',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Flexible(
                      child: Text('Push',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Text('Tuesday',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Flexible(
                      child: Text('Pull',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Text('Wednesday',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Flexible(
                      child: Text('Legs',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Text('Thursday',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Flexible(
                      child: Text('Push A block B - Chest specialization',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Text('Friday',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Flexible(
                      child: Text('Pull A block B - Lats specialization',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Text('Saturday',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Flexible(
                      child: Text('Legs with heavy deadlines prior',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Text('Sunday',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white70,
                    ),
                    Flexible(
                      child: Text(
                          'Rest - active recovery session including light cardio',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            )));
  }
}

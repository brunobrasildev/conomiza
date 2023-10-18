// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class TopCard extends StatefulWidget {
  const TopCard({super.key});

  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 127,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('DESPESAS TOTAIS',
                  style: TextStyle(color: Colors.grey[500], fontSize: 16)),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the row horizontally
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Align the text in the first column to the top
                    children: const <Widget>[
                      Text(
                        'R\$',
                        style:
                            TextStyle(color: Color(0xFF515151), fontSize: 24),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center the text in the second column vertically
                    children: const <Widget>[
                      Text(
                        '300',
                        style: TextStyle(color: Colors.white, fontSize: 64),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Align the text in the third column to the top
                    children: const <Widget>[
                      Text(
                        ',50',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF101010)),
      ),
    );
  }
}

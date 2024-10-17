import 'dart:math';

import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box(
      {super.key, required this.name, required this.url, required this.onoff});
  final String name;
  final String url;
  final bool onoff;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                url,
                height: 80,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Transform.rotate(
                      angle: pi / 2,
                      child: Switch(
                        activeColor: Color.fromARGB(255, 35, 207, 41),
                        value: onoff,
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

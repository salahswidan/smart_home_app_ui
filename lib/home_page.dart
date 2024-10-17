import 'package:flutter/material.dart';
import 'package:smart_home_app/box.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List devices = [
    ["Smart Light", "icons/light-bulb.png", true],
    ["Smart AC", "icons/air-conditioner.png", false],
    ["Smart TV", "icons/smart-tv.png", false],
    ["Smart Fan", "icons/fan.png", true],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {},
                    child: Image.asset(
                      'icons/menu.png',
                      height: 45,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {},
                    child: Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HEY , WELCOME BACK TO HOME ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Salah swidan',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Smart Devices',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: devices.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                  itemBuilder: (context, index) {
                    return Box(
                      name: devices[index][0],
                      url: devices[index][1],
                      onoff: devices[index][2],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

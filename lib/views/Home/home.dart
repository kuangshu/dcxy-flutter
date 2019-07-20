import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Column buildIconMenu(String name, String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          name,
          width: 85.0,
          height: 90.0,
        ),
        Container(
          width: 120.0,
          padding: EdgeInsets.only(top: 4.0),
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 13.0,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Image.asset(
          'assets/home/banner-2@2x.png',
          width: 750.0,
          fit: BoxFit.cover,
        ),
        Container(
          color: Color(0xFFFFFFFF),
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildIconMenu('assets/home/hairDry@2x.png', '吹风'),
              buildIconMenu('assets/home/hairDry@2x.png', '洗浴洗浴'),
              buildIconMenu('assets/home/hairDry@2x.png', '洗浴洗浴洗浴'),
              // buildIconMenu('assets/home/hairDry@2x.png', '洗浴'),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 100,
              color: Colors.yellow,
              child: Text('100'),
            ),
            Container(
              width: 100,
              child: Text('100'),
            ),
            Container(
              width: 100,
              child: Text('100'),
            ),
            Container(
              width: 75,
              color: Colors.yellow,
              child: Text('100'),
            ),
          ],
        )
      ],
    ));
  }
}

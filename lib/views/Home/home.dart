import 'package:dcxy_flutter/components/Scroll/carousel.dart';
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

  Widget buildScrollItem(context, viewportOffset) {
    // print('context: $context, viewportOffset: $viewportOffset');
    return Image.asset(
      'assets/home/banner-2@2x.png',
      width: 750.0,
      height: 260,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 750,
            height: 260,
            color: Colors.black12,
          ),
          Carousel(),
          Container(
            width: 750,
            height: 260,
            color: Colors.black12,
          ),
          // Image.asset(
          //   'assets/home/banner-2@2x.png',
          //   width: 750.0,
          //   height: 260,
          //   fit: BoxFit.cover,
          // ),
          // Container(
          //   color: Color(0xFFFFFFFF),
          //   margin: EdgeInsets.symmetric(horizontal: 0, vertical: 24.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: <Widget>[
          //       buildIconMenu('assets/home/hairDry@2x.png', '吹风'),
          //       buildIconMenu('assets/home/hairDry@2x.png', '洗浴洗浴'),
          //       buildIconMenu('assets/home/hairDry@2x.png', '洗浴洗浴洗浴'),
          //       buildIconMenu('assets/home/hairDry@2x.png', '洗浴'),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

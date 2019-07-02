import 'package:dcxy_flutter/components/AppBar.dart' as custom;
import 'package:dcxy_flutter/components/NavItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _tabIndex = 0;

  Column buildIconMenu(String name, String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          name,
          width: ScreenUtil.getInstance().setWidth(85),
          height: ScreenUtil.getInstance().setHeight(90),
        ),
        Container(
          width: ScreenUtil.getInstance().setWidth(120),
          padding: EdgeInsets.only(top: 4),
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 13,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }

  Row buildBottomNav() {
    return Row(
      children: <Widget>[
        NavItem('assets/buttomIcon/home@2x.png', '首页'),
        NavItem('assets/buttomIcon/my@2x.png', '我的'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Scaffold(
      appBar: custom.AppBar(title: '多彩自助'),
      body: Container(
          child: Column(
        children: <Widget>[
          Image.asset(
            'assets/home/banner-2@2x.png',
            width: ScreenUtil.getInstance().setWidth(750),
            height: ScreenUtil.getInstance().setHeight(260),
            fit: BoxFit.cover,
          ),
          Container(
            color: Color(0xFFFFFFFF),
            margin: EdgeInsets.symmetric(
                horizontal: 0,
                vertical: ScreenUtil.getInstance().setHeight(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildIconMenu('assets/home/hairDry@2x.png', '吹风'),
                buildIconMenu('assets/home/hairDry@2x.png', '洗浴洗浴'),
                buildIconMenu('assets/home/hairDry@2x.png', '洗浴洗浴洗浴'),
                buildIconMenu('assets/home/hairDry@2x.png', '洗浴'),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/buttomIcon/home@2x.png'),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/buttomIcon/my@2x.png'),
            title: Text('我的'),
          ),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:dcxy_flutter/views/Home/home.dart';
import 'package:dcxy_flutter/views/My/my.dart';
import 'package:flutter/material.dart';
import 'package:dcxy_flutter/components/AppBar.dart' as custom;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _tabIndex = 0;
  final List<Widget> _children = [Home(), MyPage()];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Scaffold(
      appBar: custom.AppBar(title: '多彩自助'),
      body: IndexedStack(
        index: _tabIndex,
        children: _children,
      ),
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

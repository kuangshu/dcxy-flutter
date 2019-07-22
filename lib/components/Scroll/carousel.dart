import 'dart:async';
import 'package:dcxy_flutter/components/Scroll/CustomPageView.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Carousel> {
  PageController _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.9,
  ); //索引从0开始，因为有增补，所以这里设为1
  int _currentIndex = 1;
  List<String> _images = [
    'assets/home/banner-1@2x.png',
    'assets/home/banner-2@2x.png',
    'assets/home/banner-3@2x.png',
  ];
  Timer _timer; //定时器

  //设置定时器
  _setTimer() {
    _timer = Timer.periodic(Duration(seconds: 4), (_) {
      _pageController.animateToPage(_currentIndex + 1,
          duration: Duration(milliseconds: 400), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    List addedImages = [];
    if (_images.length > 0) {
      addedImages
        ..add(_images[_images.length - 1])
        ..addAll(_images)
        ..add(_images[0]);
    }
    return Container(
      height: 360,
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        overflow: Overflow.clip,
        children: [
          NotificationListener(
            onNotification: (ScrollNotification notification) {
              if (notification.depth == 0 &&
                  notification is ScrollStartNotification) {
                if (notification.dragDetails != null) {
                  if (_timer != null && _timer.isActive) _timer.cancel();
                }
              } else if (notification is ScrollEndNotification) {
                if (_timer != null && _timer.isActive) _timer.cancel();
                _setTimer();
              }
            },
            child: _images.length > 0
                ? CustomPageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (page) {
                      int newIndex;
                      if (page == addedImages.length - 1) {
                        newIndex = 1;
                        _pageController.jumpToPage(newIndex);
                      } else if (page == 0) {
                        newIndex = addedImages.length - 2;
                        _pageController.jumpToPage(newIndex);
                      } else {
                        newIndex = page;
                      }
                      setState(() {
                        _currentIndex = newIndex;
                      });
                    },
                    children: addedImages
                        .map((item) => Container(
                              width: 300,
                              height: 260,
                              child: Image.asset(
                                item,
                                fit: BoxFit.contain,
                              ),
                            ))
                        .toList(),
                  )
                : Container(),
          ),
          Positioned(
            bottom: 15.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _images
                  .asMap()
                  .map((i, v) => MapEntry(
                      i,
                      Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.only(left: 2.0, right: 2.0),
                        decoration: ShapeDecoration(
                            color: _currentIndex == i + 1
                                ? Colors.red
                                : Colors.white,
                            shape: CircleBorder()),
                      )))
                  .values
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

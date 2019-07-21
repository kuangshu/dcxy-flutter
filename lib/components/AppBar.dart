import 'package:dcxy_flutter/theme/ThemeColors.dart';
import 'package:flutter/cupertino.dart';

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  AppBar({@required this.title});

  final String title;

  // final double num = getAdapterRatioRatio();

  @override
  Size get preferredSize {
    return new Size.fromHeight(128.0);
  }

  @override
  Widget build(BuildContext context) {
    double top = MediaQuery.of(context).padding.top;
    return Container(
        height: 128.0,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[const Color(0xfffe9c0b), const Color(0xfffe7f0c)],
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: top),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
              fontSize: 34.0,
              color: ThemeColors.colorWhite,
            ),
          )),
        ));
  }
}

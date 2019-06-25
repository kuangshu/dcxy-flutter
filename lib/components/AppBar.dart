import 'package:dcxy_flutter/theme/ThemeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  AppBar({@required this.title});

  final String title;

  @override
  Size get preferredSize {
    return new Size.fromHeight(56.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtil.getInstance().setHeight(128),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[const Color(0xfffe9c0b), const Color(0xfffe7f0c)],
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
              fontSize: ScreenUtil.getInstance().setSp(34),
              color: ThemeColors.colorWhite,
            ),
          )),
        ));
  }
}

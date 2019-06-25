import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavItem extends StatelessWidget {
  NavItem(this.icon, this.label);

  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          icon,
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
        )
      ],
    );
  }
}

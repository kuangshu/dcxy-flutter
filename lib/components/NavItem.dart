import 'package:flutter/cupertino.dart';

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
        )
      ],
    );
  }
}

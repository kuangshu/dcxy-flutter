import 'dart:ui';

class ThemeColors {
  // 默认背景色
  static Color defaultBackgroud = Color(0xfff2f2f2);

  ///主色调，按钮，特殊需要强调和突出的文字
  static Color colorTheme = Color.fromRGBO(255, 134, 0, 1);

  ///主色调渐变用色，个别按钮和状态，从colorBtnLeft变化到colorBtnRight
  static Color colorBtnLeft = Color.fromRGBO(251, 156, 51, 1);
  static Color colorBtnRight = Color.fromRGBO(252, 191, 50, 1);

  ///提示性文字，状态信息，按钮等
  static Color colorRed = Color.fromRGBO(226, 36, 39, 1);

  ///功能性较强的文字，内页标题等
  static Color color333333 = Color.fromRGBO(51, 51, 51, 1);

  ///正文，副标题以及可点击区域的主要文字和图标
  static Color color666666 = Color.fromRGBO(102, 102, 102, 1);

  ///弱化信息，提示性文字信息，不可点击状态
  static Color color999999 = Color.fromRGBO(153, 153, 153, 1);

  ///弱化信息，提示性文字信息
  static Color colorDDDDDD = Color.fromRGBO(221, 221, 221, 1);

  ///背景区域划分，分割线
  static Color colorF6F6F8 = Color.fromRGBO(246, 246, 248, 1);

  ///纯白色
  static Color colorWhite = Color.fromRGBO(255, 255, 255, 1);

  ///纯黑色
  static Color colorBlack = Color.fromRGBO(0, 0, 0, 1);
}

import 'package:dcxy_flutter/theme/ThemeColors.dart';
import 'package:dcxy_flutter/views/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  final textSize = 48;

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(
    MultiProvider(providers: [
      Provider<int>(
        builder: (_) => textSize,
      ),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: ThemeColors.defaultBackgroud,
      theme: ThemeData.light(),
      home: MainPage(),
    );
  }
}

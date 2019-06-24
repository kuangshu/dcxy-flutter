import 'package:dcxy_flutter/counter_model.dart';
import 'package:dcxy_flutter/screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final counter = CounterModel();
  final textSize = 48;

  runApp(
    MultiProvider(providers: [
      Provider<int>(
        builder: (_) => textSize,
      ),
      ChangeNotifierProvider<CounterModel>.value(value: counter),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: FirstScreen(),
    );
  }
}

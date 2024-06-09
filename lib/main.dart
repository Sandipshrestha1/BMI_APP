import 'package:bmi_app/pages/main_page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'IBMI',
      routes: {
        '/': (BuildContext context) => const MainPage(),
      },
      initialRoute: '/',

      // home: CupertinoPageScaffold(
      //   child: Container(color: Colors.blue),
      // ),
    );
  }
}

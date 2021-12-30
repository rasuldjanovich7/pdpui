import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(top: mediaQuery.padding.top),
            alignment: Alignment.center,
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'UI',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          preferredSize: Size.fromHeight(60),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User',
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              const SizedBox(width: 10),
              Text(
                'Interface',
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

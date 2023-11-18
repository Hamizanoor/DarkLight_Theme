import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _LightTheme = ThemeData(
  primarySwatch: Colors.blueGrey,
  brightness: Brightness.light,
);
ThemeData _DarkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _DarkTheme :  _LightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DarkandLightTheme"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(_iconBool ? _iconDark : _iconLight),
            )
          ],
        ),
      ),
    );
  }
}

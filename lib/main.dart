import 'package:flutter/material.dart';
import 'package:widgets/widgets/AnimatedText.dart';
import 'package:widgets/widgets/BottomSheet.dart';
import 'package:widgets/widgets/DropdownList.dart';
import 'package:widgets/widgets/alertDialog.dart';
import 'package:widgets/widgets/drawerHamburger.dart';
import 'package:widgets/widgets/formsInput.dart';
import 'package:widgets/widgets/geolocation.dart';
import 'package:widgets/widgets/imagePicker.dart';
import 'package:widgets/widgets/images.dart';
import 'package:widgets/widgets/navigationBar.dart';
import 'package:widgets/widgets/tabbar.dart';
import 'package:widgets/widgets/ui.dart';
import 'package:widgets/widgets/ui2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: UI2(),
    );
  }
}
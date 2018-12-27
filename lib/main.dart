import 'package:flutter/material.dart';
import 'package:flutter_app_learn/animation/FadeInAndOut.dart';
import 'package:flutter_app_learn/drawer/CustomDrawer.dart';
import 'package:flutter_app_learn/orientation/OrientationDemo.dart';
import 'package:flutter_app_learn/snackBar/CustomSnackBar.dart';
import 'package:flutter_app_learn/tabs/MyTab.dart';
import 'package:flutter_app_learn/theme/MyTheme.dart';

void main(){
  //only the last runApp() work.if you want to see other widget,
  //please comment all runApp except the one which you want to run
  runApp(FadeInAndOut());
  runApp(CustomDrawer());
  runApp(CustomSnackBar());
  runApp(OrientationDemo());
  runApp(MyTheme());
  runApp(MyTab());
}
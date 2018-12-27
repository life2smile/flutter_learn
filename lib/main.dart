import 'package:flutter/material.dart';
import 'package:flutter_app_learn/animation/FadeInAndOut.dart';
import 'package:flutter_app_learn/drawer/CustomDrawer.dart';
import 'package:flutter_app_learn/snackBar/CustomSnackBar.dart';

void main(){
  runApp(FadeInAndOut());//淡入淡出效果
  runApp(CustomDrawer());
  runApp(CustomSnackBar());
}
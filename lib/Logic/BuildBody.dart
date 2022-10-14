
import 'package:flutter/cupertino.dart';
import 'package:klapp02/Paths.dart';
import 'package:klapp02/UI/RegestScreen.dart';

BuildBody(int index){

    final screens=[
      LoginScreen(),
      RegestScreen(),
    ];
    return screens[index];
  }

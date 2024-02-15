import 'package:flutter/material.dart';

extension  HelperScreen on  BuildContext{
  screenWidget(){
    return MediaQuery.of(this).size.width;
  }

  screenHeight(){
    return MediaQuery.of(this).size.height;
  }
  
}
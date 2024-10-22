import 'package:flutter/material.dart';

import '../../../../core/app_assest/app_color.dart';
import '../../../../core/app_assest/app_style.dart';

AppBar appBarSection(){
  return AppBar(
        backgroundColor: kBackgroundColor ,
        title: Text('رجوع',style: AppStyle.homeScreenStyle.copyWith(color: Colors.black),),
      );
}
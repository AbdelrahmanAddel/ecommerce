
import 'package:flutter/material.dart';

import '../../../../core/app_assest/app_color.dart';
import '../../../../core/app_assest/app_style.dart';
import '../../../../core/app_assest/app_text.dart';


  AppBar appBarBody() {
    return AppBar(
    backgroundColor:kPrimaryColor,
    title:  Text(AppText.welcomeInStore,style: AppStyle.homeScreenStyle,),
    actions: [IconButton(onPressed: (){}, icon:const Icon(Icons.menu,color: Colors.white,))],
  );
  }

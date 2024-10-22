import 'package:flutter/material.dart';

import '../../../../core/app_assest/app_color.dart';
import '../sections/home_body_screen.dart';
import '../sections/app_bar_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:appBarBody(),
      body:  const HomeBodyScreen(),
    );
  }
}


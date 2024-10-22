
import 'package:advaced_ecommerce/core/app_assest/app_color.dart';
import 'package:advaced_ecommerce/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';

import '../section/app_bar_section.dart';
import '../section/details_view_body.dart';
// ignore: must_be_immutable
class DetailsView extends StatelessWidget {
   DetailsView({super.key,required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBarSection(),
      body: DetailsViewBody(product: product),
    );
  }
}


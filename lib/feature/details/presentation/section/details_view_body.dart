

import 'package:advaced_ecommerce/core/app_assest/app_color.dart';
import 'package:advaced_ecommerce/core/app_assest/app_style.dart';
import 'package:advaced_ecommerce/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';
class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration:  const BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
          ),
          child:  Stack(
            
            children: [
              const Center(
                child: CircleAvatar(
                radius: 149,
                backgroundColor: Colors.white,
                              ),
              ),
                  Center(
                  child: Image.asset(product.image),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                         
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Container(
                      height: 24
                      ,width: 24
                      ,decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor,
                        border: Border.all(
                          color: Colors.transparent
                        )
                      ),
                    ),
                  
                    ],
                  ),
                )
                ,
                Text('data')



            ],
          ),
        ),

        const SizedBox(height: 14,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:35.0),
          child: Text(product.description,style: AppStyle.homeScreenStyle.copyWith(fontWeight: FontWeight.bold),),
        )
      ],
    
    );
  }
}

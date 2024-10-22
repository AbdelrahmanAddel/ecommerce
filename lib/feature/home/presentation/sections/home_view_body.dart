import 'package:advaced_ecommerce/core/app_assest/app_color.dart';
import 'package:advaced_ecommerce/core/app_assest/app_style.dart';
import 'package:flutter/material.dart';

import '../../model/product_model.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const SizedBox(height: 10,),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 70
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40))
                ),
              ),
               ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount:products.length,

                itemBuilder: (context ,index)=> ProductCard(index: index, product: products[index],),
              
               )
              
              
          
            ],
          ),
        )
    
      ],
    );
    
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    
    super.key, required this.index, required this.product,
  });
  final int index;
  final Product product;
  

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return Container(     
      margin: const EdgeInsets.symmetric(
       vertical: 10,
       horizontal: 20
     ),
     height: 190,
    
     // color: Colors.red,
     child: Stack(
       alignment: Alignment.bottomCenter ,
               
       children: [
         Container(
           height: 180,

           decoration:  BoxDecoration(
             borderRadius: BorderRadius.circular(22),
             color: Colors.white,
             boxShadow: const [
                BoxShadow(
                 offset: Offset(0, 15),
                 blurRadius: 25,
                 color: Colors.black12
               )
             ]
           ),
         
         
         ),
          Positioned(
            top: 0,
            left: 0,
            
            child: Container(
            padding:const EdgeInsets.symmetric(horizontal: 20),
           width: 200,
           height: 160,
           child: Image.asset(product.image)
           ),
          ),
          Positioned(
            right: 0,
        
            child: SizedBox(
              height: 136,
              width: size.width-200,
              child:  Column(
                 
                children: [
                  Text(products[index].title,style: AppStyle.homeScreenStyle.copyWith(color: Colors.black,),maxLines: 1,),
                  
                  Text(products[index].description ,style: AppStyle.homeScreenStyle.copyWith(color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 10,),
                  Container(

                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(color: kSecondaryColor,borderRadius:BorderRadius.circular(22)),
                    child:  Text('\$ ${products[index].price.toString()}',style: AppStyle.homeScreenStyle.copyWith(color: Colors.black),),
                  )


                ],
              ),

          ))
       ],
     ),
                  );
  }
}
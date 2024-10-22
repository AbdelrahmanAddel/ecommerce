import 'package:advaced_ecommerce/core/app_assest/app_color.dart';
import 'package:advaced_ecommerce/core/app_assest/app_style.dart';
import 'package:advaced_ecommerce/feature/details/presentation/view/details_view.dart';
import 'package:advaced_ecommerce/feature/home/model/product_model.dart';
import 'package:flutter/material.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const SizedBox(height: 20,),

        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                ),
               ),
               ListView.builder(
               physics: const BouncingScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context,index)=>ListViewCard(product: products[index],onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (builder)=>DetailsView(product: products[index],))),))
               
               ,
               


            ],
          ),
        ),
      ],
    );
  }
}

class ListViewCard extends StatelessWidget {
  const  ListViewCard({
    super.key, required this.product, this.onTap,
  });
  final Product product;
  final  Function()? onTap;

  
  @override
  Widget build(BuildContext context) {
Size size =MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
       margin: const EdgeInsets.symmetric(vertical: 10 ,horizontal: 20),
                    
       height: 200,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         // color: Colors.white
      
       ),     
       child: Stack(
          children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                 height: 170,
      
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
       child: 
      Container(
      
       padding: EdgeInsets.symmetric(horizontal: 20),
       width: 200,
       height: 160,
       child: Image.asset( product.image),
       ),
      
      ),
      Positioned(
       
      
       
        child: SizedBox(
          width:  size.width-200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(product.title,style: AppStyle.homeScreenStyle.copyWith(color: Colors.black),),
             const  SizedBox(height: 5,),
              Text(product.subTitle,overflow: TextOverflow.ellipsis,maxLines: 1,style: AppStyle.homeScreenStyle.copyWith(color: Colors.black)),
              const SizedBox(height: 10,),
      
              Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(20)
      
      
                ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('\$ ${product.price.toString()}',style: AppStyle.homeScreenStyle.copyWith(color: Colors.black)),
              )),
          
          
            ],
          ),
        ),)
       ],),
      ),
    );
  }
}
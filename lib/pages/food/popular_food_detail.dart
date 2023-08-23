import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poslasticarnica/utils/dimensions.dart';
import 'package:poslasticarnica/widgets/app_column.dart';
import 'package:poslasticarnica/widgets/app_icon.dart';
import 'package:poslasticarnica/widgets/big_text.dart';
import 'package:poslasticarnica/widgets/expandable_text_widget.dart';
import 'package:poslasticarnica/widgets/icon_and_text_widget.dart';
import 'package:poslasticarnica/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Stack(
       children: [
         //background image
         Positioned(
           left: 0,
           right: 0,
           child: Container(
             width: double.maxFinite,
             height: Dimensions.popularFoodimgSize,
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage(
                   "assets/image/food1.jpg"
                 )
               )
             ),
           ),
         ),
         //icon widget
         Positioned(
             left: Dimensions.width20,
             right: Dimensions.width20,
             top: Dimensions.height45,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.arrow_back_ios_new ),
                AppIcon(icon:Icons.shopping_cart )

              ],
             )),
         //intoduction od food
         Positioned(
           left: 0,
           right: 0,
           bottom: 0,
           top: Dimensions.popularFoodimgSize-20,
           child: Container(
             padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top:Dimensions.height10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topRight:Radius.circular(Dimensions.radius20),
                 topLeft:Radius.circular(Dimensions.radius20)
               ),
               color: Colors.white
             ),
             child: Column(

               crossAxisAlignment: CrossAxisAlignment.start,

               children: [

                 AppColumn(text: "Chinese side"),
                 SizedBox(height: Dimensions.height20),
                 Container(
                   padding: EdgeInsets.only(left: Dimensions.width20),
                   child: BigText(text: "Introduce"),
                 ),
                 SizedBox(height: Dimensions.height15),
                 Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Making homemade"
                     " pizza dough can sound like a lot of work, but it’s so worth the bragging rights. The dough itself requires few ingredients and just a little bit of rising and rest time. While you wait for the dough to be ready, you can get to work prepping your tomato sauce, chopping fresh vegetables, or grating the cheese you’ll put on top. Bake for 15 minutes, garnish with basil (or, let’s be real, more cheese), and enjoy showing off your way-better-than-takeout creation.Making homemade pizza dough can sound like a lot of work, but it’s so worth the bragging rights. The dough itself requires few ingredients and just a little bit of rising and rest time. While you wait for the dough to be ready, you can get to work prepping your tomato sauce, chopping fresh vegetables, or grating the cheese you’ll put on top. Bake for 15 minutes, garnish with basil (or, let’s be real, more cheese), and enjoy showing off your way-better-than-takeout creation.",))),
               ]

             ),

           ),
         )
       ],
     ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
             topRight: Radius.circular(Dimensions.radius30),
             topLeft: Radius.circular(Dimensions.radius30)
          )
        ) ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween  ,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width30,right: Dimensions.width30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Color(0xcd474242)),
                  SizedBox(width: Dimensions.width20),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width20),
                  Icon(Icons.add, color: Color(0xcd474242))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width30,right: Dimensions.width30),
              child: BigText(text:"\$10 | Add to cart", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.blue
              ),
            )
          ],
        ),
      ),
    );
  }
}

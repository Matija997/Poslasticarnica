import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poslasticarnica/pages/home/food_page_body.dart';
import 'package:poslasticarnica/utils/dimensions.dart';
import 'package:poslasticarnica/widgets/big_text.dart';
import 'package:poslasticarnica/widgets/small_text.dart';



class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("Current screen heigth:"+MediaQuery.of(context).size.height.toString()); //print screen height
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search,color: Colors.white, size: Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      BigText(text: "Srbija", color: Colors.blue,),
                      Row(
                        children: [
                          SmallText(text: "Beograd"),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )

                    ],
                  )
                ],
              ),
            ),
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ) ,
    );
  }
}


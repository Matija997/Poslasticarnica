import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poslasticarnica/widgets/big_text.dart';

class RecommendedFooddetail extends StatelessWidget {
  const RecommendedFooddetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                color: Colors.white,
                child: Center(child: BigText(text: "Chinese side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food1.jpg",
              width: double.maxFinite,
              fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                "Making homemade pizza dough can sound like a lot of work, but it’s so worth the bragging rights. The dough itself requires few ingredients and just a little bit of rising and rest time. While you wait for the dough to be ready, you can get to work prepping your tomato sauce, chopping fresh vegetables, or grating the cheese you’ll put on top. Bake for 15 minutes, garnish with basil (or, let’s be real, more cheese), and enjoy showing off your way-better-than-takeout creation.Making homemade pizza dough can sound like a lot of work, but it’s so worth the bragging rights. The dough itself requires few ingredients and just a little bit of rising and rest time. While you wait for the dough to be ready, you can get to work prepping your tomato sauce, chopping fresh vegetables, or grating the cheese you’ll put on top. Bake for 15 minutes, garnish with basil (or, let’s be real, more cheese), and enjoy showing off your way-better-than-takeout creation.Making homemade pizza dough can sound like a lot of work, but it’s so worth the bragging rights. The dough itself requires few ingredients and just a little bit of rising and rest time. While you wait for the dough to be ready, you can get to work prepping your tomato sauce, chopping fresh vegetables, or grating the cheese you’ll put on top. Bake for 15 minutes, garnish with basil (or, let’s be real, more cheese), and enjoy showing off your way-better-than-takeout creation.Making homemade pizza dough can sound like a lot of work, but it’s so worth the bragging rights. The dough itself requires few ingredients and just a little bit of rising and rest time. While you wait for the dough to be ready, you can get to work prepping your tomato sauce, chopping fresh vegetables, or grating the cheese you’ll put on top. Bake for 15 minutes, garnish with basil (or, let’s be real, more cheese), and enjoy showing off your way-better-than-takeout creation."
            ),
          )
        ],

      ),
    );
  }
}

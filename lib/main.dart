import 'package:flutter/material.dart';
import 'package:poslasticarnica/pages/food/popular_food_detail.dart';
import 'package:poslasticarnica/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependeces.dart' as dep;

 Future<void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}


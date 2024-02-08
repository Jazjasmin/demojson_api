import 'package:demo_json_pjct/home/home.dart';
import 'package:flutter/material.dart';
import 'package:demo_json_pjct/category/category.dart';
import 'package:demo_json_pjct/const_value/string.dart';
import 'package:demo_json_pjct/favoutite/favourite.dart';
import 'package:demo_json_pjct/home/home_screen.dart';
import 'package:demo_json_pjct/widget/bottom_nav.dart';

class MainPage extends StatelessWidget {
   MainPage({ Key? key }) : super(key: key);


final pages =[
   Home(),
  const ScreenCategory(),
  const ScreenFavourites(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        title: const Text('Product List',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: IndexChangeNotifier,
          builder: (context,int index, _) {
            return pages[index];
          }, 
          ),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  
  }
}
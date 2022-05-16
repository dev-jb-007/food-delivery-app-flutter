import 'package:delivery_app/home/food_page_body.dart';
import 'package:delivery_app/utils/colors.dart';
import 'package:delivery_app/widgets/big_text.dart';
import 'package:delivery_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          //Showing Header
          Container(
            margin: EdgeInsets.only(top: 45,bottom: 45),
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Container(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "India",color: AppColors.mainColor,),
                      Row(
                        children: [
                          SmallText(text:"City",color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      child: Icon(Icons.search,color:Colors.white),
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //Showing the body
          FoodPageBody(),
        ],
      ),
    );
  }
}

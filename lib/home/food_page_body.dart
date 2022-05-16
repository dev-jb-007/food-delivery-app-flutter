import 'package:delivery_app/utils/colors.dart';
import 'package:delivery_app/widgets/big_text.dart';
import 'package:delivery_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/widgets/icon_and_text_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  var _currPageValue = 0.0;
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print("Current value is " + _currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF69c5df),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://media.istockphoto.com/photos/salmon-over-watercress-salad-picture-id1316673342?s=612x612'))),
      ),
      Positioned(
        bottom: 0.0,
        right: 0.0,
        left: 0.0,
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chinese Side"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                color: AppColors.mainColor,
                              )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "4.5"),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "1287"),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "Comments")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: AppColors.iconColor1),
                    SizedBox(
                      width: 10,
                    ),
                    IconAndTextWidget(
                        icon: Icons.location_on,
                        text: "1.7km",
                        iconColor: AppColors.iconColor1),
                    SizedBox(
                      width: 10,
                    ),
                    IconAndTextWidget(
                        icon: Icons.access_time_rounded,
                        text: "32min",
                        iconColor: AppColors.iconColor1)
                  ],
                ),
                SizedBox()
              ],
            ),
          ),
          height: 130,
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFe8e8e8),
                blurRadius: 5.0,
                offset: Offset(0,5)
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5,0)
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(5,0)
              )
            ]
          ),
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 320,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return _buildPageItem(index);
                })),
        new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        )
      ],
    );
  }
}

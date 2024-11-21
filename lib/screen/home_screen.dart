import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_task/common/app_colors.dart';
import 'package:new_task/common/app_theme.dart';
import 'package:new_task/model/car_model.dart';
import 'package:new_task/widget/car_card.dart';
import 'package:new_task/widget/story_widget.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(94, 95, 110, .9),
                Color.fromRGBO(64, 65, 87, 1), // End color
              ],
              //stops: [.3, 1],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        actions: [
          Switch(
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (value) {
              Get.changeTheme(value ? AppTheme.darkTheme : AppTheme.lightTheme);
            },
            thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return const Icon(Icons.brightness_2);
                }
                return null; // other states will use default thumbIcon.
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Badge.count(
                textStyle: const TextStyle(fontSize: 9),
                largeSize: 14,
                count: 2,
                child: const Icon(Icons.notifications_outlined)),
          )
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: AnimationLimiter(
          child: Column(
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 1200),
              childAnimationBuilder: (widget) => SlideAnimation(
                verticalOffset: 200.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  //  color: Colors.red,
                  height: height * .1,
                  child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => StoryWidget(
                        imagePath: 'assets/Image 1.png', title: 'جيلي'),
                  ),
                ),
                Image.asset(
                  'assets/Image 6.png',
                  height: height * .2,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: 'ابحث عن سيارتك',
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.lightGrayText.withOpacity(.8),
                          )),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.lightGrayText.withOpacity(.8),
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.lightGrayText.withOpacity(.8),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .03,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('اسيوي'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromRGBO(51, 52, 74, 1)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('اوروبي'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromRGBO(51, 52, 74, 1)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('امريكي'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromRGBO(51, 52, 74, 1)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: height * .21,
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) =>
                      CarCard(carModel: carList[index]),
                  itemCount: carList.length,
                ),
                Image.asset(
                  'assets/Image 5.png',
                  height: height * .2,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

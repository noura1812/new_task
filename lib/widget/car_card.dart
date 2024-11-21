import 'package:flutter/material.dart';
import 'package:new_task/common/app_assets.dart';
import 'package:new_task/common/app_colors.dart';
import 'package:new_task/model/car_model.dart';
import 'package:new_task/screen/product_details_screen.dart';
import 'package:new_task/widget/car_info_card.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key, required this.carModel});
  final CarModel carModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(carModel: carModel),
              )),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  color: AppColors.lightGrayCard,
                  alignment: Alignment.center,
                  child: const Text('جي ام سي | يوكن | الفيئة الرابعة ')),
              SizedBox(
                height: height * .18 - 2,
                child: Stack(
                  children: [
                    Image.asset(
                      carModel.image ?? '',
                      width: double.infinity,
                      height: height * .13,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarInfoCard(
                              small: true,
                              width: ((width + height) / 2) / 14,
                              height: ((width + height) / 2) / 14 - 4,
                              details: (carModel.price ?? 0).toString(),
                              title: 'السعر',
                              iconPath: AppAssets.priceIcon),
                          const SizedBox(
                            width: 2,
                          ),
                          CarInfoCard(
                              small: true,
                              height: ((width + height) / 2) / 14 - 4,
                              width: ((width + height) / 2) / 14,
                              details:
                                  (carModel.yearOfManufacture ?? 0).toString(),
                              title: 'سنة الصنع',
                              iconPath: AppAssets.calenderIcon),
                          const SizedBox(
                            width: 2,
                          ),
                          CarInfoCard(
                              small: true,
                              height: ((width + height) / 2) / 14 - 4,
                              width: ((width + height) / 2) / 14,
                              details: (carModel.mileage ?? 0).toString(),
                              title: 'كم',
                              iconPath: AppAssets.scaleIcon),
                          const SizedBox(
                            width: 2,
                          ),
                          CarInfoCard(
                              small: true,
                              height: ((width + height) / 2) / 14 - 4,
                              width: ((width + height) / 2) / 14,
                              details: (carModel.warrantyKm ?? 0).toString(),
                              title: 'مكفولة ل',
                              iconPath: AppAssets.warrantyIcon),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

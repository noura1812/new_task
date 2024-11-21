import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_task/common/app_assets.dart';
import 'package:new_task/common/app_colors.dart';
import 'package:new_task/model/car_model.dart';
import 'package:new_task/widget/car_card.dart';
import 'package:new_task/widget/car_info_card.dart';
import 'package:new_task/widget/custom_icon_button.dart';
import 'package:new_task/widget/car_sub_info_list.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.carModel});
  final CarModel carModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: height * .355,
                  child: Stack(
                    children: [
                      Image.asset(
                        carModel.image ?? '',
                        height: height * .26,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          child: Row(
                            children: [
                              CustomIconButton(
                                iconPath: AppAssets.backIcon,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              const Spacer(),
                              CustomIconButton(
                                iconPath: AppAssets.shareIcon,
                                onPressed: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomIconButton(
                                iconPath: AppAssets.favIcon,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CarInfoCard(
                                details: (carModel.cylinders ?? 0).toString(),
                                title: 'المحرك/سلندر',
                                iconPath: AppAssets.cylinderIcon),
                            const SizedBox(
                              width: 8,
                            ),
                            CarInfoCard(
                                details: (carModel.yearOfManufacture ?? 0)
                                    .toString(),
                                title: 'سنة الصنع',
                                iconPath: AppAssets.calenderIcon),
                            const SizedBox(
                              width: 8,
                            ),
                            CarInfoCard(
                                details: (carModel.mileage ?? 0).toString(),
                                title: 'الممشي',
                                iconPath: AppAssets.scaleIcon),
                          ],
                        ),
                      )
                    ],
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      carModel.name ?? "",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      (carModel.price ?? 0).toString(),
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      carModel.currency ?? '',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.orangColor),
                height: 40,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.warrantyIcon,
                      color: Colors.white,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'مكفولة حتي ${carModel.warrantyKm ?? 0} كم',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CarSubInfoList(
                car: carModel,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(carModel.details ?? ''),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.only(
                    top: 2, bottom: 2, left: 20, right: 5),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 237, 240, 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage(AppAssets.personImage),
                      ),
                    ),
                    const Text('يوكن للسيارات المعتمدة'),
                    const Text('كل السيارات'),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5 - 11,
                        child: CarCard(carModel: carList[1])),
                    const SizedBox(
                      width: 2,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5 - 11,
                        child: CarCard(carModel: carList[2])),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: height * .048,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: height * .048,
                      child: IconButton.filled(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(228, 242, 229, 1)),
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            AppAssets.callIcon,
                            width: 20,
                            height: 20,
                          )),
                    ),
                    SizedBox(
                      width: height * .048,
                      child: IconButton.filled(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(234, 233, 255, 1)),
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            AppAssets.chatIcon,
                            width: 20,
                            height: 20,
                          )),
                    ),
                    TextButton.icon(
                      style: IconButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(63, 65, 89, 1)),
                      onPressed: () {},
                      label: const Text(
                        'موقع السيارة',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: SvgPicture.asset(AppAssets.locationIcon),
                    ),
                    TextButton.icon(
                      style: IconButton.styleFrom(side: const BorderSide()),
                      onPressed: () {},
                      label: const Text('احجز السيارة'),
                      icon: SvgPicture.asset(AppAssets.bookIcon),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

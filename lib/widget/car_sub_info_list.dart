import 'package:flutter/material.dart';
import 'package:new_task/common/app_assets.dart';
import 'package:new_task/common/app_colors.dart';
import 'package:new_task/model/car_model.dart';

class CarSubInfoList extends StatelessWidget {
  final CarModel car;

  const CarSubInfoList({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubInfoWidget(
          title: "اللون الخارجي",
          info: car.interiorColor,
          iconPath: AppAssets.carExternalColorIcon,
        ),
        SubInfoWidget(
          title: "اللون الداخلي",
          info: car.exteriorColor,
          iconPath: AppAssets.carInteriorColorIcon,
        ),
        SubInfoWidget(
          title: "نوع المقعد",
          info: car.seatType,
          iconPath: AppAssets.carSeatIcon,
        ),
        SubInfoWidget(
          title: "فتحة سقف",
          info: car.hasSunroof,
          iconPath: AppAssets.carSunOpenIcon,
        ),
        SubInfoWidget(
          title: "كاميرا خلفية",
          info: car.hasRearCamera,
          iconPath: AppAssets.carCameraIcon,
        ),
        SubInfoWidget(
          title: "سينسور",
          info: car.sensor,
          iconPath: AppAssets.carSensorIcon,
        ),
        SubInfoWidget(
          title: "سيليندر",
          info: car.cylinders?.toString(),
          iconPath: AppAssets.carCylinderIcon,
        ),
        SubInfoWidget(
          title: "ناقل الحركة",
          info: car.transmission,
          iconPath: AppAssets.carTransmissionIcon,
        ),
      ],
    );
  }
}

class SubInfoWidget extends StatelessWidget {
  final String title;
  final dynamic info;
  final String iconPath; // SVG icon path

  const SubInfoWidget({
    super.key,
    required this.title,
    required this.info,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    // Do not render if info is null
    if (info == null) return const SizedBox.shrink();

    return Container(
      color: AppColors.lightGrayCard,
      margin: const EdgeInsets.only(bottom: 2, right: 20),
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const SizedBox(width: 10.0),
                Image.asset(
                  iconPath,
                  height: 20.0,
                  width: 20.0,
                ),
                const SizedBox(width: 15.0),
                Text(
                  title,
                  style: const TextStyle(
                    //  fontSize: 14.0,
                    // color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: Center(
                child: info is String
                    ? Text(
                        info!,
                        style: const TextStyle(
                            //      fontSize: 16.0,
                            //  fontWeight: FontWeight.bold,
                            ),
                      )
                    : Icon(info ? Icons.done : Icons.close_outlined),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_task/common/app_colors.dart';

class CarInfoCard extends StatelessWidget {
  const CarInfoCard(
      {super.key,
      required this.details,
      required this.title,
      required this.iconPath,
      this.small = false,
      this.width,
      this.height});
  final String details;
  final String title;
  final String iconPath;
  final double? width;
  final double? height;
  final bool small;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Card(
        margin: !small ? null : const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(!small ? 12 : 5)),
        color: AppColors.lightGrayCard,
        child: Container(
          width: width ?? MediaQuery.of(context).size.width / 3.6,
          height: height,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: !small ? 10 : 4),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  iconPath,
                  height: !small ? 30 : (width! / 3.5),
                  width: !small ? 30 : (width! / 3.5),
                  fit: BoxFit.cover,
                ),
                if (!small)
                  const SizedBox(
                    height: 4,
                  ),
                Text(
                  title,
                  style:
                      TextStyle(color: !small ? AppColors.lightGrayText : null),
                ),
                Text(
                  details,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

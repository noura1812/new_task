import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, this.onPressed, required this.iconPath});
  final void Function()? onPressed;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: IconButton.filled(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          iconPath,
        ),
        style: IconButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.white.withOpacity(.5)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: Colors.red)),
          child: CircleAvatar(
            radius: (height * .059) / 2,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        Text(title)
      ],
    );
  }
}

import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String image, title, subTitle;
  const OnboardingContent(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(image),
        const Spacer(),
        Container(
            width: 350,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            )),
        const SizedBox(
          height: 16,
        ),
        Container(
            width: 300,
            child: Text(subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14))),
        const Spacer(),
      ],
    );
  }
}

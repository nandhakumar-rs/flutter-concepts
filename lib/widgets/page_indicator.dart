import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final bool isActive;
  const PageIndicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isActive ? Colors.black : Colors.black.withOpacity(0.2)),
    );
  }
}

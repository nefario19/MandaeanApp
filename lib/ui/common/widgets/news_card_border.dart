import 'package:flutter/material.dart';

import '../../../services/common/environment.dart';
import '../app_colors.dart';

class NewsCardBorder extends StatelessWidget {
  final double width;
  final double height;

  const NewsCardBorder({
    super.key,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Environment.size12),
            ),
            border: Border(
              top: BorderSide(color: kcPrimaryColor, width: 3),
              left: BorderSide(color: kcPrimaryColor, width: 3),
            )),
      ),
    );
  }
}

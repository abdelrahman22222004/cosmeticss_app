import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double size;
  final String iconPath;

  const CustomBackButton({
    super.key,
    this.onTap,
    this.size = 22,
    this.iconPath = 'assets/icons/arrow_back_page.svg',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.pop(context),
      child: SvgPicture.asset(
        iconPath,
        width: size,
        height: size,
      ),
    );
  }
}

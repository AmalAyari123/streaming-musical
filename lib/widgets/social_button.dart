import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:hi_flutter/palette.dart';

class SocialButton extends StatelessWidget {
  final String iconpath;
  final String label;
  final double horizontalpadding;
  final Function onTap;
  const SocialButton({
    Key? key,
    required this.iconpath,
    required this.label,
    required this.horizontalpadding,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        onTap();
      },
      icon: SvgPicture.asset(
        iconpath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 17,
        ),
      ),
      style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: 20, horizontal: horizontalpadding),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.white30,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(30.0),
          )),
    );
  }
}

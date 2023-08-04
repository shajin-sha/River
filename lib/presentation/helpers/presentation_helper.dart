import 'package:flutter/material.dart';
import 'package:river/const/color_const.dart';

mixin PresentationHelper {
  //* Vertical gaps *//
  //* Using this helps to reduce the amount of code written & also makes the code more readable and maintainable as well as reducing the rerendering of the widget tree
  static Widget gapH1 = const SizedBox(height: 4);
  static Widget gapH2 = const SizedBox(height: 6);
  static Widget gapH3 = const SizedBox(height: 8);
  static Widget gapH4 = const SizedBox(height: 10);
  static Widget gapH5 = const SizedBox(height: 12);
  static Widget gapH6 = const SizedBox(height: 14);
  static Widget gapH7 = const SizedBox(height: 16);
  static Widget gapH8 = const SizedBox(height: 18);
  static Widget gapH9 = const SizedBox(height: 20);
  static Widget gapH10 = const SizedBox(height: 22);

  //* Default paddings *//

  static EdgeInsetsGeometry defaultPaddingP1 = const EdgeInsets.all(4);
  static EdgeInsetsGeometry defaultPaddingP2 = const EdgeInsets.all(6);
  static EdgeInsetsGeometry defaultPaddingP3 = const EdgeInsets.all(8);
  static EdgeInsetsGeometry defaultPaddingP4 = const EdgeInsets.all(10);
  static EdgeInsetsGeometry defaultPaddingP5 = const EdgeInsets.all(12);
  static EdgeInsetsGeometry defaultPaddingP6 = const EdgeInsets.all(14);
  static EdgeInsetsGeometry defaultPaddingP7 = const EdgeInsets.all(16);
  static EdgeInsetsGeometry defaultPaddingP8 = const EdgeInsets.all(18);
  static EdgeInsetsGeometry defaultPaddingP9 = const EdgeInsets.all(20);
  static EdgeInsetsGeometry defaultPaddingP10 = const EdgeInsets.all(22);

  //* Default border radius *//

  static BorderRadiusGeometry defaultBorderRadiusR1 = const BorderRadius.all(Radius.circular(4));
  static BorderRadiusGeometry defaultBorderRadiusR2 = const BorderRadius.all(Radius.circular(6));
  static BorderRadiusGeometry defaultBorderRadiusR3 = const BorderRadius.all(Radius.circular(8));
  static BorderRadiusGeometry defaultBorderRadiusR4 = const BorderRadius.all(Radius.circular(10));
  static BorderRadiusGeometry defaultBorderRadiusR5 = const BorderRadius.all(Radius.circular(12));
  static BorderRadiusGeometry defaultBorderRadiusR6 = const BorderRadius.all(Radius.circular(14));
  static BorderRadiusGeometry defaultBorderRadiusR7 = const BorderRadius.all(Radius.circular(16));
  static BorderRadiusGeometry defaultBorderRadiusR8 = const BorderRadius.all(Radius.circular(18));
  static BorderRadiusGeometry defaultBorderRadiusR9 = const BorderRadius.all(Radius.circular(20));
  static BorderRadiusGeometry defaultBorderRadiusR10 = const BorderRadius.all(Radius.circular(22));

  //* Button styles *//
  static ButtonStyle defaultButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: PresentationHelper.defaultBorderRadiusR5,
        side: const BorderSide(color: ColorConst.primaryColor, width: 1),
      ),
    ),
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(ColorConst.primaryColor),
    foregroundColor: MaterialStateProperty.all(ColorConst.onPrimaryColor),
    overlayColor: MaterialStateProperty.all(ColorConst.secondaryColor),
  );
}

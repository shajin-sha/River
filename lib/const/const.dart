import 'package:river/const/color_const.dart';
import 'package:river/const/name_const.dart';
import 'package:river/presentation/helpers/presentation_helper.dart';

mixin Const on ColorConst, NameConst, PresentationHelper {
  static const String appName = NameConst.appName;
  static const String appDescription = NameConst.appDescription;

  static const String version = "0.0.1";
}

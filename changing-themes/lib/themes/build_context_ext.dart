import 'package:flutter/material.dart';

import 'package:surf_flutter_courses_template/themes/theme.dart';

// Расширение над BuildContext 


extension BuildContextExt on BuildContext {
  ThemeTextStyles get text => Theme.of(this).extension<ThemeTextStyles>()!;

  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
}
// 
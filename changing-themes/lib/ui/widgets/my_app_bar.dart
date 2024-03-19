import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/core/app_string.dart';
import 'package:surf_flutter_courses_template/themes/build_context_ext.dart';

// Widget App Bar

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.color.appBackgroundColor,
      centerTitle: true,
      title: Text(
        AppString.appBarTitle,
        style: context.text.appBarTitle,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_rounded,
          color: context.color.buttonsColor,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            AppString.bottonSave,
            style: TextStyle(color: context.color.buttonsColor),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

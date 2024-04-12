import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBarAddress extends StatelessWidget implements PreferredSizeWidget {
  // final String title;
  final Widget title;
  final Widget? leading;
  List<Widget>? actions;

  CustomAppBarAddress({super.key, required this.title, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      title: title,
      centerTitle: true,
      backgroundColor: Colors.transparent,

      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

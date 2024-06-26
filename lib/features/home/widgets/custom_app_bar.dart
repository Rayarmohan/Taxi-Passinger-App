import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final String title;
  final Widget title;
  final Widget? leading;
  List<Widget>? actions;

  TransparentAppBar(
      {super.key, required this.title, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      title: title,
      centerTitle: true,
      // title: Text(
      //   title,
      //   style: const TextStyle(color: Colors.black),
      // ),
      backgroundColor: Colors.transparent, // Set your custom background color

      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

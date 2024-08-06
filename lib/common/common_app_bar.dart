import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CommonAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: const Color(0xFFf9ebd8),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

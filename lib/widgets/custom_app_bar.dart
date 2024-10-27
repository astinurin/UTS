import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/linkaja.png'),
      ),
      actions: [
        IconButton(
          icon: Image.asset('assets/icons/heart.png'),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/icons/live-chat.png'),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

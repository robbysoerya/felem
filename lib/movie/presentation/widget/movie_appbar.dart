import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      elevation: 0.0,
      centerTitle: false,
      title: Text(
        'Movies',
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () => context.go('/create-movie'),
          icon: Icon(
            Icons.add,
            color: Colors.black,
            size: 32.0.r,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0.h);
}

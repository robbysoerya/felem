import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateMovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CreateMovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      elevation: 0.0,
      title: Text(
        'Create Movie',
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0.h);
}

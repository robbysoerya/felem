import 'dart:io';

import 'package:felem/movie/presentation/bloc/create_movie_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateMovieInputPoster extends StatelessWidget {
  const CreateMovieInputPoster({
    required this.onTapAddPoster,
    required this.bloc,
    super.key,
  });

  final VoidCallback onTapAddPoster;
  final CreateMovieBloc bloc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAddPoster,
      child: StreamBuilder<String?>(
        stream: bloc.posterStream,
        builder: (context, snapshot) {
          final data = snapshot.data;

          if (data != null) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.file(
                File(data),
                fit: BoxFit.cover,
                height: 200.r,
                width: 200.r,
              ),
            );
          }
          return Container(
            height: 200.r,
            width: 200.r,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add),
                SizedBox(height: 4.0.h),
                const Text('Add Poster'),
              ],
            ),
          );
        },
      ),
    );
  }
}

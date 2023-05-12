import 'package:felem/core/domain/entities/movie_item.dart';
import 'package:felem/core/presentation/widget/custom_cached_network_image.dart';
import 'package:felem/core/utils/extension/datetime_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    required this.movie,
    super.key,
  });

  final MovieItem movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 100.r,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0.r),
          ),
          child: Container(
            margin: EdgeInsets.only(
              left: 100.r,
              right: 16.0.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  movie.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 4.0.h),
                Text(
                  movie.createdDate.toFormattedDate(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  movie.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 16.0.r,
          bottom: 16.0.r,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0.r),
            child: CustomCachedNetworkImage(
              imageUrl: movie.poster,
              height: 100.0.r,
              width: 75.0.r,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

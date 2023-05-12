import 'package:felem/core/domain/entities/movie.dart';
import 'package:felem/movie/presentation/bloc/movie_bloc.dart';
import 'package:felem/movie/presentation/widget/movie_card.dart';
import 'package:felem/movie/presentation/widget/skeleton/movie_card_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieContent extends StatelessWidget {
  const MovieContent({
    required this.movies,
    required this.bloc,
    super.key,
  });

  final Movie movies;
  final MovieBloc bloc;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollEndNotification notification) {
        final metrics = notification.metrics;
        final maxScroll = metrics.maxScrollExtent;
        final currentScroll = metrics.pixels;
        final delta = 50.0.h;
        final isEndPage = maxScroll - currentScroll <= delta;
        if (isEndPage) {
          bloc.add(const MovieEvent.started());
          return true;
        }
        return false;
      },
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.0.r, vertical: 16.0.r),
        itemCount: movies.data.length + 1,
        shrinkWrap: true,
        separatorBuilder: (_, __) => SizedBox(height: 32.0.h),
        itemBuilder: (_, index) => index >= movies.data.length
            ? const MovieCardSkeleton()
            : MovieCard(movie: movies.data[index]),
      ),
    );
  }
}

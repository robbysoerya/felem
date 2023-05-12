import 'package:felem/core/utils/failure.dart';
import 'package:felem/movie/presentation/bloc/movie_bloc.dart';
import 'package:felem/movie/presentation/widget/movie_appbar.dart';
import 'package:felem/movie/presentation/widget/movie_content.dart';
import 'package:felem/movie/presentation/widget/skeleton/movie_content_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  late MovieBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<MovieBloc>();
    _bloc.add(const MovieEvent.started());
  }

  MovieAppBar _buildAppBar() {
    return const MovieAppBar();
  }

  Widget _buildError(Failure failure) {
    final text = failure.when(
      network: (message) => Text(message),
      server: (message) => Text(message),
      socket: (message) => Text(message),
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text,
          SizedBox(height: 8.0.h),
          ElevatedButton(
            onPressed: () => _bloc.add(const MovieEvent.refreshed()),
            child: const Text('Refresh'),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    final states = context.watch<MovieBloc>().state;
    return states.maybeWhen(
      empty: () => const Center(child: Text('No movies')),
      error: (failure) => _buildError(failure),
      success: (data) => MovieContent(movies: data, bloc: _bloc),
      orElse: () => const MovieContentSkeleton(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

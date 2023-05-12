import 'package:felem/injection.dart';
import 'package:felem/movie/presentation/bloc/create_movie_bloc.dart';
import 'package:felem/movie/presentation/bloc/movie_bloc.dart';
import 'package:felem/movie/presentation/view/create_movie_view.dart';
import 'package:felem/movie/presentation/view/movie_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider(
          create: (context) => di<MovieBloc>(),
          child: const MovieView(),
        ),
        routes: [
          GoRoute(
            path: 'create-movie',
            builder: (context, state) => BlocProvider(
              create: (context) => di<CreateMovieBloc>(),
              child: const CreateMovieView(),
            ),
          )
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp.router(
          title: 'Felem',
          debugShowCheckedModeBanner: false,
          routerConfig: _routes,
          theme: ThemeData.light().copyWith(
            appBarTheme: ThemeData.light().appBarTheme.copyWith(
                  systemOverlayStyle: const SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarIconBrightness: Brightness.dark,
                  ),
                  iconTheme: const IconThemeData(
                    color: Colors.black,
                  ),
                ),
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0.r),
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

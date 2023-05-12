import 'package:felem/core/presentation/widget/custom_input.dart';
import 'package:felem/movie/presentation/bloc/create_movie_bloc.dart';
import 'package:felem/movie/presentation/widget/create_movie_appbar.dart';
import 'package:felem/movie/presentation/widget/create_movie_input_poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CreateMovieView extends StatefulWidget {
  const CreateMovieView({super.key});

  @override
  State<CreateMovieView> createState() => _CreateMovieViewState();
}

class _CreateMovieViewState extends State<CreateMovieView> {
  late CreateMovieBloc _bloc;
  final _descController = TextEditingController();
  final _titleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc = context.read<CreateMovieBloc>();
    _bloc.stream.listen((states) {
      states.maybeWhen(
        loading: () => showDialog(
          context: context,
          builder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (failure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(failure.message, textAlign: TextAlign.center)),
          );
        },
        success: (result) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(result.data, textAlign: TextAlign.center)),
          );
        },
        orElse: () => null,
      );
    });
  }

  void _onTapAddPoster() async {
    final result = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (result != null) {
      _bloc.changePoster(result.path);
    }
  }

  void _onTapCreate() {
    final poster = _bloc.poster;
    final title = _titleController.text;
    final desc = _descController.text;
    if (poster == null || title.isEmpty || desc.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Form must be fill',
            textAlign: TextAlign.center,
          ),
        ),
      );
      return;
    }
    _bloc.add(
      CreateMovieEvent.started(
        title: _titleController.text,
        desc: _descController.text,
        poster: poster,
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      padding: EdgeInsets.all(16.0.r),
      child: Column(
        children: [
          _buildInputPoster(),
          SizedBox(height: 8.0.h),
          CustomInput(
            controller: _titleController,
            hintText: 'Insert movie title',
          ),
          SizedBox(height: 8.0.h),
          CustomInput(
            controller: _descController,
            minLines: 5,
            hintText: 'Insert movie description',
          ),
          SizedBox(height: 24.0.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _onTapCreate,
              child: const Text('Create'),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInputPoster() {
    return CreateMovieInputPoster(
      onTapAddPoster: _onTapAddPoster,
      bloc: _bloc,
    );
  }

  CreateMovieAppBar _buildAppBar() {
    return const CreateMovieAppBar();
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.all(16.0.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      child: _buildForm(),
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

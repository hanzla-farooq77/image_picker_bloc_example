import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker_bloc/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:image_picker_bloc/screen/image_picker_screen.dart';
import 'package:image_picker_bloc/utils/image_picker_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerBloc(ImagePickerUtil),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AddPhotoScreen(),
      ),
    );
  }
}


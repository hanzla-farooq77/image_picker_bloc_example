import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker_bloc/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:image_picker_bloc/bloc/image_picker_bloc/image_picker_event.dart';
import 'package:image_picker_bloc/bloc/image_picker_bloc/image_picker_state.dart';

class AddPhotoScreen extends StatelessWidget {
  const AddPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F8FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          'Add Photo',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: BlocBuilder<ImagePickerBloc, ImagePickerState>(
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0xffCBD5E1),
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 85,
                            color: Colors.blueGrey.shade400,
                          ),

                          const SizedBox(height: 25),

                          Text(
                            'No image selected',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey.shade700,
                            ),
                          ),

                          const SizedBox(height: 12),

                          Text(
                            'Tap below to add a photo',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueGrey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 5,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        const SizedBox(height: 30),

                        InkWell(
                          onTap: (){
                            context.read<ImagePickerBloc>().add(CameraPicker());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color(0xffEAF3FF),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withValues(alpha: 0.12),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.camera_alt_rounded,
                                    color: Colors.blue,
                                    size: 32,
                                  ),
                                ),

                                const SizedBox(width: 18),

                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Take Photo',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      SizedBox(height: 7),

                                      Text(
                                        'Open camera and take a new photo',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const Icon(
                                  Icons.chevron_right,
                                  color: Colors.blueGrey,
                                  size: 28,
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 18),

                        InkWell(
                          onTap: (){
                            context.read<ImagePickerBloc>().add(GalleryPicker());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color(0xffF2EEFF),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple.withValues(
                                        alpha: 0.12),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.image_rounded,
                                    color: Colors.deepPurple,
                                    size: 32,
                                  ),
                                ),

                                const SizedBox(width: 18),

                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Choose from Gallery',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      SizedBox(height: 7),

                                      Text(
                                        'Select an existing photo',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const Icon(
                                  Icons.chevron_right,
                                  color: Colors.blueGrey,
                                  size: 28,
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffF1F4F8),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff536176),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
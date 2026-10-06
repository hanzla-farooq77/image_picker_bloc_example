import 'package:bloc/bloc.dart';
import 'package:image_picker_bloc/bloc/image_picker_bloc/image_picker_event.dart';
import 'package:image_picker_bloc/bloc/image_picker_bloc/image_picker_state.dart';

import '../../utils/image_picker_util.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtil _imagePickerUtil = ImagePickerUtil();
  ImagePickerBloc(_imagePickerUtil) : super(ImagePickerState()) {
    on<CameraPicker>(_onCameraPicker);
    on<GalleryPicker>(_onGalleryPicker);
  }

  void _onCameraPicker(
    CameraPicker event,
    Emitter<ImagePickerState> emit,
  ) async {
    emit(state.coppyWith(file: await _imagePickerUtil.CameraCapture()));
  }

  void _onGalleryPicker(
    GalleryPicker event,
    Emitter<ImagePickerState> emit,
  ) async {
    emit(state.coppyWith(file: await _imagePickerUtil.GalleryCapture()));
  }
}

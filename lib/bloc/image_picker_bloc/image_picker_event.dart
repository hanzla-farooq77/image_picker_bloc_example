import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable {
  ImagePickerEvent();
  @override
  List<Object?> get props => [];
}

class CameraPicker extends ImagePickerEvent {}

class GalleryPicker extends ImagePickerEvent {}

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable {
  XFile? file;
  ImagePickerState({this.file});
  ImagePickerState coppyWith({XFile? file}) {
    return ImagePickerState(file: this.file);
  }

  @override
  List<Object?> get props => [file];
}

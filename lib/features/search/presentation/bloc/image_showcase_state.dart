part of 'image_showcase_bloc.dart';

abstract class ImageShowcaseState extends Equatable {
  const ImageShowcaseState();
}

class ImageShowcaseInitial extends ImageShowcaseState {
  @override
  List<Object> get props => [];
}

class ImageLoading extends ImageShowcaseState {
  @override
  List<Object?> get props => [];
}

class ImageFetchSuccess extends ImageShowcaseState {

  final ImageShowcaseModel imageShowcaseModel;
  const ImageFetchSuccess(this.imageShowcaseModel);

  @override
  List<Object?> get props => [imageShowcaseModel];
}

class ImageFetchError extends ImageShowcaseState {
  @override
  List<Object?> get props => [];
}

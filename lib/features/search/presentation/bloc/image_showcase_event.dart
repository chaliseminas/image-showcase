part of 'image_showcase_bloc.dart';

abstract class ImageShowcaseEvent extends Equatable {
  const ImageShowcaseEvent();
}

class ImageShowcaseFetch extends ImageShowcaseEvent {

  final String? searchText;
  const ImageShowcaseFetch({this.searchText});

  @override
  List<Object?> get props => [searchText];
}

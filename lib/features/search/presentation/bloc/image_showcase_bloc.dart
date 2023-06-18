import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:imageshowcase/core/error/failure.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:imageshowcase/features/search/domain/usecases/search_usecase.dart';

part 'image_showcase_event.dart';
part 'image_showcase_state.dart';

class ImageShowcaseBloc extends Bloc<ImageShowcaseEvent, ImageShowcaseState> {

  final SearchUseCase _searchUseCase;

  ImageShowcaseBloc(this._searchUseCase) : super(ImageShowcaseInitial()) {
    on<ImageShowcaseFetch>((event, emit) async {
      emit(ImageLoading());
      try {
        final result = await _searchUseCase.fetchImages(event.searchText);
        result.fold((Failure failure) {
          emit(ImageFetchError());
        }, (ImageShowcaseModel imageShowcaseModel) {
          emit(ImageFetchSuccess(imageShowcaseModel));
        });
      } catch (e) {
        emit(ImageFetchError());
      }
    });
  }
}

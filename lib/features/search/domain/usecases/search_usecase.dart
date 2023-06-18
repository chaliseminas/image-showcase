import 'package:dartz/dartz.dart';
import 'package:imageshowcase/core/error/failure.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:imageshowcase/features/search/domain/repositories/search_repository.dart';

class SearchUseCase {

  final SearchRepository _searchRepository;
  SearchUseCase(this._searchRepository);

  Future<Either<Failure, ImageShowcaseModel>> fetchImages(String? searchText) async {
    return await _searchRepository.fetchImages(searchText);
  }

}
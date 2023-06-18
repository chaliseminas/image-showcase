import 'package:dartz/dartz.dart';
import 'package:imageshowcase/core/error/exception.dart';
import 'package:imageshowcase/core/error/failure.dart';
import 'package:imageshowcase/features/search/data/datasources/search_data_sources.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:imageshowcase/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl extends SearchRepository {

  final SearchDataSources _searchDataSources;
  SearchRepositoryImpl(this._searchDataSources);

  @override
  Future<Either<Failure, ImageShowcaseModel>> fetchImages(String? searchText) async {
    try {
      final imageShowcase = await _searchDataSources.fetchImage(searchText);
      return Right(imageShowcase);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
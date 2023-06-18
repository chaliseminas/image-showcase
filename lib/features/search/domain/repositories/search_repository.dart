import 'package:dartz/dartz.dart';
import 'package:imageshowcase/core/error/failure.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';

abstract class SearchRepository {

  Future<Either<Failure, ImageShowcaseModel>> fetchImages(String? searchText);

}
import 'package:dio/dio.dart';
import 'package:imageshowcase/core/constants/string_constants.dart';
import 'package:imageshowcase/core/error/exception.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';

abstract class SearchDataSources {
  Future<ImageShowcaseModel> fetchImage(String? searchText);
}

class SearchDataSourcesImpl extends SearchDataSources {
  final Dio _dio;

  SearchDataSourcesImpl(this._dio);

  @override
  Future<ImageShowcaseModel> fetchImage(String? searchText) async {

    String url = "";
    if ((searchText ?? "").isNotEmpty) {
      url = "${StringConstants.fetchImage}${StringConstants.apiKey}&q=$searchText";
    } else {
      url = StringConstants.fetchImage + StringConstants.apiKey;
    }
    final result = await _dio.get(url);

    if (result.statusCode == 200) {
      return ImageShowcaseModel.fromJson(result.data);
    } else {
      throw ServerException();
    }
  }
}

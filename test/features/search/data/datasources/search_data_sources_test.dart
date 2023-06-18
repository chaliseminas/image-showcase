import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imageshowcase/core/constants/string_constants.dart';
import 'package:imageshowcase/features/search/data/datasources/search_data_sources.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixture_reader.dart';
import 'search_data_sources_test.mocks.dart';

@GenerateMocks([Dio])
void main() {

  late MockDio dio;
  late SearchDataSourcesImpl searchDataSourcesImpl;

  setUp(() {
    dio = MockDio();
    searchDataSourcesImpl = SearchDataSourcesImpl(dio);
  });

  final tImageShowcase = ImageShowcaseModel.fromJson(json.decode(fixture('image_showcase.json')));

  test("should perform a GET request on a URL",
    () async {

      when(dio.get(any)).thenAnswer((_) async => Response(
          requestOptions: RequestOptions(),
          data: fixture("image_showcase.json"),
          statusCode: 200));

      await searchDataSourcesImpl.fetchImage("");

      verify(dio.get(
        StringConstants.fetchImage + StringConstants.apiKey
      ));
    },
  );

  test(
    'should return ImageShowcaseModel when the response code is 200 (success)',
        () async {

      when(dio.get(any)).thenAnswer((_) async => Response(
          requestOptions: RequestOptions(),
          data: fixture("image_showcase.json"),
          statusCode: 200));

      final result = await searchDataSourcesImpl.fetchImage("");

      expect(result, equals(tImageShowcase));
    },
  );

}
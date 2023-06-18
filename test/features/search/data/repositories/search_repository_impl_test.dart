import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imageshowcase/core/error/exception.dart';
import 'package:imageshowcase/core/error/failure.dart';
import 'package:imageshowcase/features/search/data/datasources/search_data_sources.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:imageshowcase/features/search/data/repositories/search_repository_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_repository_impl_test.mocks.dart';

@GenerateMocks([SearchDataSources])
void main() {
  late MockSearchDataSources mockSearchDataSources;
  late SearchRepositoryImpl searchRepositoryImpl;

  setUp(() {
    mockSearchDataSources = MockSearchDataSources();
    searchRepositoryImpl = SearchRepositoryImpl(mockSearchDataSources);
  });

  final tImageShowcase = ImageShowcaseModel(hits: [], totalHits: 0, total: 0);

  test(
    'should return ImageShowcaseModel when the call to data source is successful',
    () async {
      when(mockSearchDataSources.fetchImage(""))
          .thenAnswer((_) async => tImageShowcase);

      final result = await searchRepositoryImpl.fetchImages("");

      verify(mockSearchDataSources.fetchImage(""));
      expect(result, equals(Right(tImageShowcase)));
    },
  );

  test(
      'should return server failure when the call to data source is unsuccessful',
      () async {
    when(mockSearchDataSources.fetchImage("")).thenThrow(ServerException());

    final result = await searchRepositoryImpl.fetchImages("");

    verify(mockSearchDataSources.fetchImage(""));
    expect(result, equals(Left(ServerFailure())));
  });
}

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:imageshowcase/features/search/domain/repositories/search_repository.dart';
import 'package:imageshowcase/features/search/domain/usecases/search_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_usecase_test.mocks.dart';

@GenerateMocks([SearchRepository])
void main() {

  late MockSearchRepository mockSearchRepository;
  late SearchUseCase searchUseCase;

  setUp(() {
    mockSearchRepository = MockSearchRepository();
    searchUseCase = SearchUseCase(mockSearchRepository);
  });

  final tImageShowcase = ImageShowcaseModel(
    total: 0,
    totalHits: 0,
    hits: []
  );

  test("Should return a ImageShowcaseModel on Success when call to the fetchImage()", () async {

    ///Arrange
    when(mockSearchRepository.fetchImages("")).thenAnswer((_) async => Right(tImageShowcase));

    ///Act
    final result = await searchUseCase.fetchImages("");

    ///Asserts
    expect(result, equals(Right(tImageShowcase)));
    verify(mockSearchRepository.fetchImages("")).called(1);
    verifyNoMoreInteractions(mockSearchRepository);
  });

  test("Should return a ImageShowcaseModel on Success when call to the fetchImage()", () async {

    ///Arrange
    when(mockSearchRepository.fetchImages("")).thenAnswer((_) async => Right(tImageShowcase));

    ///Act
    final result = await searchUseCase.fetchImages("");

    ///Asserts
    expect(result, equals(Right(tImageShowcase)));
    verify(mockSearchRepository.fetchImages("")).called(1);
    verifyNoMoreInteractions(mockSearchRepository);
  });

}
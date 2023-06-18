import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:imageshowcase/features/search/domain/usecases/search_usecase.dart';
import 'package:imageshowcase/features/search/presentation/bloc/image_showcase_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixture_reader.dart';
import 'image_showcase_bloc_test.mocks.dart';

@GenerateMocks([SearchUseCase])
void main() {

  late MockSearchUseCase mockSearchUseCase;
  late ImageShowcaseBloc imageShowcaseBloc;

  setUp(() {
    mockSearchUseCase = MockSearchUseCase();
    imageShowcaseBloc = ImageShowcaseBloc(mockSearchUseCase);
  });

  tearDown(() {
    imageShowcaseBloc.close();
  });

  test('Emits [ImageLoading, ImageFetchSuccess] when call to the fetchImage is successful', () async {

    when(mockSearchUseCase.fetchImages(any))
        .thenAnswer((_) async => Right(json.decode(fixture("image_showcase.json"))));

    imageShowcaseBloc.add(const ImageShowcaseFetch());

    expectLater(
      imageShowcaseBloc.stream,
      emitsInOrder([
        ImageLoading(),
        ImageFetchSuccess(ImageShowcaseModel.fromJson(json.decode(fixture("image_showcase.json")))),
      ]),
    );
  });

}
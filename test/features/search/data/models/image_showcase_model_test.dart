import 'package:flutter_test/flutter_test.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';

void main() {

  final json = {
    "total": 0,
    "totalHits": 0,
    "hits": []
  };

  final tImageShowcase = ImageShowcaseModel(
    total: 0,
    totalHits: 0,
    hits: []
  );

  test("Should return a valid ImageShowcaseModel when call to the ImageShowcaseModel.fromJson", () async {

    final tokenModel = ImageShowcaseModel.fromJson(json);

    expect(tokenModel, isA<ImageShowcaseModel>());
    expect(tokenModel, equals(tImageShowcase));
  });

}
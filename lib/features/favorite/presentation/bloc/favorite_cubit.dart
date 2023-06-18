import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';

class FavoriteCubit extends Cubit<List<Hits>> {

  FavoriteCubit() : super([]);

  toggleFavorite(Hits hits) {
    final hitsList = List<Hits>.from(state);

    if (hitsList.contains(hits)) {
      hitsList.remove(hits);
    } else {
      hitsList.add(hits);
    }

    emit(hitsList);
  }
}

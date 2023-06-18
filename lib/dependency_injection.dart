import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:imageshowcase/features/favorite/presentation/bloc/favorite_cubit.dart';
import 'package:imageshowcase/features/search/data/datasources/search_data_sources.dart';
import 'package:imageshowcase/features/search/data/repositories/search_repository_impl.dart';
import 'package:imageshowcase/features/search/domain/repositories/search_repository.dart';
import 'package:imageshowcase/features/search/domain/usecases/search_usecase.dart';
import 'package:imageshowcase/features/search/presentation/bloc/image_showcase_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {

  /// Blocs
  sl.registerFactory(() => ImageShowcaseBloc(sl()));
  sl.registerFactory(() => FavoriteCubit());

  /// UseCases
  sl.registerLazySingleton(() => SearchUseCase(sl()));

  /// Repositories
  sl.registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(sl()));

  /// Data Sources
  sl.registerLazySingleton<SearchDataSources>(() => SearchDataSourcesImpl(sl()));

  /// External Libraries
  sl.registerLazySingleton(() => Dio());
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imageshowcase/features/favorite/presentation/bloc/favorite_cubit.dart';
import 'package:imageshowcase/features/search/presentation/bloc/image_showcase_bloc.dart';
import 'package:imageshowcase/features/search/presentation/pages/search.dart';

import 'dependency_injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ImageShowcaseBloc>(create: (_) => di.sl<ImageShowcaseBloc>()),
        BlocProvider<FavoriteCubit>(create: (_) => di.sl<FavoriteCubit>()),
      ],
      child: MaterialApp(
        title: 'Image Showcase',
        theme: ThemeData(
          primaryColor: const Color(0xFFF5F5F5),
          scaffoldBackgroundColor: const Color(0xFFF5F5F5),
          appBarTheme: const AppBarTheme(
            shadowColor: Colors.white,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w500
            )
          ),
        ),
        home: const SearchPage()
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imageshowcase/features/favorite/presentation/bloc/favorite_cubit.dart';
import 'package:imageshowcase/features/favorite/presentation/pages/favorite.dart';
import 'package:imageshowcase/features/search/presentation/bloc/image_showcase_bloc.dart';
import 'package:imageshowcase/features/search/presentation/widgets/error_widget.dart';
import 'package:imageshowcase/features/search/presentation/widgets/image_list_widget.dart';
import 'package:imageshowcase/features/search/presentation/widgets/loading_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final TextEditingController _searchTextEditingController = TextEditingController();

  @override
  void initState() {
    context.read<ImageShowcaseBloc>().add(const ImageShowcaseFetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Showcase"),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FavoritePage())),
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: _searchTextEditingController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search Images",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  )
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    if (_searchTextEditingController.text.isNotEmpty) {
                      context.read<ImageShowcaseBloc>().add(ImageShowcaseFetch(searchText: _searchTextEditingController.text));
                    }
                  },
                  child: const Text("Search"),
                )
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: BlocBuilder<ImageShowcaseBloc, ImageShowcaseState>(
                builder: (_, state) {
                  if(state is ImageLoading) {
                    return const LoadingWidget();
                  } else if(state is ImageFetchSuccess) {
                    return ImageListWidget(imageShowcaseModel: state.imageShowcaseModel);
                  } else if(state is ImageFetchError) {
                    return FetchErrorWidget(
                      onTap: () => context.read<ImageShowcaseBloc>().add(const ImageShowcaseFetch()),
                    );
                  } else {
                    return FetchErrorWidget(
                      onTap: () => context.read<ImageShowcaseBloc>().add(const ImageShowcaseFetch()),
                    );
                  }
                },
              ),
            )
          ],
        )
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imageshowcase/features/favorite/presentation/bloc/favorite_cubit.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:imageshowcase/features/search/presentation/widgets/bouncing_button.dart';

class ImageListWidget extends StatelessWidget {
  final ImageShowcaseModel imageShowcaseModel;

  const ImageListWidget({super.key, required this.imageShowcaseModel});

  @override
  Widget build(BuildContext context) {
    return (imageShowcaseModel.hits ?? []).isNotEmpty
        ? GridView.builder(
            itemCount: imageShowcaseModel.hits?.length,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 12,
                childAspectRatio: 3 / 4),
            itemBuilder: (context, int index) {
              return Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          child: CachedNetworkImage(
                            width: double.infinity,
                            imageUrl:
                                imageShowcaseModel.hits?[index].largeImageUrl ??
                                    "",
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Image.asset(
                              "assets/images/placeholder.png",
                              fit: BoxFit.cover,
                            ),
                            errorWidget: (context, url, error) => Image.asset(
                              "images/placeholder.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              imageShowcaseModel.hits?[index].user ?? "",
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          Text(
                            "${((imageShowcaseModel.hits?[index].imageSize ?? 0.0) * 10 * pow(10, -7)).toStringAsFixed(2)} MB",
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                  BlocBuilder<FavoriteCubit, List<Hits>>(builder: (_, state) {
                    return BouncingButton(
                      onPressed: () => context
                          .read<FavoriteCubit>()
                          .toggleFavorite(imageShowcaseModel.hits![index]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite,
                            color: state.any((element) => element == imageShowcaseModel.hits?[index]) ? Colors.red : Colors.white),
                      ),
                    );
                  })
                ],
              );
            },
          )
        : const Center(
            child: Text(
              "Nothing found.",
              style: TextStyle(color: Colors.red),
            ),
          );
  }
}

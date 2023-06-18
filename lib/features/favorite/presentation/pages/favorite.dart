import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imageshowcase/features/favorite/presentation/bloc/favorite_cubit.dart';
import 'package:imageshowcase/features/search/data/models/image_showcase_model.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Images"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<FavoriteCubit, List<Hits>>(
          builder: (_, state) {
            if (state.isEmpty) {
              return const Center(
                child: Text(
                  "Add some favorite images and they'll appear here.",
                  textAlign: TextAlign.center,
                ),
              );
            }
            return GridView.builder(
              itemCount: state.length,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3 / 4),
              itemBuilder: (context, int index) {
                return InkWell(
                  onTap: () => _showDialog(context, state[index]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                          child: CachedNetworkImage(
                            width: double.infinity,
                            imageUrl:
                            state[index].largeImageUrl ?? "",
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
                              state[index].user ?? "",
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          Text(
                            "${((state[index].imageSize ?? 0.0) * 10 * pow(10, -7)).toStringAsFixed(2)} MB",
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  _showDialog(BuildContext context, Hits hits) {
    showDialog(
      context: context,
      builder: (ctx) {
        return SizedBox(
          width: double.infinity,
          child: AlertDialog(
            insetPadding: const EdgeInsets.all(16.0),
            title: const Text("Image Showcase"),
            content: const Text("Are you sure you want to remove this image from favorite?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text(
                  "No",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  ctx.read<FavoriteCubit>().toggleFavorite(hits);
                  Navigator.of(ctx).pop();
                },
                child: const Text(
                  "Yes"
                ),
              )
            ],
          ),
        );
      }
    );
  }
}

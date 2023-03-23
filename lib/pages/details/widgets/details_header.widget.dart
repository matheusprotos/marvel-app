import 'package:avengers/shared/models/movie.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

class DetailsHeader extends GetView {
  final Movie movie;

  const DetailsHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.dstATop,
            ),
            child: FadeInImage.memoryNetwork(
              image: movie.backdropPath,
              placeholder: kTransparentImage,
              height: MediaQuery.of(context).size.height * 0.7,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: RawMaterialButton(
              elevation: 2.0,
              fillColor: Theme.of(context).primaryColor,
              padding: const EdgeInsets.all(15.0),
              shape: const CircleBorder(),
              onPressed: Get.back,
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 30,
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  movie.popularity.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  DateFormat("dd/MM/yyyy")
                      .format(
                        movie.releaseDate,
                      )
                      .toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  movie.voteCount.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                  ),
                )
              ],
            ),
          ),
        ],
      );
}

import 'package:avengers/shared/models/movie.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsContent extends GetView {
  final Movie movie;

  const DetailsContent({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.3 - 20,
        decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
        ),
        child: ClipRRect(
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                movie.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                movie.overview,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).textTheme.bodyText2?.color,
                ),
              ),
            ],
          ),
        ),
      );
}

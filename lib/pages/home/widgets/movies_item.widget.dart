import 'package:avengers/shared/models/movie.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesItem extends GetView {
  final Movie movie;
  final Function()? onTap;

  const MoviesItem({
    Key? key,
    required this.movie,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: const EdgeInsets.all(10),
        tileColor: Theme.of(context).appBarTheme.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text(
          movie.title,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1?.color,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            movie.overview,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2?.color,
            ),
          ),
        ),
        onTap: onTap,
      );
}

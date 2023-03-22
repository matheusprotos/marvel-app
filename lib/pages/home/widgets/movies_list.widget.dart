import 'package:avengers/pages/home/home.controller.dart';
import 'package:avengers/pages/home/widgets/movies_item.widget.dart';
import 'package:avengers/shared/models/movie.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesList extends GetView {
  @override
  final HomeController controller = Get.find();

  MoviesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Obx(
        () => ListView.separated(
          itemCount: controller.movies.length,
          itemBuilder: (BuildContext context, int index) {
            Movie movie = controller.movies[index];

            return MoviesItem(
              movie: movie,
              onTap: () => controller.handleMovieSelected(movie),
            );
          },
          separatorBuilder: (BuildContext context, int index) => Container(
            height: 20,
          ),
        ),
      );
}

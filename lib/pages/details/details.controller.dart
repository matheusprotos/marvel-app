import 'dart:convert';

import 'package:avengers/shared/models/movie.model.dart';
import 'package:get/get.dart' hide Response;

class DetailsController extends GetxController {
  Rx<Movie>? movie;

  @override
  void onInit() {
    String? movieParam = Get.parameters["movie"];

    if (movieParam != null) {
      movie = Movie.fromJson(
        json.decode(
          movieParam,
        ),
      ).obs;
    }

    super.onInit();
  }
}

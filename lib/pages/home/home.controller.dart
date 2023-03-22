import 'dart:convert';

import 'package:avengers/providers/rest_api.provider.dart';
import 'package:avengers/shared/constants/rest_api.constants.dart';
import 'package:avengers/shared/constants/route.constants.dart';
import 'package:avengers/shared/models/movie.model.dart';
import 'package:get/get.dart' hide Response;

class HomeController extends GetxController {
  final RestAPIProvider restAPIProvider = Get.put(RestAPIProvider());

  RxBool isBusy = false.obs;

  RxList<Movie> movies = RxList<Movie>([]);

  @override
  onInit() async {
    try {
      isBusy.value = true;

      loadMovies();

      isBusy.value = false;
    } catch (error) {
      isBusy.value = false;

      printError(
        info: error.toString(),
      );
    }

    super.onInit();
  }

  Future<void> loadMovies() async {
    String moviesResponse = await restAPIProvider.getMovies();
    dynamic moviesJson = json.decode(moviesResponse);

    List<Movie> moviesList = List<Movie>.from(
      moviesJson[RestAPIConstants.mcuKey].map(
        (dynamic movie) => Movie.fromJson(movie),
      ),
    );

    movies.assignAll(moviesList);
  }

  void handleMovieSelected(Movie movie) => Get.toNamed(
        RouteConstants.details,
        parameters: {
          "movie": json.encode(
            movie.toJson(),
          ),
        },
      );
}

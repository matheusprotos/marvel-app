import 'package:avengers/shared/constants/rest_api.constants.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Response, FormData;

class RestAPIProvider extends GetxService {
  Future<RestAPIProvider> init() async {
    return this;
  }

  Future<String> getMovies() => rootBundle.loadString(
        RestAPIConstants.moviesEndpoint,
      );
}

import 'package:avengers/providers/rest_api.provider.dart';
import 'package:avengers/shared/constants/theme.constants.dart';
import 'package:flutter/material.dart';

import 'routing/routes.dart';
import 'shared/constants/app.constants.dart';
import 'shared/constants/route.constants.dart';

import 'package:get/get.dart';

Future<void> _initializeProviders() async {
  await Get.putAsync<RestAPIProvider>(() => RestAPIProvider().init());
}

Future<void> main() async {
  await _initializeProviders();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.name,
      getPages: appRoutes,
      initialRoute: RouteConstants.home,
      theme: ThemeConstants.darkTheme,
      darkTheme: ThemeConstants.darkTheme,
    ),
  );
}

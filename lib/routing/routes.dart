import 'package:avengers/pages/details/details.page.dart';
import 'package:avengers/pages/home/home.page.dart';
import 'package:avengers/shared/constants/route.constants.dart';
import 'package:get/get.dart';

List<GetPage> appRoutes = [
  GetPage(
    name: RouteConstants.home,
    page: () => HomePage(),
  ),
  GetPage(
    name: RouteConstants.details,
    page: () => DetailsPage(),
  ),
];

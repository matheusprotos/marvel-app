import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

import 'details.controller.dart';

class DetailsPage extends GetView {
  @override
  final DetailsController controller = Get.put(DetailsController());

  DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Obx(
              () => controller.movie?.value != null
                  ? ListView(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstATop,
                                  ),
                                  child: FadeInImage.memoryNetwork(
                                    image: controller.movie!.value.backdropPath,
                                    placeholder: kTransparentImage,
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
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
                                        controller.movie!.value.popularity
                                            .toString(),
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
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.color,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        DateFormat("dd/MM/yyyy")
                                            .format(
                                              controller
                                                  .movie!.value.releaseDate,
                                            )
                                            .toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.color,
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
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.color,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        controller.movie!.value.voteCount
                                            .toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.color,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height:
                                  MediaQuery.of(context).size.height * 0.3 - 20,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
                              ),
                              child: ClipRRect(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: [
                                    Text(
                                      controller.movie!.value.title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.color,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      controller.movie!.value.overview,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            ?.color,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : const Text("Empty State"),
            ),
          ),
        ),
      );
}

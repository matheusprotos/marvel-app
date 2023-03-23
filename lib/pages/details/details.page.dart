import 'package:avengers/pages/details/widgets/details_content.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details.controller.dart';
import 'widgets/details_header.widget.dart';

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
                            DetailsHeader(movie: controller.movie!.value),
                            DetailsContent(movie: controller.movie!.value),
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

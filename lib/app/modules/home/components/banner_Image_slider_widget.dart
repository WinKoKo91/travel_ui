import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/custom_painter/rectangle_painter.dart';
import '../../../core/values/app_colors.dart';
import '../../../widgets/network_image_widget.dart';


class BannerImageSliderWidget extends StatefulWidget {
  const BannerImageSliderWidget({Key? key}) : super(key: key);

  @override
  State<BannerImageSliderWidget> createState() =>
      _BannerImageSliderWidgetState();
}

class _BannerImageSliderWidgetState extends State<BannerImageSliderWidget> {
  late List<String> imageURls;

  @override
  void initState() {
    imageURls = [
      "https://images.unsplash.com/photo-1503220317375-aaad61436b1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      "https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      "https://images.unsplash.com/photo-1530789253388-582c481c54b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      "https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: CarouselSlider(
            options: CarouselOptions(aspectRatio: 16 / 6, autoPlay: true),
            items: imageURls.map((url) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: NetworkImageWidget(
                      url: url,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 16,
            child: CustomPaint(
              painter: RectanglePainter(shapeColor:  customBackgroundBlack),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 32, right: 16, top: 10, bottom: 10),
                child: const Text(
                  "See All 2/68",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ))
      ],
    );
  }
}

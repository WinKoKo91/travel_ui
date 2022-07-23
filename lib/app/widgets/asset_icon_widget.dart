import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AssetIconWidget extends StatelessWidget {
  AssetIconWidget({required this.image, this.size = 32, Key? key})
      : super(key: key);
  String image;
  double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: size,
      width: size,
    );
  }
}

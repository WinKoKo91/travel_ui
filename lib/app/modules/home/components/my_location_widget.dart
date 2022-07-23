import 'package:flutter/material.dart';

import '../../../widgets/asset_icon_widget.dart';

class MyLocationWidget extends StatelessWidget {
  const MyLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Text(
                  "Furama Riverfront, Singapore",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              AssetIconWidget(
                image: "assets/next_red.png",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Flexible(
                  child: Text("405 Havelock Road, Singapore 169633")),
              AssetIconWidget(
                image: "assets/current_location.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

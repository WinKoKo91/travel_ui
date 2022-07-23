import 'package:flutter/material.dart';
import 'package:travel_ui/app/modules/home/components/price_widget.dart';

import '../../../widgets/network_image_widget.dart';

class HotelByRateListWidget extends StatelessWidget {
  const HotelByRateListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const AspectRatio(
                aspectRatio: 6 / 3,
                child: NetworkImageWidget(
                    url:
                        "https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Deluxe Twin",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Page snapping allows us to keep the page at intermediate values. This is done by switching off the pageSnapping attribute. In this case the page will not scroll to an",
                            maxLines: 1,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w300,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        height: 50,
                        child: OutlinedButton(
                            onPressed: () {}, child: Text("View Rates"))),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Expanded(
                    child: Text(
                      "Avg. Nightly / RoomForm",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ),
                  PriceWidget(),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: 5,
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Divider(
          color: Colors.black26,
          thickness: 2,
        ),
      ),
    );
  }
}

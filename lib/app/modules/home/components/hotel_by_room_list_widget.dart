import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/app/modules/home/components/price_widget.dart';

import '../../../data/model/category_model.dart';
import '../../../widgets/asset_icon_widget.dart';
import 'category_widget.dart';

class HotelByRoomListWidget extends StatelessWidget {
  const HotelByRoomListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(16.0),
            child: DottedBorder(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "YOUR E-VOUCHER RATE",
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Mobile App Special Voucher",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            AssetIconWidget(
                              image: "assets/next_red.png",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CategoryItemWidget(
                                      model: CategoryModel(
                                          "Inclusive of\nBreakfast",
                                          "assets/fnb.png"),
                                    ),
                                    CategoryItemWidget(
                                      model: CategoryModel(
                                          "20% off\nin-Room Service",
                                          "assets/discount.png"),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 48,
                                child: OutlinedButton(
                                    onPressed: () {}, child: Text("View Rates")),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Avg. Nightly / RoomForm",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 14),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Subject to GST & Service Charge",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 12),
                                ),
                              ],
                            )),
                            const PriceWidget()
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      color: Colors.amber.shade200,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AssetIconWidget(
                            image: "assets/discount.png",
                            size: 20,
                          ),
                          const Text("MEMBER DEALS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      )),
                ],
              ),
            ),
          );
        },
        itemCount: 5,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black45,
          height: 2,
        ),
      ),
    );
  }
}

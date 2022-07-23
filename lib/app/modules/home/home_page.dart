import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/utils/custom_painter/rectangle_painter.dart';
import '../../core/values/app_colors.dart';
import '../../data/model/category_model.dart';
import '../../widgets/asset_icon_widget.dart';
import 'components/category_widget.dart';
import 'components/home_components.dart';
import 'components/hotel_by_rate_list_widget.dart';
import 'components/hotel_by_room_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<CategoryModel> categories;
  late List<Widget> pages;

  int currentValue = 0;
  Widget? currentTab;

  @override
  void initState() {
    categories = CategoryModel.getList();
    pages = const [HotelByRateListWidget(), HotelByRoomListWidget()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  snap: false,
                  pinned: false,
                  floating: false,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_outlined),
                    tooltip: 'Menu',
                    onPressed: () {},
                  ),
                  //Ico
                  actions: <Widget>[
                    AssetIconWidget(image: "assets/currency.png"),
                    const SizedBox(
                      width: 8,
                    ),
                    AssetIconWidget(image: "assets/chat_active.png"),
                    const SizedBox(
                      width: 16,
                    ),
                    //IconButton
                  ],
                  //<
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    const MyLocationWidget(),
                    const BannerImageSliderWidget(),
                    CategoryWidget(categories: categories),
                  ]),
                ),
                SliverPersistentHeader(
                  delegate: MySliverPersistentHeaderDelegate(
                    const TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(color: filterSelectedColor),
                      labelStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      tabs: [
                        Tab(
                          text: 'By Room',
                        ),
                        Tab(
                          text: 'By Rate',
                        ),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: const TabBarView(
              children: [HotelByRateListWidget(), HotelByRoomListWidget()],
            ),
          ),
        ),
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: filterBorderColor),
        ),
        child: _tabBar,
      ),
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

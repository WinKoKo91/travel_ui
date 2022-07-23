import 'package:flutter/material.dart';

import '../../../data/model/category_model.dart';
import '../../../widgets/asset_icon_widget.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 2,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 2),
          itemCount: categories.length,
          itemBuilder: (BuildContext ctx, index) {
            CategoryModel model = categories[index];
            return CategoryItemWidget(model: model);
          }),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AssetIconWidget(image: model.image),
          const SizedBox(
            height: 4,
          ),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class CategoryModel {
  final String title;
  final String image;

  CategoryModel(this.title, this.image);

  static List<CategoryModel> getList() {
    List<CategoryModel> categories = [
      CategoryModel("Amenities", "assets/theme.png"),
      CategoryModel("Facilities", "assets/workout.png"),
      CategoryModel("F&B", "assets/fnb.png"),
      CategoryModel("Kids/family", "assets/kidsfamily.png"),
      CategoryModel("Wellness", "assets/wellness.png"),
    ];

    return categories;
  }
}

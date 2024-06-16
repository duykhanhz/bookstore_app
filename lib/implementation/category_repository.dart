

import 'package:inkmelo_app/models/category_model.dart';

abstract class CategoryRepository {
  const CategoryRepository();

  Future<List<CategoryModel>?> fecthCategory();
}



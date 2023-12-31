import 'package:recipes_app/data/remote_data_source/recipe_data_sourece.dart';
import 'package:recipes_app/domain/entitis/recipe_entiti.dart';
import 'package:recipes_app/domain/repository/get_random_recipes.dart';

class RandomRecipesRepositoryImpl extends RandomRecipesRepository {
  final RandomRecipeDataSource _randomRecipeDataSource;

  RandomRecipesRepositoryImpl({RandomRecipeDataSource? randomRecipeDataSource})
      : _randomRecipeDataSource =
            randomRecipeDataSource ?? RandomRecipeDataSource();
  @override
  Future<List<Recipe>> onGetRandomRecipes() async {
    return await _randomRecipeDataSource.getRandomRecipes();
  }
}

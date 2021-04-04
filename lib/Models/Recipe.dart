import 'package:flutterrecipe/Models/Ingredient.dart';

class Recipe
{
  String name;
  String picture;
  int numberLikes;
  int kCal;
  int duration;
  List<String>instructions;
  List<Ingredient>ingredients;

  Recipe(this.name,this.picture,this.numberLikes,this.kCal,this.duration, this.instructions,this.ingredients);


  @override
  String toString() {
    return 'Recipe('+this.name+','+this.picture+','+this.numberLikes.toString()
        +','+this.kCal.toString()+','+this.duration.toString()+')';
  }

  static Future<Recipe> getRecipe()
  async
  {
    String name = "Colorful pancakes";
    String picture = "cake";
    int numberLikes = 85;
    int kCal = 451;
    int duration = 19;
    List<String>listeInstructions =
    [
    'In a large bowl, sift together the flour, baking powder, salt and sugar. Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
     'Heat a lightly oiled griddle or frying pan over medium-high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ];
    List<Ingredient> listeIngredients =
        [
          Ingredient('1 ½ cups','all-purpose flour'),
          Ingredient('3 tablespoons ','butter, melted'),
          Ingredient('3 ½ teaspoons','baking powder'),
          Ingredient('1 ¼ cups ','milk'),
        ];
    Recipe recipe =  Recipe(name,picture,numberLikes,kCal,duration,listeInstructions,listeIngredients);
    print("je retourne "+recipe.toString());
    return recipe;
  }
}


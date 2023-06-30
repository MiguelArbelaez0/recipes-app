import 'dart:convert';

import 'package:recipes_app/domain/entitis/recipe_entiti.dart';
import 'package:recipes_app/domain/entitis/wine_pairing_entiti.dart';

import '../../domain/entitis/extended_ingredient_entiti.dart';

class RecipeModel {
  factory RecipeModel.fromJson(String str) =>
      RecipeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RecipeModel.fromMap(Map<String, dynamic> json) => RecipeModel(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        imageType: json["imageType"],
        servings: json["servings"],
        readyInMinutes: json["readyInMinutes"],
        license: json["license"],
        sourceName: json["sourceName"],
        sourceUrl: json["sourceUrl"],
        spoonacularSourceUrl: json["spoonacularSourceUrl"],
        healthScore: json["healthScore"],
        spoonacularScore: json["spoonacularScore"],
        pricePerServing: json["pricePerServing"]?.toDouble(),
        analyzedInstructions:
            List<dynamic>.from(json["analyzedInstructions"].map((x) => x)),
        cheap: json["cheap"],
        creditsText: json["creditsText"],
        cuisines: List<dynamic>.from(json["cuisines"].map((x) => x)),
        dairyFree: json["dairyFree"],
        diets: List<dynamic>.from(json["diets"].map((x) => x)),
        gaps: json["gaps"],
        glutenFree: json["glutenFree"],
        instructions: json["instructions"],
        ketogenic: json["ketogenic"],
        lowFodmap: json["lowFodmap"],
        occasions: List<dynamic>.from(json["occasions"].map((x) => x)),
        sustainable: json["sustainable"],
        vegan: json["vegan"],
        vegetarian: json["vegetarian"],
        veryHealthy: json["veryHealthy"],
        veryPopular: json["veryPopular"],
        whole30: json["whole30"],
        weightWatcherSmartPoints: json["weightWatcherSmartPoints"],
        dishTypes: List<String>.from(json["dishTypes"].map((x) => x)),
        extendedIngredients: List<ExtendedIngredient>.from(
            json["extendedIngredients"]
                .map((x) => ExtendedIngredient.fromMap(x))),
        summary: json["summary"],
        winePairing: WinePairing.fromMap(json["winePairing"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "image": image,
        "imageType": imageType,
        "servings": servings,
        "readyInMinutes": readyInMinutes,
        "license": license,
        "sourceName": sourceName,
        "sourceUrl": sourceUrl,
        "spoonacularSourceUrl": spoonacularSourceUrl,
        "healthScore": healthScore,
        "spoonacularScore": spoonacularScore,
        "pricePerServing": pricePerServing,
        "analyzedInstructions":
            List<dynamic>.from(analyzedInstructions.map((x) => x)),
        "cheap": cheap,
        "creditsText": creditsText,
        "cuisines": List<dynamic>.from(cuisines.map((x) => x)),
        "dairyFree": dairyFree,
        "diets": List<dynamic>.from(diets.map((x) => x)),
        "gaps": gaps,
        "glutenFree": glutenFree,
        "instructions": instructions,
        "ketogenic": ketogenic,
        "lowFodmap": lowFodmap,
        "occasions": List<dynamic>.from(occasions.map((x) => x)),
        "sustainable": sustainable,
        "vegan": vegan,
        "vegetarian": vegetarian,
        "veryHealthy": veryHealthy,
        "veryPopular": veryPopular,
        "whole30": whole30,
        "weightWatcherSmartPoints": weightWatcherSmartPoints,
        "dishTypes": List<dynamic>.from(dishTypes.map((x) => x)),
        "extendedIngredients":
            List<dynamic>.from(extendedIngredients.map((x) => x.toMap())),
        "summary": summary,
        "winePairing": winePairing.toMap(),
      };
}

//
//  RecipeModel.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import Foundation

struct Recipe: Decodable{
    
      let IdMeal: Int
      let StrMeal: String
      let strCategory: String
      let strArea: String
      let strInstructions: String
      let strMealThumb: String
      let strIngredient1: String
      let strIngredient2: String
      let strIngredient3: String
    let strIngredient4: String
    let strIngredient5: String
    let strIngredient6: String
    let strIngredient7: String
    let strIngredient8: String
    let strIngredient9: String
    let strIngredient10: String
    let strMeasure1: String
    let strMeasure2: String
    let strMeasure3: String
    let strMeasure4: String
    let strMeasure5: String
    let strMeasure6: String
    let strMeasure7: String
    let strMeasure8: String
    let strMeasure9: String
    let strMeasure10: String

    
}

let testMeal = Recipe(IdMeal: 52771, StrMeal: "Spicy Arrabiata Penne", strCategory: "Vegetarian", strArea: "Italian", strInstructions: "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.", strMealThumb: "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg", strIngredient1: "penne rigate", strIngredient2:"olive oil", strIngredient3: "garlic", strIngredient4: "chopped tomatoes", strIngredient5: "red chile flakes", strIngredient6: "italian seasoning", strIngredient7: "basil", strIngredient8: "Parmigiano-Reggiano", strIngredient9: "", strIngredient10: "", strMeasure1: "1 pound", strMeasure2: "1/4 cup", strMeasure3: "3 cloves", strMeasure4: "1 tin ", strMeasure5: "1/2 teaspoon", strMeasure6:"1/2 teaspoon", strMeasure7: "6 leaves", strMeasure8: "spinkling", strMeasure9: "", strMeasure10: "")

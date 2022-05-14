//
//  RecipeModel.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import Foundation

struct Recipe: Decodable{
    
    let idMeal: String
    let strMeal: String
    let strDrinkAlternate: String?
    let strCategory: String?
    let strArea: String?
    let strInstructions:String?
    let strMealThumb: String?
    let strTags: String?
    let strYoutube: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    let strImageSource: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?
    
}


let testMeal = Recipe(         idMeal:"52795",
                               strMeal:"Chicken Handi",
                               strDrinkAlternate:nil,
                               strCategory:"Chicken",
                               strArea:"Indian",
                               strInstructions:"",
                               strMealThumb:"https://www.themealdb.com/images/media/meals/wyxwsp1486979827.jpg",
                               strTags:nil,
                               strYoutube:"https://www.youtube.com/watch?v=IO0issT0Rmc",
                               strIngredient1:"Chicken",
                               strIngredient2:"Onion",
                               strIngredient3:"Tomatoes",
                               strIngredient4:"Garlic",
                               strIngredient5:"Ginger paste",
                               strIngredient6:"Vegetable oil",
                               strIngredient7:"Cumin seeds",
                               strIngredient8:"Coriander seeds",
                               strIngredient9:"Turmeric powder",
                               strIngredient10:"Chilli powder",
                               strIngredient11:"Green chilli",
                               strIngredient12:"Yogurt",
                               strIngredient13:"Cream",
                               strIngredient14:"fenugreek",
                               strIngredient15:"Garam masala",
                               strIngredient16:"Salt",
                               strIngredient17:"",
                               strIngredient18:"",
                               strIngredient19:"",
                               strIngredient20:"",
                               strMeasure1:"1.2 kg",
                               strMeasure2:"5 thinly sliced",
                               strMeasure3:"2 finely chopped",
                               strMeasure4:"8 cloves chopped",
                               strMeasure5:"1 tbsp",
                               strMeasure6:"",
                               strMeasure7:"2 tsp",
                               strMeasure8:"3 tsp",
                               strMeasure9:"1 tsp",
                               strMeasure10:"1 tsp",
                               strMeasure11:"2",
                               strMeasure12:"1 cup",
                               strMeasure13:"",
                               strMeasure14:"3 tsp Dried",
                               strMeasure15:"1 tsp",
                               strMeasure16:"To taste",
                               strMeasure17:"",
                               strMeasure18:"",
                               strMeasure19:"",
                               strMeasure20:"",
                               strSource:"",
                               strImageSource:nil,
                               strCreativeCommonsConfirmed:nil,
                               dateModified:nil)

struct SearchResult: Decodable {
    
    let results: [Recipe]
    
}

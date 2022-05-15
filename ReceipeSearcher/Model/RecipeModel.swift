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
    let strArea: String
    let strInstructions:String
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
    let strIngredient11: String
    let strIngredient12: String
    let strIngredient13: String
    let strIngredient14: String
    let strIngredient15: String
    let strIngredient16: String
    let strIngredient17: String
    let strIngredient18: String
    let strIngredient19: String
    let strIngredient20: String
    
}


let testMeal = Recipe(         idMeal:"52795",
                               strMeal:"Chicken Handi",
                               strArea:"Indian",
                               strInstructions:"",
                               strMealThumb:"https://www.themealdb.com/images/media/meals/wyxwsp1486979827.jpg",
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
                               strIngredient20:"")

struct SearchResult: Decodable {
    
    let results: [Recipe]
    
}

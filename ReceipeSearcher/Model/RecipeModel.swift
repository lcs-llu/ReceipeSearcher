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
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    var strIngredient16: String?
    var strIngredient17: String?
    var strIngredient18: String?
    var strIngredient19: String?
    var strIngredient20: String?
    
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
    
    let meals: [Recipe]
    
   
}

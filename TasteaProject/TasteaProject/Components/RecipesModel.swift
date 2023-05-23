//
//  RecipesModel.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct Recipes: Identifiable{
    var id = UUID()
    var recipeImage: String
    var recipeTitle: String
    var recipeChef: String
    var rate: Int
}

//objects
var recipe1 = Recipes.init(recipeImage: "matcha1", recipeTitle: "Perfect Matcha", recipeChef: "Jessica Cheung contributed", rate: 120)
var recipe2 = Recipes.init(recipeImage: "cook", recipeTitle: "Earl grey shortbread cookies", recipeChef: "Michelle Smith contributed", rate:325 )
var recipe3 = Recipes.init(recipeImage: "icetea", recipeTitle: "Southern sweet iced lemon tea" , recipeChef: "Ben Carson contributed", rate: 325)
var recipe4 = Recipes.init(recipeImage: "cookies", recipeTitle: "Quick 'n easy chai cookie ", recipeChef: "Michelle Smith contributed", rate: 120)

//array:
let allRecipes = [recipe1, recipe2, recipe3, recipe4]

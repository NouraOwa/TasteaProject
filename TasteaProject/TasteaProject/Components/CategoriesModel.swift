//
//  CategoriesModel.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct Categories: Identifiable{
    var id = UUID()
    var catIcon: String
    var catLabel: String
    var catColor: Color
    var colorLabel: Color
}

//objects:
var category1 = Categories.init(catIcon: "all", catLabel: "All", catColor: Color("greeen"), colorLabel: Color.white)
var category2 = Categories.init(catIcon: "beve", catLabel: "Beverage", catColor: Color("back"), colorLabel: Color.secondary)
var category3 = Categories.init(catIcon: "dessert", catLabel: "Dessert", catColor: Color("back"), colorLabel: Color.secondary)
var category4 = Categories.init(catIcon: "juice", catLabel: "Juices", catColor: Color("back"), colorLabel: Color.secondary)

//array
let allCategories = [category1, category2, category3, category4]

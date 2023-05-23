//
//  AllSectionModel.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct Sections: Identifiable{
    var id = UUID()
    var secImage: String
    var secDescription: String
    var buttonText: String
    var color: Color
    
}

//object:
var section1 = Sections.init(secImage: "matcha", secDescription: "The best matcha cookie ever made", buttonText: "Classic Choice", color: Color("greeen"))
var section2 = Sections.init(secImage: "bubble", secDescription: "How to make bubble tea \nat home", buttonText: "Fresh Recipe", color: Color("bblue"))
var section3 = Sections.init(secImage: "gray", secDescription: "4 ways to make Earl \ngray tea", buttonText: "Classic Choice", color: Color("ppink"))
var section4 = Sections.init(secImage: "bites", secDescription: "Easy afternoon tea sweet \nbites", buttonText: "Fresh Recipe", color: Color("bbblue"))

//array:

let allSections = [section1, section2, section3, section4]

//
//  TeaTypesModel.swift
//  TasteaProject
//
//  Created by لجين إبراهيم الكنهل on 03/11/1444 AH.
//
import SwiftUI


struct TeaTypes: Identifiable{
    var id = UUID()
    var imageName: String
    var name: String
    var color: Color
}


var type1 = TeaTypes( imageName: "WhiteTea", name: "White tea", color: Color(.white))
var type2 = TeaTypes( imageName: "GreenTea", name: "Green tea", color: Color("ppink"))
var type3 = TeaTypes( imageName: "BlackTea", name: "Black tea", color:Color("back"))
var type4 = TeaTypes( imageName: "Matcha2", name: "Matcha", color: Color("bblue"))
var type5 = TeaTypes( imageName: "Oolong", name: "Oolong", color: Color("bbblue"))


var types = [type1,type2,type3,type4,type5]

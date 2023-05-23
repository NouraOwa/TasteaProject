//
//  CardInfo.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct CardInfo: View {
    var recipeName: String
    var recipeChef: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(recipeName)
                .font(.caption)
                .foregroundColor(.black).bold()
            Text(recipeChef)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
    }
}

struct CardInfo_Previews: PreviewProvider {
    static var previews: some View {
        CardInfo(recipeName: "", recipeChef: "")
    }
}

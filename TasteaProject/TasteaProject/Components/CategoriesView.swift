//
//  CategoriesView.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct CategoriesView: View {
    let rows = [
        GridItem(.flexible()),]
    
    var body: some View {
        LazyHGrid(rows: rows, spacing: 40) {
            ForEach(allCategories , id: \.id){ category in
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(category.catColor)
                        .frame(width: 55, height: 65)
                        .frame(maxWidth: .infinity)
                        .overlay {
                            VStack{
                                Image(category.catIcon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(category.colorLabel)
                                    .frame(width: 30,height: 30)
                               Text(category.catLabel)
                                    .font(.caption)
                                    .foregroundColor(category.colorLabel)
                            }
                    }
                }
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

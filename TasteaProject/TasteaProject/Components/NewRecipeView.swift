//
//  NewRecipeView.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct NewRecipeView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(allRecipes , id: \.id){ recipe in
                    VStack{
                        NavigationLink(destination: RecipesDetailsPage()){
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color.gray).opacity(0.2)
                                .frame(width:170, height: 200)
                                .padding(.horizontal)
                                .overlay {
                                    Image(recipe.recipeImage)
                                        .resizable()
                                        .frame(width: 170,height: 200)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(40)
                                }
                        }
                        CardInfo(recipeName: recipe.recipeTitle, recipeChef: recipe.recipeChef)
                            .padding(.bottom)
                    }
                }
            }
        }
            }
        }
struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}

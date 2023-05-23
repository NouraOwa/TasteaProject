//
//  HomePageView.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing: 0){
                    VStack(spacing: -20){
                        HStack(spacing: 0){
                            Image(systemName: "list.bullet.indent")
                                .padding(.trailing,335)
                            .font(.title2)}
                        SearchBar(text: .constant(""))
                    }
                    Text("Hi, tea lover.")
                        .font(.title).bold()
                        .padding(.trailing,200)
                    Text("Check our recommendation for you.")
                        .font(.subheadline).bold()
                        .padding(.trailing,100)
                        .padding(.bottom)
                    CategoriesView()
                        .padding(.bottom)
                    Spacer()
                    SectionsView()
                        .padding(.bottom)
                    Text("New recipes")
                        .font(.title).bold()
                        .padding(.trailing,200)
                }
                NewRecipeView()
            }     }
    }
}
        struct HomePageView_Previews: PreviewProvider {
            static var previews: some View {
                HomePageView()
            }
        }

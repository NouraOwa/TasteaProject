//
//  MainTab.swift
//  TasteaProject
//
//  Created by Razan Mohammed Alzannan on 03/11/1444 AH.
//

import SwiftUI

struct MainTab: View {
    @State var selectedIndexTab = 0
    var body: some View {
        return VStack {

            HStack{
                TabView(selection: $selectedIndexTab) {
                    
                    SearchView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                                .renderingMode(.template)
                            
                        }.tag(1)
                    HomePageView()
                        .tabItem {
                            Image(systemName: "bookmark")
                                .renderingMode(.template)
                              
                        }.tag(0)
                    
                    
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person")
                                .renderingMode(.template)
                            
                        }.tag(2)
                    
                }
                .accentColor(Color("greeen"))
                .toolbarColorScheme(.light, for: .tabBar)
                .background(.white).opacity(40.7)
                .ignoresSafeArea()
                
                
            }
            .ignoresSafeArea()
                
            
        }
    }
    
}


struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
    }
}

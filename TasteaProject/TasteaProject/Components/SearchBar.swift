//
//  SearchBar.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    var body: some View {
        HStack {
            ZStack{
                TextField("Search here", text: $text)
                    .padding(.leading,30)
                    .foregroundColor(Color.secondary)

                Image(systemName: "magnifyingglass")
                    .padding(.trailing,230)
                    .foregroundColor(Color.secondary)
            }
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    //.padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }.frame(width:250, height: 100)
                
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
                        
                    }) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    //.animation(.default)
                }
            }
        }
    }
struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
            
    }
}

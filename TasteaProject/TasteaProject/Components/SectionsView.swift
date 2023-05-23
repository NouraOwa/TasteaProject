//
//  SectionsView.swift
//  TasteaProject
//
//  Created by Noura Alowayid on 03/11/1444 AH.
//

import SwiftUI

struct SectionsView: View {
    let rows = [
        GridItem(.flexible()),]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows, spacing: 5) {
                ForEach(allSections , id: \.id){ section in
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(section.color)
                            .frame(width: 200, height: 230)
                            .frame(maxWidth: .infinity)
                            .padding(.leading)
                            .overlay {
                                VStack(alignment: .leading, spacing: 0){
                                    Image(section.secImage)
                                        .resizable()
                                        .frame(width:180 , height: 130)
                                        .aspectRatio(contentMode: .fit)
                                    .padding(.leading)
                                    .padding(.bottom,20)
                                    .cornerRadius(20)
                                    Text(section.secDescription)
                                        .font(.caption)
                                        .foregroundColor(.white).bold()
                                        .padding([.leading,.bottom])
                                    Button(section.buttonText){
                                    }
                                    .font(.system(size: 10)).bold()
                                    .frame(width: 100, height: 25)
                                    .padding(.leading,40)
                                    .buttonStyle(.borderedProminent)
                                    .tint(.white)
                                    .cornerRadius(50)
                                    .foregroundColor(Color.secondary)
                                 
                                }
                            }
                    }
                }
                
            }
        }
    }
}

struct SectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}

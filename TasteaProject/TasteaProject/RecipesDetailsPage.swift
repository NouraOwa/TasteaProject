//Reema

import SwiftUI

struct RecipesDetailsPage: View {
        var body: some View {
            ZStack{
                Color("greeen")
                    .ignoresSafeArea()
                    .frame(height: 600)
                    .padding(.bottom,600)
                VStack{
                    Button("←"){
                    }
                    .foregroundColor(.white)
                    .padding(.trailing,300)
                    .frame(height: 20)
                    
                    Text("Earl Grey Shortbread Cookies")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom,600)
                }
                HStack(spacing:50){
                    Text("LEVEL")
                        .foregroundColor(.white)
                    Divider()
                        .frame(height: 90)
                        .overlay(.white)
                    Text("TIME")
                        .foregroundColor(.white)
                    Divider()
                        .frame(height: 90)
                        .overlay(.white);                Text("YIELD")
                        .foregroundColor(.white)
                }.padding(.bottom,450)
                HStack(spacing:70){
                    Text("Medium")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("45 min")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("2 dozen")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }.padding(.bottom,400)
                ZStack{
                    ScrollView{
                        VStack{
                            Image("cookies")
                                .resizable()
                                .frame(width: 340,height: 300)
                                .cornerRadius(20)
                                .padding(.top,450)
                            }
                       
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).fill(Color.gray).opacity(0.3)
                                    .frame(width : 300 , height: 60)
                                    .padding(.bottom,280)
                                VStack(spacing:0.1){
                                    Text("Michelle Smith")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .padding(.trailing,50)
                                        .padding(.bottom,5)
                                    Text("Contribute")
                                        .font(.footnote)
                                        .foregroundColor(.secondary)
                                        .padding(.trailing,80)
                                }.padding(.bottom,280)
                                HStack{
                                    Image("profile")
                                        .resizable()
                                        .frame(width: 50 ,height: 50)
                                        .cornerRadius(500)
                                        .padding(.bottom,280)
                                        .padding(.trailing,220)
                                }
                                Spacer()
                                VStack{
                                    Text("Ingredients")
                                        .fontWeight(.bold)
                                        .padding(.trailing,200)
                                    Divider()
                                        .frame(height: 1)
                                } .padding(.bottom,170)
                                VStack{
                                       Text("All-purpose flour")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .padding(.trailing,190)
                                        .padding(.bottom,30)
                                    Text("Loose Earl Grey tea leaves")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .padding(.trailing,140)
                                        .padding(.top,5)
                                         Text("Salt")
                                        .font(.footnote)
                                    .fontWeight(.bold)
                                    .padding(.trailing,280)
                                    .padding(.top,28)
                                }
                                HStack{
                                    Text("2 cups")
                                        .font(.caption2)
                                        .foregroundColor(.secondary)
                                        .fontWeight(.bold)
                                        .padding(.leading,300)
                                        .padding(.bottom,116)
                                }
                                HStack{
                                    Text("2 tablespoons")
                                        .font(.caption2)
                                        .foregroundColor(.secondary)
                                        .fontWeight(.bold)
                                        .padding(.leading,280)
                                        .padding(.top,10)
                                }
                                HStack{
                                    Text("1/2 teaspoon")
                                        .font(.caption2)
                                    .foregroundColor(.secondary)
                                    .fontWeight(.bold)
                                    .padding(.leading,280)
                                    .padding(.top,120)
                                    
                                    
                                }
                                
                                
                            }
                        }
                    }
                }
            }
        }

    struct RecipesDetailsPage_Previews: PreviewProvider {
        static var previews: some View {
            RecipesDetailsPage()
        }
    }

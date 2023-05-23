//Nojood Aljuaid

import SwiftUI

struct SignInView : View {
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        
        NavigationStack{
            VStack(spacing: -20){
                Image("img1")
                    .resizable()
                    .frame(height: UIScreen.main.bounds.height * 0.25)
                
                ZStack{
                    Color.white
                    
                    
                    VStack {
                        
                        Spacer()
                        Text("Create an account")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title.bold())
                        
                        
                        
                        Group {
                            
                            HStack{
                                Image(systemName: "person")
                                TextField("Full name", text: $fullName)
                                
                            }.padding()
                                .background(Color(.systemGray5))
                                .cornerRadius(6)
                            
                            HStack{
                                Image(systemName: "mail.fill")
                                TextField("Email", text: $email)
                                
                            }.padding()
                                .background(Color(.systemGray5))
                                .cornerRadius(6)
                            
                            HStack{
                                Image(systemName: "wallet.pass.fill")
                                TextField("Password", text: $password)
                                
                            }.padding()
                                .background(Color(.systemGray5))
                                .cornerRadius(6)
                            
                            
                            
                            //                        TextField("Full name", text: $fullName)
                            //                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            //                        TextField("Email", text: $email)
                            //                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            //
                            //                        SecureField("Password", text: $password)
                            //                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                        }
                        
                        
                        Button(action: {
                            
                        }) {
                            NavigationLink(destination: MainTab()){
                                Text("Sign Up")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color("greeen"))
                                    .cornerRadius(6)
                                
                            }
                        }
                        
                        HStack{
                            Text("Already have an account?")
                            Button(action:{
                                
                            }) {
                                Text("Sign in here")
                                    .underline()
                                    .foregroundColor(.black)
                            }
                        }
                        
                        
                        Spacer()
                        Spacer()
                        
                        HStack{
                            Rectangle()
                                .frame(height: 1)
                            
                            Text("Or create an account with")
                            
                            Rectangle()
                                .frame(height: 1)
                        }
                        
                        
                        
                        
                        Group{
                            
                            HStack{
                                
                                Button(action: {
                                    
                                }) {
                                    HStack{
                                        //  Image(systemName: "gift")
                                        Text("Facebook")
                                    }
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color("greeen"))
                                    .cornerRadius(6)
                                }
                                
                                Button(action: {
                                    
                                }) {
                                    HStack{
                                        //   Image(systemName: "gift")
                                        Text("Google")
                                    }
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color("greeen"))
                                    .cornerRadius(6)
                                }
                            }
                            
                        }
                        
                        
                        
                        
                        Spacer()
                        
                    }.padding(35)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }.clipShape(RoundedRectangle(cornerRadius: 20))
                
            }.ignoresSafeArea()
            
            
            
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}


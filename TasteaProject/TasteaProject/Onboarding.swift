//Nojood Aljuaid

import SwiftUI

struct Onboarding: View {
    @State var shouldShowOnboarding : Bool = true
    var body: some View {
        NavigationView{

            VStack{
                Text("you are in the main app now ")
                    .padding()
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding , content: {
            OnboardingView()

        })
        }
    }


struct OnboardingView : View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: SignInView()) {
                    Text("SKIP")
                        .frame(maxWidth: 100)
                }
                .buttonStyle(.bordered)
                .cornerRadius(15)
                .padding(.leading,250)
                
                
                TabView{
                    
                    Image("img5")
                        .padding(.bottom , 200)
                    
                    
                    Image("img4")
                        .padding(.bottom , 200)
                    
                    
                    
                    
                    
                    
                }.tabViewStyle(PageTabViewStyle())
                
            }
        }
    }
}
    struct Onboarding_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding()
        }
    }

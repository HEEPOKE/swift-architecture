import SwiftUI

struct HomeScreen: View {
    @State private var isSignInViewActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome to My App")
                    .font(.title)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: SignInView()){
                    ButtonComponent(
                        title: "Sign In",
                        color: .blue,
                        icon: "person.fill",
                        width: 200,
                        height: 50,
                        radius: 10,
                        size: 18
                    ){}
                }.buttonStyle(PlainButtonStyle())
                
                ButtonComponent(
                    title: "with Google",
                    color: .red,
                    icon: "g.circle.fill",
                    width: 200,
                    height: 50,
                    radius: 10,
                    size: 18
                ){}
                
                Spacer()
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

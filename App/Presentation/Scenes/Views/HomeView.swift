import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome to My App")
                    .font(.title)
                    .padding()
                Spacer()
                
                ButtonComponent(
                    title: "Sign In",
                    color: .blue,
                    icon: "person.fill",
                    width: 200,
                    height: 50,
                    radius: 10,
                    size: 18
                ) {
                }
                .padding(.horizontal)
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

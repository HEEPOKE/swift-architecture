import SwiftUI

struct HomeScreen: View {
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: SignInView(), tag: 1, selection: $selection) { EmptyView() }

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
                        self.selection = 1
                    }
                
                ButtonComponent(
                    title: "with Google",
                    color: .red,
                    icon: "g.circle.fill",
                    width: 200,
                    height: 50,
                    radius: 10,
                    size: 18
                ){
                }
                
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

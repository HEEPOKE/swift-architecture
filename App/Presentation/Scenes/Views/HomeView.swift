import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to My App")
                .font(.title)
                .padding()
            Spacer()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

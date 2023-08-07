import SwiftUI

struct EmptyScreen: View {
    @State private var navigateToSignIn = false
    
    var body: some View {
        Text("Not Found")
    }
}

struct EmptyScreen_Previews: PreviewProvider {
    static var previews: some View {
        EmptyScreen()
    }
}

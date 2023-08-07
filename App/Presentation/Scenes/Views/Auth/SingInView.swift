import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSignInSuccess: Bool = false
    
    private let authService = AuthService()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 20) {
                    Text("Sign In")
                        .font(.title)
                        .padding()
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    
//                    ButtonComponent(
//                        title: "Sign In",
//                        color: .blue,
//                        icon: "person.fill",
//                        width: 200,
//                        height: 50,
//                        radius: 10,
//                        size: 18,
//                        action: performSignIn
//                    )
                    
                    Text("Don't have an account? Sign Up")
                        .foregroundColor(.blue)
                        .onTapGesture {
                        }
                    
                    if isSignInSuccess {
                        Text("Sign In Successful!")
                            .foregroundColor(.green)
                    }
                }
                .padding()
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
    
    private func performSignIn() {
        authService.signIn(email: email, password: password) { response in
            if response.success {
                isSignInSuccess = true
            } else if let errorMessage = response.errorMessage {
                print("Error: \(errorMessage)")
                isSignInSuccess = false
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

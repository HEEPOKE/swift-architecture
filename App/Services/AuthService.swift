import Foundation

class AuthService {
    func signIn(email: String, password: String, completion: @escaping (Bool) -> Void) {
        let isSignInSuccess = !email.isEmpty && !password.isEmpty
        completion(isSignInSuccess)
    }
}

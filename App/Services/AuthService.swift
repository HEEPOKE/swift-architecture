import Foundation

class AuthService {
    struct SignInResponse {
        let success: Bool
        let errorMessage: String?
    }
    
    func signIn(email: String, password: String, completion: @escaping (SignInResponse) -> Void) {
        let parameters: [String: Any] = [
            "email": email,
            "password": password
        ]
        
        let urlString = AppConfig.ENDPOINT_URL + "/apis/auth/signIn"
        
        guard let url = URL(string: urlString) else {
            completion(SignInResponse(success: false, errorMessage: "Invalid URL"))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch {
            completion(SignInResponse(success: false, errorMessage: "Serialization Error"))
            return
        }
        
        URLSession.shared.dataTask(with: request) { _, response, error in
            guard let response = response as? HTTPURLResponse else {
                completion(SignInResponse(success: false, errorMessage: "No Response"))
                return
            }
            
            if response.statusCode == 200 {
                completion(SignInResponse(success: true, errorMessage: nil))
            } else {
                completion(SignInResponse(success: false, errorMessage: "HTTP Error: \(response.statusCode)"))
            }
        }.resume()
    }
}

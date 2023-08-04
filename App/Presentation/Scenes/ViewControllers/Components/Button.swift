import SwiftUI

struct ButtonComponent: View {
    let title: String
    let color: Color
    let icon: String?
    let width: CGFloat
    let height: CGFloat
    let radius: CGFloat
    let size: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let iconName = icon {
                    Image(systemName: iconName)
                        .foregroundColor(.white)
                }
                
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: size))
                    .padding()
            }
            .frame(width: width, height: height)
            .background(color)
            .cornerRadius(radius)
        }
        .padding(.horizontal)
    }
}

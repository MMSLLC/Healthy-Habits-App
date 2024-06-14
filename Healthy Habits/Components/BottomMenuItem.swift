import SwiftUI

struct BottomMenuItem: View {
    var imageName: String
    var label: String

    var body: some View {
        VStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
                .scaleEffect(1.1)
                .animation(.easeInOut(duration: 0.5).repeatForever(autoreverses: true), value: 1.1)

            Text(label)
                .font(.caption)
                .foregroundColor(.white)
                .transition(.opacity)
                .animation(.easeInOut(duration: 0.5), value: label)
        }
    }
}

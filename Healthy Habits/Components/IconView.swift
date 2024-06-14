import SwiftUI

struct IconView: View {
    var imageName: String
    var label: String

    var body: some View {
        VStack {
            Circle()
                .fill(Color.teal)
                .frame(width: 60, height: 60)
                .overlay(Image(systemName: imageName).foregroundColor(.blue))
                .shadow(radius: 5)
                .scaleEffect(1.1)
                .animation(.easeInOut(duration: 0.5).repeatForever(autoreverses: true), value: 1.1)

            Text(label)
                .font(.caption)
                .foregroundColor(.white)
                .transition(.slide)
                .animation(.easeInOut(duration: 0.5), value: label)
        }
        .padding()
    }
}


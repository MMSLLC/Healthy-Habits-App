import SwiftUI

struct PlaceholderView: View {
    var title: String
    var imageName: String

    var body: some View {
        VStack {
            Spacer()

            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()

            Text("This is the \(title) view.")
                .font(.title)
                .padding()
                .transition(.opacity)
                .animation(.easeInOut(duration: 0.5), value: 1)

            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.teal]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
    }
}

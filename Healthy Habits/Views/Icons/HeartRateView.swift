import SwiftUI

struct HeartRateView: View {
    @State private var pulseAnimation = false

    var body: some View {
        VStack {
            Spacer()

            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .scaleEffect(pulseAnimation ? 1.2 : 1.0)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                        self.pulseAnimation.toggle()
                    }
                }
                .padding()

            Text("Your current heart rate is 72 bpm.")
                .font(.title)
                .padding()
                .transition(.opacity)
                .animation(.easeInOut(duration: 0.5), value: 72)

            Spacer() 
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

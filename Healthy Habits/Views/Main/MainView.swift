import SwiftUI

struct MainView: View {
    @StateObject var healthMetricService = HealthMetricService()

    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 20) {
                    topSection
                    progressBar
                    iconsGrid
                    Spacer()
                }
                VStack {
                    Spacer()
                    bottomMenu
                        .padding(.bottom, 0)
                }
            }
            .padding(.horizontal)
            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.teal]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
        }
        .navigationBarHidden(true)
    }

    var topSection: some View {
        VStack {
            Spacer().frame(height: 60) // Move content down
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .overlay(Text("HH").font(.largeTitle).foregroundColor(.white))
                .shadow(radius: 10)
                .scaleEffect(1.2)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: 1.2)

            Text("Healthy Habits")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .transition(.slide)
                .animation(.easeInOut(duration: 1), value: "Healthy Habits")
        }
        .padding(.top, 10)
        .frame(maxWidth: .infinity)
    }

    var progressBar: some View {
        HStack {
            ForEach(0..<10) { index in
                Circle()
                    .fill(index == 2 ? Color.yellow : Color.white)
                    .frame(width: 20, height: 20)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .scaleEffect(index == 2 ? 1.2 : 1.0)
                    .animation(.easeInOut(duration: 0.5), value: index == 2)
            }
        }
        .frame(maxWidth: .infinity)
    }

    var iconsGrid: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], spacing: 10) { // Reduced spacing between icons
            NavigationLink(destination: PlaceholderView(title: "Heart Rate", imageName: "heart.fill")) {
                IconView(imageName: "heart.fill", label: "Heart Rate")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Nutrition", imageName: "leaf.fill")) {
                IconView(imageName: "leaf.fill", label: "Nutrition")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Sleep", imageName: "bed.double.fill")) {
                IconView(imageName: "bed.double.fill", label: "Sleep")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Steps", imageName: "figure.walk")) {
                IconView(imageName: "figure.walk", label: "Steps")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Mindfulness", imageName: "brain.head.profile")) {
                IconView(imageName: "brain.head.profile", label: "Mindfulness")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Exercise", imageName: "figure.run.circle")) {
                IconView(imageName: "figure.run.circle", label: "Exercise")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Hydration", imageName: "drop.circle.fill")) {
                IconView(imageName: "drop.circle.fill", label: "Hydration")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Water", imageName: "cup.and.saucer.fill")) {
                IconView(imageName: "cup.and.saucer.fill", label: "Water")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Meditation", imageName: "waveform.path.ecg")) {
                IconView(imageName: "waveform.path.ecg", label: "Meditation")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Breathing", imageName: "lungs.fill")) {
                IconView(imageName: "lungs.fill", label: "Breathing")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
            NavigationLink(destination: PlaceholderView(title: "Yoga", imageName: "bolt.heart.fill")) {
                IconView(imageName: "bolt.heart.fill", label: "Yoga")
                    .transition(.scale)
                    .animation(.spring(), value: UUID())
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
    }

    var bottomMenu: some View {
        HStack {
            Spacer()
            BottomMenuItem(imageName: "gearshape.fill", label: "Settings")
            Spacer()
            BottomMenuItem(imageName: "magnifyingglass", label: "Search")
            Spacer()
            BottomMenuItem(imageName: "house.fill", label: "Home")
            Spacer()
            BottomMenuItem(imageName: "chart.bar.fill", label: "Activity")
            Spacer()
            BottomMenuItem(imageName: "person.crop.circle.fill", label: "Profile")
            Spacer()
            BottomMenuItem(imageName: "bell.fill", label: "Alerts")
            Spacer()
        }
        .padding(.vertical, 10)
        .background(Color.green.opacity(0.2))
        .transition(.move(edge: .bottom))
        .animation(.easeInOut, value: 20)
        .frame(maxWidth: .infinity)
    }
}

import SwiftUI

struct IconDetailView: View {
    var metric: HealthMetric
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(metric.title)
                .font(.largeTitle)
                .padding()
            
            Image(systemName: "drop.fill")  
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Value: \(metric.value)")
                .font(.title)
                .padding()
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

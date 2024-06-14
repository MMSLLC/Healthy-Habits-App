import Foundation
import Combine

class HealthMetricService: ObservableObject {
    @Published var metrics: [HealthMetric] = []

    init() {
        fetchMetrics()
    }

    func fetchMetrics() {
        let sampleMetrics = [
            HealthMetric(title: "Water", value: 0.75),
            HealthMetric(title: "Exercise", value: 1.2),
        ]

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.metrics = sampleMetrics
        }
    }
}

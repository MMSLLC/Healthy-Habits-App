import Foundation

struct HealthMetric: Identifiable, Codable {
    var id: UUID = UUID()
    var title: String
    var value: Double
    
    init(title: String, value: Double) {
        self.title = title
        self.value = value
    }
}

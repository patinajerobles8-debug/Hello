import Foundation

struct DailyCheckIn: Identifiable {
    let id: UUID
    let date: Date
    let mood: String
    let completedMinutes: Int
    let hydrationGlasses: Int
    let highlight: String
}

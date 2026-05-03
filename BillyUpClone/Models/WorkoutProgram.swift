import Foundation

struct WorkoutProgram: Identifiable {
    let id: UUID
    let title: String
    let coach: String
    let durationWeeks: Int
    let sessionsPerWeek: Int
    let focus: String
    let intensity: String
    let description: String
}

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var currentStreak: Int = 7
    @Published var weeklyGoal: Int = 5
    @Published var weeklyCompleted: Int = 3
    @Published var focusMessage: String = "Respira profundo, hoy sumas 1% más."
    @Published var programs: [WorkoutProgram] = []
    @Published var checkIns: [DailyCheckIn] = []

    init() {
        programs = MockData.programs
        checkIns = MockData.checkIns
    }

    var progressRatio: Double {
        guard weeklyGoal > 0 else { return 0 }
        return Double(weeklyCompleted) / Double(weeklyGoal)
    }
}

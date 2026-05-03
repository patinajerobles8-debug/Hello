import SwiftUI

struct ProgramCardView: View {
    let program: WorkoutProgram

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(program.title)
                        .font(.headline)
                    Text("Coach: \(program.coach)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text(program.intensity)
                    .font(.caption)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(Color.pink.opacity(0.15))
                    .clipShape(Capsule())
            }
            Text(program.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            HStack {
                Label("\(program.durationWeeks) semanas", systemImage: "calendar")
                Spacer()
                Label("\(program.sessionsPerWeek) días", systemImage: "flame.fill")
            }
            .font(.caption)
            .foregroundColor(.secondary)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(Color(.systemBackground))
                .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
        )
    }
}

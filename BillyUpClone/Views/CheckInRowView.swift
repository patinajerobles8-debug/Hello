import SwiftUI

struct CheckInRowView: View {
    let checkIn: DailyCheckIn

    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: checkIn.date)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(formattedDate)
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
                Text(checkIn.mood)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.purple.opacity(0.15))
                    .clipShape(Capsule())
            }
            Text(checkIn.highlight)
                .font(.subheadline)
            HStack(spacing: 16) {
                Label("\(checkIn.completedMinutes) min", systemImage: "timer")
                Label("\(checkIn.hydrationGlasses) vasos", systemImage: "drop.fill")
            }
            .font(.caption)
            .foregroundColor(.secondary)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.secondarySystemBackground))
        )
    }
}

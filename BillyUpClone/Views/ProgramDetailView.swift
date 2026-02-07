import SwiftUI

struct ProgramDetailView: View {
    let program: WorkoutProgram

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                header
                highlights
                schedule
                actionButtons
            }
            .padding()
        }
        .navigationTitle(program.title)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(program.description)
                .font(.body)
                .foregroundColor(.secondary)
            HStack {
                Label("Coach \(program.coach)", systemImage: "person.fill")
                Spacer()
                Label(program.focus, systemImage: "heart.fill")
            }
            .font(.caption)
            .foregroundColor(.secondary)
        }
    }

    private var highlights: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Lo que incluye")
                .font(.headline)
            HighlightRowView(text: "Rutinas guiadas con música")
            HighlightRowView(text: "Calendario semanal automático")
            HighlightRowView(text: "Notas de motivación diaria")
        }
    }

    private var schedule: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Calendario sugerido")
                .font(.headline)
            Text("\(program.sessionsPerWeek) sesiones por semana durante \(program.durationWeeks) semanas.")
                .font(.subheadline)
                .foregroundColor(.secondary)
            ProgressView(value: 0.35)
                .tint(.pink)
        }
    }

    private var actionButtons: some View {
        VStack(spacing: 12) {
            Button("Guardar en mi plan") {}
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                .frame(maxWidth: .infinity)
            Button("Compartir con amigas") {}
                .buttonStyle(.bordered)
                .frame(maxWidth: .infinity)
        }
    }
}

struct HighlightRowView: View {
    let text: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "checkmark.seal.fill")
                .foregroundColor(.pink)
            Text(text)
                .font(.subheadline)
        }
    }
}

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: HomeViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    header
                    focusCard
                    progressCard
                    recommendedSection
                    checkInSection
                }
                .padding(.bottom, 32)
            }
            .navigationTitle("Hola, Laura")
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Tu energía de hoy")
                .font(.headline)
            Text(viewModel.focusMessage)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }

    private var focusCard: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(
                    LinearGradient(
                        colors: [Color.pink.opacity(0.8), Color.purple.opacity(0.8)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            VStack(alignment: .leading, spacing: 12) {
                Text("Reto del día")
                    .font(.headline)
                    .foregroundColor(.white)
                Text("15 min de cardio suave + estiramiento")
                    .font(.title3)
                    .foregroundColor(.white)
                HStack {
                    Label("Nivel fácil", systemImage: "sparkles")
                    Spacer()
                    Button("Comenzar") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.white)
                        .foregroundColor(.pink)
                }
                .font(.subheadline)
                .foregroundColor(.white)
            }
            .padding(20)
        }
        .padding(.horizontal)
    }

    private var progressCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Tu progreso semanal")
                .font(.headline)
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Racha actual")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("\(viewModel.currentStreak) días")
                        .font(.title3.bold())
                }
                Spacer()
                VStack(alignment: .leading, spacing: 6) {
                    Text("Meta")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("\(viewModel.weeklyCompleted)/\(viewModel.weeklyGoal) sesiones")
                        .font(.title3.bold())
                }
            }
            ProgressView(value: viewModel.progressRatio)
                .tint(.pink)
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.secondarySystemBackground))
        )
        .padding(.horizontal)
    }

    private var recommendedSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Programas recomendados")
                .font(.headline)
                .padding(.horizontal)

            ForEach(viewModel.programs) { program in
                NavigationLink(destination: ProgramDetailView(program: program)) {
                    ProgramCardView(program: program)
                }
                .buttonStyle(.plain)
                .padding(.horizontal)
            }
        }
    }

    private var checkInSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Check-ins recientes")
                .font(.headline)
                .padding(.horizontal)

            ForEach(viewModel.checkIns) { checkIn in
                CheckInRowView(checkIn: checkIn)
                    .padding(.horizontal)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}

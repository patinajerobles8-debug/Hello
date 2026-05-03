import SwiftUI

struct ProgramsView: View {
    @EnvironmentObject private var viewModel: HomeViewModel

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Programas destacados")) {
                    ForEach(viewModel.programs) { program in
                        NavigationLink(destination: ProgramDetailView(program: program)) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(program.title)
                                    .font(.headline)
                                Text(program.focus)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }

                Section(header: Text("Filtros rápidos")) {
                    FilterChipView(title: "Bajo impacto", systemImage: "leaf.fill")
                    FilterChipView(title: "Cardio", systemImage: "heart.fill")
                    FilterChipView(title: "Meditación", systemImage: "sparkles")
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Programas")
        }
    }
}

struct FilterChipView: View {
    let title: String
    let systemImage: String

    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .foregroundColor(.pink)
            Text(title)
        }
    }
}

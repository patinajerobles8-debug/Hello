import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack(spacing: 16) {
                        Circle()
                            .fill(Color.pink.opacity(0.2))
                            .frame(width: 64, height: 64)
                            .overlay(Text("L").font(.title).foregroundColor(.pink))
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Laura Gómez")
                                .font(.headline)
                            Text("Plan activo: Energia Total")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 6)
                }

                Section(header: Text("Objetivos")) {
                    ProgressRowView(title: "Hidratación", value: "6/8 vasos")
                    ProgressRowView(title: "Pasos", value: "7,200 / 10,000")
                    ProgressRowView(title: "Sueño", value: "7h 20m")
                }

                Section(header: Text("Preferencias")) {
                    Toggle("Recordatorios diarios", isOn: .constant(true))
                    Toggle("Modo descanso", isOn: .constant(false))
                }

                Section {
                    Button("Ayuda y soporte") {}
                    Button("Cerrar sesión") {}
                        .foregroundColor(.pink)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Perfil")
        }
    }
}

struct ProgressRowView: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
        }
    }
}

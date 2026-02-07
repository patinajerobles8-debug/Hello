import SwiftUI

struct CommunityView: View {
    private let posts: [CommunityPost] = [
        CommunityPost(author: "Andrea", message: "Hoy completé 30 min y me siento increíble."),
        CommunityPost(author: "Meli", message: "¿Quién se apunta al reto de esta semana?"),
        CommunityPost(author: "Paula", message: "Gracias por las recetas saludables, me ayudaron mucho.")
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(posts) { post in
                        CommunityPostView(post: post)
                            .padding(.horizontal)
                    }
                }
                .padding(.top, 12)
            }
            .navigationTitle("Comunidad")
        }
    }
}

struct CommunityPost: Identifiable {
    let id = UUID()
    let author: String
    let message: String
}

struct CommunityPostView: View {
    let post: CommunityPost

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Circle()
                    .fill(Color.pink.opacity(0.2))
                    .frame(width: 40, height: 40)
                    .overlay(Text(String(post.author.prefix(1))).foregroundColor(.pink))
                VStack(alignment: .leading) {
                    Text(post.author)
                        .font(.headline)
                    Text("Hace 2h")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "heart")
                    .foregroundColor(.pink)
            }
            Text(post.message)
                .font(.subheadline)
            HStack {
                Button("Responder") {}
                Spacer()
                Button("Compartir") {}
            }
            .font(.caption)
            .foregroundColor(.secondary)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(Color(.secondarySystemBackground))
        )
    }
}

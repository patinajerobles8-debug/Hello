import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Inicio", systemImage: "house.fill")
                }

            ProgramsView()
                .tabItem {
                    Label("Programas", systemImage: "bolt.heart.fill")
                }

            CommunityView()
                .tabItem {
                    Label("Comunidad", systemImage: "person.3.fill")
                }

            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person.crop.circle")
                }
        }
        .tint(Color.pink)
    }
}

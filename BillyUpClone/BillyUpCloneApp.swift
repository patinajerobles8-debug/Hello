import SwiftUI

@main
struct BillyUpCloneApp: App {
    @StateObject private var homeViewModel = HomeViewModel()

    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(homeViewModel)
        }
    }
}

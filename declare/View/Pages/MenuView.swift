//
//  MenuView.swift
//  declare
//
//  Created by Hersh Nagpal on 6/22/23.
//

import SwiftUI
import GameKit

struct MenuView: View {
    let localPlayer = GKLocalPlayer.local
    func authenticateUser() {
        localPlayer.authenticateHandler = { vc, error in
            guard error == nil else {
                print(error?.localizedDescription ?? "")
                return
            }
            GKAccessPoint.shared.isActive = localPlayer.isAuthenticated
        }
    }
    var body: some View {
        NavigationView {
            Text("Yee")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            authenticateUser()
        }
    }
}

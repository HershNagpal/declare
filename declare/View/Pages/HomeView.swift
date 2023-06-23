//
//  HomeView.swift
//  declare
//
//  Created by Hersh Nagpal on 6/22/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct HomeView: View {
    @State var path = [String]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Button("Log In") {
                    path.append("gctest")
                }
            }
            .navigationDestination(for: String.self) { string in
                switch string {
                case "gctest":
                    MenuView()
                default:
                    Spacer()
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

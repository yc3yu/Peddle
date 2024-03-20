//
//  TabBarView.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-19.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label(PeddleStrings.home,
                          systemImage: PeddleStrings.ImageNames.System.homeIcon)
                }

            ListingsView()
                .tabItem {
                    Label(PeddleStrings.listings,
                          systemImage: PeddleStrings.ImageNames.System.listingsIcon)
                }
        }
    }
}

#Preview {
    TabBarView()
}

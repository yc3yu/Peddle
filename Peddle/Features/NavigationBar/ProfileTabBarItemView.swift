//
//  ProfileTabBarItemView.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-19.
//

import SwiftUI

struct ProfileTabBarItemView: View {
    var body: some View {
        NavigationLink {
            ProfileView()
        } label: {
            Image(systemName: PeddleStrings.ImageNames.System.profileIcon)
        }
    }
}

#Preview {
    ProfileTabBarItemView()
}

//
//  ListingsView.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-19.
//

import SwiftUI

struct ListingsView: View {
    var body: some View {
        NavigationView {
            Text(PeddleStrings.listings)
                .withProfileTabBarItem()
        }
    }
}

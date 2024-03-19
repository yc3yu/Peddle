//
//  View+Modifiers.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-19.
//

import SwiftUI

extension View {
    func withProfileTabBarItem() -> some View {
        return self.toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                ProfileTabBarItemView()
            }
        }
    }
}

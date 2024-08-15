//
//  ContentView.swift
//  Test
//
//  Created by Dias Yerlan on 13.08.2024.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    @StateObject var cartViewModel = CartViewModel()
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                }
        }
        .tint(.black)
        .background(.white)
        .environmentObject(cartViewModel)
        .environmentObject(homeViewModel)
    }
}

#Preview {
    ContentView()
        .environmentObject(CartViewModel())
}

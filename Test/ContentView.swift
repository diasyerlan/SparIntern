//
//  ContentView.swift
//  Test
//
//  Created by Dias Yerlan on 13.08.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartViewModel = CartViewModel()
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
        .environmentObject(cartViewModel)
    }
}

#Preview {
    ContentView()
        .environmentObject(CartViewModel())
}

//
//  ContentView.swift
//  Test
//
//  Created by Dias Yerlan on 13.08.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
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
    }
    init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("--\(fontName)")
            }
        }
    }
}

#Preview {
    ContentView()
}

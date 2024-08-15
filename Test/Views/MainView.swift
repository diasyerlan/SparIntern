//
//  MainView.swift
//  Test
//
//  Created by Dias Yerlan on 13.08.2024.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    let columns = [GridItem(.fixed(168), spacing: 5),
                   GridItem(.fixed(168), spacing: 5)]
    @State private var isList = false
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: 4)
                Divider()
                Spacer()
                ScrollView {
                    if isList {
                        LazyVStack {
                            ForEach(productList, id: \.self) {product in
                                ProductListCardView(product: product)
                            }
                        }
                    }
                    else {
                        LazyVGrid(columns: columns) {
                            ForEach(productList, id: \.self) {product in
                                ProductGridCardView(product: product)
                            }
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        isList.toggle()
                    } label: {
                        Image(systemName: isList ? "rectangle.grid.1x2" : "square.grid.2x2")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .fontWeight(.bold)
                            .foregroundColor(.customGreen)
                            .padding(12)
                            .background(.customGray)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(CartViewModel())
}

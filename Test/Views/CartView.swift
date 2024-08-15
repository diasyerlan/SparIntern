//
//  CartView.swift
//  Test
//
//  Created by Dias Yerlan on 13.08.2024.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    var body: some View {
        ZStack(alignment: .bottom){
            if !cartViewModel.products.isEmpty {
                // cart products
                ScrollView {
                    LazyVStack {
                        ForEach($cartViewModel.products, id: \.self) { product in
                            CartProductView(product: product)
                        }
                    }
                }
                .scrollIndicators(.hidden)
                // total and checkout
                VStack(spacing: 0) {
                    Divider()
                    HStack {
                        Text("Выбрано: \(cartViewModel.products.count)")
                        Spacer()
                        Text("Всего: \(String(format: "%.1f",cartViewModel.total)) ₽")
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, minHeight: 40)
                    .background(.white)
                    Button {} label: {
                        Text("Оплатить")
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(.customGreen)
                            .foregroundStyle(.white)
                            .font(.headline)
                    }
                    
                }
                // if cart is empty
            } else {
                VStack(spacing: 20) {
                    Image(systemName: "cart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .foregroundStyle(Color(.systemGray))
                    Text("Ваша корзина пуста")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartViewModel())
}

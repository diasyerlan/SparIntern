//
//  ChangeQuantityButtonView.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import SwiftUI

struct ChangeQuantityButtonView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    var fromCartPage: Bool
    @Binding var product: Product
    var body: some View {
        HStack {
            Button {
                if product.count > 0.11 {
                    if !fromCartPage {
                        cartViewModel.removeFromCart(product: product)
                        product.count -= 0.1
                        cartViewModel.addToCart(product: product)
                    } else {
                        product.count -= 0.1
                    }
                } else {
                    if !fromCartPage {
                        withAnimation {
                            cartViewModel.removeFromCart(product: product)
                        }
                    }
                }
            } label: {
                Image(systemName: "minus")
            }
            Spacer()
            VStack(spacing: 0) {
                Text("\(String(format: "%.1f", product.count)) кг")
                    .fontWeight(.bold)
                Text("~\(String(format: "%.1f",product.count * Double(product.price))) ₽")
            }
            .font(.footnote)
            
            Spacer()
            Button {
                if !fromCartPage {
                    product.count += 0.1
                    cartViewModel.removeFromCart(product: product)
                    cartViewModel.addToCart(product: product)
                } else {
                    product.count += 0.1
                }
            } label: {
                Image(systemName: "plus")
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 2)
        .foregroundStyle(.white)
        .background(.customGreen)
        .frame(height: 36)
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .padding(4)    }
}

#Preview {
    ChangeQuantityButtonView(fromCartPage: false, product: .constant(productList[3]))
}

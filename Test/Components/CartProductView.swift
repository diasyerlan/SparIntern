//
//  CartProductView.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    @Binding var product: Product
    var body: some View {
        HStack {
            Image(product.image)
                .resizable()
                .frame(width: 144, height: 144)
            VStack {
                Text(product.name)
                    .font(.caption2)
                    .fontWeight(.light)
                HStack {
                    ChangeQuantityButtonView(fromCartPage: true, product: $product)
                    Spacer()
                    Button {
                        cartViewModel.removeFromCart(product: product)
                    } label: {
                        Image(systemName: "trash")
                            .foregroundStyle(.white)
                            .frame(width: 36, height: 36)
                            .background(.red)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
            }
        }
        .padding(.horizontal, 12)
        Divider()
    }
}

#Preview {
    CartProductView(product: .constant(productList[0]))
        .environmentObject(CartViewModel())
}

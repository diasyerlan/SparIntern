//
//  ChangeQuantityButtonView.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import SwiftUI

struct ChangeQuantityButtonView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    var product: Product
    @State private var kg = 0.1
    var body: some View {
        HStack {
            Button {
                if kg > 0.11 {
                    print(kg)
                    kg -= 0.1
                } else {
                    withAnimation {
                        cartViewModel.removeFromCart(product: product)
                    }
                }
            } label: {
                Image(systemName: "minus")
            }
            Spacer()
            VStack(spacing: 0) {
                
                Text("\(String(format: "%.1f", kg)) кг")
                    .fontWeight(.bold)
                Text("~\(String(format: "%.1f",kg * Double(product.price)))")
            }
            .font(.footnote)

            Spacer()
            Button {
                kg += 0.1
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
    ChangeQuantityButtonView(product: productList[3])
}

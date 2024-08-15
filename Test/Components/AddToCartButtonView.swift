//
//  AddToCartButtonView.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import SwiftUI

struct AddToCartButtonView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    var product: Product
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .top, spacing: 2) {
                    Text("\(product.price)")
                        .font(.custom("FONTSPRING DEMO - Cera Round Pro", size: 20))
                    Text("90")
                        .font(.custom("FONTSPRING DEMO - Cera Round Pro", size: 15))
                    // ruble per kg amount
                    Image("PerAmountIcon")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Text("199,0")
                    .strikethrough()
                    .font(.system(size: 12))
                    .foregroundStyle(Color(.systemGray))
                
            }
            Spacer()
            Button {
                withAnimation {
                    cartViewModel.addToCart(product: product)
                }
            } label: {
                Image("cart")
                    .resizable()
                    .frame(width: 13.51, height: 13)
                    .foregroundStyle(.white)
                    .frame(width: 48, height: 36)
                    .background(.customGreen)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                
            }
        }
        .padding(4)    }
}

#Preview {
    AddToCartButtonView(product: productList[1])
}

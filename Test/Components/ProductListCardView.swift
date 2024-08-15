//
//  ProductListCardView.swift
//  Test
//
//  Created by Dias Yerlan on 14.08.2024.
//

import SwiftUI

struct ProductListCardView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    @State private var piecesOrKg: PiecesOrKg = .kg
    var product: Product
    var body: some View {
            ZStack {
                Color(.white)
                
                VStack(alignment: .leading, spacing: 0) {
                    ZStack{
                        Image(product.image)
                            .resizable()
                            .frame(width: 168, height: 168)
                        // upon image product details
                        VStack {
                            HStack(alignment: .top) {
                                // special offer
                                if let specialOffer = product.specialOffer {
                                    Text(specialOffer.type)
                                        .font(.system(size: 10))
                                        .padding(.leading, 10)
                                        .padding(.trailing, 2)
                                        .padding(3)
                                        .foregroundStyle(.white)
                                        .background(.customPink)
                                        .clipShape(RoundedCorners(corners: [.bottomRight, .topRight], radius: 6))
                                }
                                Spacer()
                                // list and heart icons
                                ListAndHeartIcons()
                            }
                            Spacer()
                            HStack {
                                // rating
                                HStack(spacing: 2) {
                                    Image("star")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.customYellow)
                                    Text("4.1")
                                        .font(.system(size: 12))
                                }
                                Spacer()
                                // discount
                                if let discount = product.discount {
                                    HStack(spacing: 0) {
                                        Text("\(discount)")
                                            .font(.custom("FONTSPRING DEMO - Cera Round Pro", size: 16))
                                        Text("%")
                                            .font(.system(size: 14))
                                            .fontWeight(.black)
                                    }
                                    .foregroundStyle(.customRed)
                                }
                            }
                            .padding(4)
                            
                        }
                    }
                    .frame(width: 168, height: 168)
                    Text(product.name)
                        .font(.caption2)
                        .fontWeight(.light)
                        .padding(.horizontal, 4)
                        
                    Spacer()
                    // kg switch
                    SwitchView(product: product, piecesOrKg: $piecesOrKg)
                    if !cartViewModel.products.contains(product) {
                        //price and add to cart button
                        AddToCartButtonView(product: product)
                    }
                    // change product quantity button
                    else {
                        ChangeQuantityButtonView(product: product)
                    }
                }
                
            }
        .frame(width: 168, height: 278)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .customShadow.opacity(0.2), radius: 5)
    }
}

#Preview {
ProductListCardView(product: productList[1])
        .environmentObject(CartViewModel())
}

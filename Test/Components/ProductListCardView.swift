//
//  ProductListCardView.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import SwiftUI

struct ProductListCardView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    @Binding var product: Product
    var body: some View {
        HStack {
            ZStack{
                Image(product.image)
                    .resizable()
                    .frame(width: 144, height: 144)
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
                                .background(specialOffer == .udar ? .customPink : specialOffer == .new ? .customPurple : .customGreen2)
                                .clipShape(RoundedCorners(corners: [.bottomRight, .topRight], radius: 6))
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
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
            .frame(width: 144, height: 144)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            VStack(alignment: .leading) {
                HStack {
                    // rating
                    VStack(alignment: .leading) {
                        HStack(spacing: 2) {
                            Image("star")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.customYellow)
                            Text("4.1")
                                .font(.system(size: 12))
                            Rectangle()
                                .fill(Color(.systemGray))
                                .frame(width: 1, height: 16)
                            Text("19 отзывов")
                                .font(.caption)
                                .foregroundStyle(Color(.systemGray))
                        }
                        Text(product.name)
                            .font(.caption2)
                            .fontWeight(.light)
                    }
                    Spacer()
                    // list and heart icons
                    ListAndHeartIcons()
                }
                SwitchView(product: product)
                if !cartViewModel.products.contains(product) {
                    //price and add to cart button
                    AddToCartButtonView(product: product)
                }
                // change product quantity button
                else {
                    ChangeQuantityButtonView(fromCartPage: false, product: $product)
                }
            }
            
        }
        .padding(8)
        Divider()
        
    }
}

#Preview {
    ProductListCardView(product: .constant(productList[14]))
        .environmentObject(CartViewModel())
}

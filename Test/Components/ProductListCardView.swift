//
//  ProductListCardView.swift
//  Test
//
//  Created by Dias Yerlan on 14.08.2024.
//

import SwiftUI

struct ProductListCardView: View {
    
    var product: Product
    var body: some View {
            ZStack {
                Color(.white)
                
                VStack(alignment: .leading) {
                    ZStack{
                        Image(product.image)
                            .resizable()
                            .frame(width: 168, height: 168)
                        VStack {
                            HStack(alignment: .top) {
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
                                VStack(spacing: 16) {
                                    Button {} label: {
                                        Image("list")
                                            .resizable()
                                            .frame(width: 14, height: 13.71)
                                            .fontWeight(.bold)
                                            .foregroundStyle(.black.opacity(0.4))
                                    }
                    
                                    Button {} label: {
                                        Image("heart")
                                            .resizable()
                                            .frame(width: 13.27, height: 11.82)
                                            .fontWeight(.bold)
                                            .foregroundStyle(.black.opacity(0.4))
                                    }
                                        
                                }
                                .frame(width: 32, height: 64)
                                .background(.white.opacity(0.75))
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                            Spacer()
                            HStack {
                                HStack(spacing: 2) {
                                    Image("star")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.customYellow)
                                    Text("4.1")
                                        .font(.system(size: 12))
                                }
                                Spacer()
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
                        .font(.system(size: 12))
                        .padding(.horizontal, 4)
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .top, spacing: 2) {
                                Text("\(product.price)")
                                    .font(.custom("FONTSPRING DEMO - Cera Round Pro", size: 20))
                                Text("90")
                                    .font(.custom("FONTSPRING DEMO - Cera Round Pro", size: 16))
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
                        Button {} label: {
                            Image("cart")
                                .resizable()
                                .frame(width: 13.51, height: 13)
                                .foregroundStyle(.white)
                                .frame(width: 48, height: 36)
                                .background(.customGreen)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                                
                        }
                    }
                    .padding(4)
                }
                
            }
        .frame(width: 168, height: 278)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .customShadow.opacity(0.2), radius: 5)
    }
}

#Preview {
ProductListCardView(product: productList[6])
}

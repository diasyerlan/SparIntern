//
//  ListAndHeartIcons.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import SwiftUI

struct ListAndHeartIcons: View {
    @State private var isHeartTapped = false
    var body: some View {
        VStack(spacing: 16) {
            Button {
            } label: {
                Image("list")
                    .resizable()
                    .frame(width: 14, height: 13.71)
                    .fontWeight(.bold)
                    .foregroundStyle(.black.opacity(0.4))
                
            }
            
            Button {
                isHeartTapped.toggle()
            } label: {
                Image(isHeartTapped ? "heart.fill" : "heart")
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
}

#Preview {
    ListAndHeartIcons()
}

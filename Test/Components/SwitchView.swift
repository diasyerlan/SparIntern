//
//  SwitchView.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import SwiftUI

struct SwitchView: View {
    var product: Product
    @State private var piecesOrKg: PiecesOrKg = .kg
    var body: some View {
        if product.piecesOrKg != nil {
            Picker("", selection: $piecesOrKg) {
                ForEach(PiecesOrKg.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 4)
            .frame(height: 28)
        }
    }
}

#Preview {
    SwitchView(product: productList[3])
}

//
//  MainView.swift
//  Test
//
//  Created by Dias Yerlan on 13.08.2024.
//

import SwiftUI

struct MainView: View {
    let columns = [GridItem(.fixed(168), spacing: 2),
                   GridItem(.fixed(168), spacing: 2)]
    @State private var isList = false
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                Spacer()
                if isList {
                    
                }
                else {
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        isList.toggle()
                    } label: {
                        Image(systemName: isList ? "rectangle.grid.1x2" : "square.grid.2x2")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .fontWeight(.bold)
                            .foregroundColor(.customGreen)
                            .padding(12)
                            .background(.customGray)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}

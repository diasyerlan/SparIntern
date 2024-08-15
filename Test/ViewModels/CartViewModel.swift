//
//  CartViewModel.swift
//  Test
//
//  Created by Dias Yerlan on 14.08.2024.
//

import Foundation
class CartViewModel: ObservableObject {
    @Published var products: [Product] = [] {
        didSet {
            updateTotal()
        }
    }
    @Published var total: Double = 0
    
    func addToCart(product: Product) {
        products.append(product)
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{ $0.image != product.image }
    }
    
    private func updateTotal() {
        total = products.reduce(0) { $0 + Double($1.price) * $1.count }
    }
}

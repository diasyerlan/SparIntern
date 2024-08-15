//
//  CartViewModel.swift
//  Test
//
//  Created by Dias Yerlan on 14.08.2024.
//

import Foundation
class CartViewModel: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{ $0.id != product.id }
        total -= product.price
    }
}

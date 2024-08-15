//
//  Product.swift
//  Test
//
//  Created by Dias Yerlan on 14.08.2024.
//

import Foundation

enum PiecesOrKg: String, CaseIterable{
    case pieces = "Шт"
    case kg = "Кг"
}

struct Product: Identifiable, Equatable, Hashable  {
    enum SpecialOffer: Int {
        case udar, new, karta
        
        var type: String {
            switch self {
            case .udar:
                return "Удар по ценам"
            case .new:
                return "Новинки"
            case .karta:
                return "Цена по карте"
            }
        }
    }
    
    var id = UUID()
    var name: String
    var price: Int
    var image: String
    var count = 0.1
    var piecesOrKg: PiecesOrKg?
    var specialOffer: SpecialOffer?
    var discount: Int?
    
}

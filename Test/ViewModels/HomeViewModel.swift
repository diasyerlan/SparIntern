//
//  HomeViewModel.swift
//  Test
//
//  Created by Dias Yerlan on 15.08.2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var products = productList
}

var productList = [
    Product(name: "сыр Ламбер 500/0 230г", price: 99, image: "1", specialOffer: .udar),
    Product(name: "Энергетический Напит", price: 95699, image: "2"),
    Product(name: "Салат Овощной с Крабовыми Палочками", price: 95699, image: "3"),
    Product(name: "Дорадо Охлажденная Непотрошеная 300-400г", price: 956, image: "4", piecesOrKg: .kg, discount: 25),
    Product(name: "Ролл Маленькая Япония 216г", price: 367, image: "5", specialOffer: .new),
    Product(name: "Огурцы тепличные cадово-огородные", price: 956, image: "6", specialOffer: .karta),
    Product(name: "Манго Кео", price: 1298, image: "7", specialOffer: .new, discount: 25),
    Product(name: "Салат Овощной с Крабовыми Палочками", price: 120, image: "8"),
    Product(name: "Салат Овощной с Крабовыми Палочками", price: 1298, image: "9"),
    Product(name: "Масло Слобода Рафинированное 1,8л", price: 1298, image: "10", specialOffer: .udar),
    Product(name: "Салат Овощной с Крабовыми Палочками", price: 250, image: "11"),
    Product(name: "Макаронные Изделия SPAR Спагетти 450г", price: 2600, image: "12", specialOffer: .new),
    Product(name: "Огурцы тепличные cадово-огородные", price: 120, image: "13"),
    Product(name: "Огурцы тепличные cадово-огородные", price: 120, image: "14", specialOffer: .karta),
    Product(name: "Огурцы тепличные cадово-огородные", price: 956, image: "15", piecesOrKg: .kg, specialOffer: .udar, discount: 25),
    Product(name: "Дорадо Охлажденная Непотрошеная 300-400г", price: 120, image: "16", specialOffer: .new, discount: 25),
    Product(name: "Энергетический Напиток AdrenaIine Rush 0,449л ж/б", price: 99, image: "17"),
    Product(name: "Манго Кео", price: 95699, image: "18", specialOffer: .udar),
]

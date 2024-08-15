//
//  RoundedCorners.swift
//  Test
//
//  Created by Dias Yerlan on 14.08.2024.
//

import Foundation
import SwiftUI

struct RoundedCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

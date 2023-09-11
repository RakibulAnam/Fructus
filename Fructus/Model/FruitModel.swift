//
//  FruitModel.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

//: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
}

//
//  Card.swift
//  CarouselSliderHeroAnimation
//
//  Created by Ramit sharma on 04/01/21.
//

import SwiftUI

// Card Model ....


struct Card: Identifiable {
    var id = UUID().uuidString
    var cardColor: Color
    var offset: CGFloat = 0
    var title: String
}

//
//  CarouselViewModel.swift
//  CarouselSliderHeroAnimation
//
//  Created by Ramit sharma on 04/01/21.
//

import SwiftUI

class CarouselViewModel: ObservableObject {

   @Published var cards = [
        
    Card(cardColor: Color.blue, title: "Neurobics for your mind"),
    Card(cardColor: Color.pink, title: "brush up your hygine"),
    Card(cardColor: Color.green, title: "Don't skip breakfast"),
    Card(cardColor: Color.yellow, title: "Build wellness to prevent diseases"),
    Card(cardColor: Color.orange, title: "The groundwork for all happiness is Holistic living"),

    ]
    
    @Published var swipedCard = 0
    
    //Detailed COntent
    
    @Published var showCard = false
    @Published var  selectedCard = Card(cardColor: .clear, title: "")
    @Published var showContent = false
    
    var content = "People often think about wellness in terms of physical health — nutrition, exercise, weight management, etc., but it is so much more. Wellness is a holistic integration of physical, mental, and spiritual well-being, fueling the body, engaging the mind, and nurturing the spirit (1). Although it always includes striving for health, it’s more about living life fully (1), and is “a lifestyle and a personalized approach to living life in a way that… allows you to become the best kind of person that your potentials, circumstances, and fate will allow. Wellness necessitates good self-stewardship, for ourselves and for those we care about and who care about us. For those in the helping professions, such as ourselves in veterinary medicine, wellness is a professional as well as personal responsibility. In order to ensure high-quality patient and client services, we have an ethical obligation to attend to our own health and well-being (3). Sufficient self-care prevents us from harming those we serve, and according to Green Cross Standards of Self Care Guidelines, no situation or person can justify neglecting it "
}


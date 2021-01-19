//
//  HomeViewModel.swift
//  BakeryApp
//
//  Created by Ramit sharma on 14/01/21.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var offset: CGFloat = 0


    //Selected Tab...

    @Published var selectedTab = tabsItems.first!.tab

}

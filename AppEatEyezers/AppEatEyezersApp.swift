//
//  AppEatEyezersApp.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 11/09/2023.
//

import SwiftUI

@main
struct AppEatEyezersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppEatEyezerTabView().environmentObject(order)
        }
    }
}

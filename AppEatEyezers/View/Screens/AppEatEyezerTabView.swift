//
//  ContentView.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 11/09/2023.
//

import SwiftUI

struct AppEatEyezerTabView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
        }
        .tint(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppEatEyezerTabView()
    }
}

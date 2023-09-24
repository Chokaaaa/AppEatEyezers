//
//  NutritionInfo.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 17/09/2023.
//

import SwiftUI

struct NutritionInfo: View {
    
    var title: String
    var value : Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .bold()
            
            Text("\(value)")
                .fontWeight(.semibold)
                .italic()
                .foregroundColor(.secondary)
        }
    }
}


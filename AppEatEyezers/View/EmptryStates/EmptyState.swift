//
//  EmptyState.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 20/09/2023.
//

import SwiftUI

struct EmptyState: View {
    
    var imageName : String
    var title: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "steak", title: "Your cart is empty")
    }
}

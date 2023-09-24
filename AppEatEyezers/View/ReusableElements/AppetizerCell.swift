//
//  AppetizerCell.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 13/09/2023.
//

import SwiftUI

struct AppetizerCell: View {
    
    let appetizer : Appetizer
    
    var body: some View {
        HStack(spacing: 20) {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .scaledToFit()
//                .cornerRadius(8)
//                .frame(width: 120, height: 90)
            
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .frame(width: 120, height: 90)
            } placeholder: {
                Image("steak")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .frame(width: 120, height: 90)
            }

            
            VStack(alignment: .leading ,spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}


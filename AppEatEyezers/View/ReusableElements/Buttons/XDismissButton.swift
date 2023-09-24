//
//  xDismissButton.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 17/09/2023.
//

import SwiftUI

struct XDismissButton: View {
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: 30, height: 30)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 40, height: 40)
                .foregroundColor(.black)
        }
    }
}

struct xDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}

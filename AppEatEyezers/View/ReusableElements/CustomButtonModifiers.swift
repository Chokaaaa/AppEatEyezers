//
//  CustomButtonModifiers.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 23/09/2023.
//

import Foundation
import SwiftUI

struct StandardButtonStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.green)
            .controlSize(.large)
    }
    
    
}

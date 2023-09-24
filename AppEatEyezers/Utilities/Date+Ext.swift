//
//  Date+Ext.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 24/09/2023.
//

import Foundation

extension Date {
    var eighteenYearsAgo : Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo : Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}

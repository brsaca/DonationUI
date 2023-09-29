//
//  Date.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import Foundation

extension Date {
    init(month: Int, day: Int, year: Int, hour: Int = 0, minute: Int = 0, second: Int = 0) {
        var dateComponents = DateComponents()
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.year = year
        dateComponents.hour = hour
        dateComponents.minute = minute
        dateComponents.second = second
        dateComponents.timeZone = .current
        dateComponents.calendar = .current
        self = Calendar.current.date(from: dateComponents) ?? Date()
    }
    
    func timestampString() -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: self, to: Date()) ?? ""
    }
}

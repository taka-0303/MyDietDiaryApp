//
//  Date+Extension.swift
//  MyDietDiaryApp
//
//  Created by 尊郁 on 2022/12/21.
//

import Foundation

extension Date {
    var calendar: Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = .current
        calendar.locale = Locale(identifier: "ja-JP")
        return calendar
    }
    
    func fixed(year: Int? = nil, month: Int? = nil, day: Int? = nil,
               hour: Int? = nil, minute: Int? = nil, second: Int? = nil) -> Date {
        var comp = DateComponents()
        comp.year = year ?? calendar.component(.year, from: self)
        comp.month = year ?? calendar.component(.month, from: self)
        comp.day = year ?? calendar.component(.day, from: self)
        comp.minute = year ?? calendar.component(.minute, from: self)
        comp.second = year ?? calendar.component(.second, from: self)
        return calendar.date(from: comp)!
    }
    
    var zeroclock: Date {
        return fixed(hour: 0, minute: 0, second: 0)
    }
}

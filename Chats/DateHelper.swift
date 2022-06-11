//
//  DateHelper.swift
//  Chats
//
//  Created by wuqiang on 2022/6/11.
//

import Foundation

extension Date{
    func descriptionAlter(dateStyle:DateFormatter.Style = .short) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        let daysBetween = self.daysBetween(date:Date())
        if daysBetween == 0{
            return "Today"
        }
        else if daysBetween == 1{
            return "Yesterday"
        }
        else if daysBetween < 5{
            let weekdayIndex = Calendar.current.component(.weekday, from: self) - 1
            return formatter.weekdaySymbols[weekdayIndex]
        }
        return formatter.string(from: self)
    }
    func daysBetween(date:Date) -> Int {
        let calendar = Calendar.current
        let start = calendar.startOfDay(for: self)
        let end = calendar.startOfDay(for: date)
        if let daysBetween = calendar.dateComponents([.day], from: start, to: end).day{
            return daysBetween
        }
        return 0
    }
}

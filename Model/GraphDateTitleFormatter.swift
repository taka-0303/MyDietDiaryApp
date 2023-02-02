//
//  GraphDateTitleFormatter.swift
//  MyDietDiaryApp
//
//  Created by 尊郁 on 2022/12/23.
//

import Foundation
import Charts

class GraphDateTitleFomatter: IndexAxisValueFormatter {
    var dateList: [Date] = []
    override func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let index = Int(value)
        guard dateList.count > index else { return "" }
        let targetDate = dateList[index]
        let formatter = DateFormatter()
        let dateFormatString = "M/d"
        formatter.dateFormat = dateFormatString
        return formatter.string(from: targetDate)
    }
}

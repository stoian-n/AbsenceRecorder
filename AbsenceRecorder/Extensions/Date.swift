//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Nick Stoian on 25/01/2022.
//

import Foundation

extension Date {
  func getShortDate() -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    
    return formatter.string(from: self)
  }
  
  func previousDay() -> Date {
    return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
  }
  
  func nextDay() -> Date {
    Calendar.current.date(byAdding: .day, value: +1, to: self) ?? Date()
  }
}

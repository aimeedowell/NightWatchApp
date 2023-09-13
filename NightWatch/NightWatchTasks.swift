//
//  NightWatchTasks.swift
//  NightWatch
//
//  Created by Aimee Dowell on 12/09/2023.
//

import Foundation
import SwiftUI

class NightWatchTasks: ObservableObject {
    @Published var nightlyTasks:[Task] = [
        Task(name: "Check all windows", isComplete: false, lastCompleted: nil),
        Task(name: "Check all doors", isComplete: false, lastCompleted: nil),
        Task(name: "Check that the safe is locked", isComplete: false, lastCompleted: nil),
        Task(name: "Check the mailbox", isComplete: false, lastCompleted: nil),
        Task(name: "Inspect security cameras", isComplete: false, lastCompleted: nil),
        Task(name: "Clear ice from sidewalks", isComplete: false, lastCompleted: nil),
        Task(name: "Document \"strange and unusual\" occurences", isComplete: false, lastCompleted: nil)
    ]

    @Published var weeklyTasks:[Task] = [
        Task(name: "Check inside all vacant rooms", isComplete: false, lastCompleted: nil),
        Task(name: "Walk the perimeter of the property", isComplete: false, lastCompleted: nil)
    ]

    @Published var monthlyTasks:[Task] = [
        Task(name: "Test security alarms", isComplete: false, lastCompleted: nil),
        Task(name: "Test smoke alarms", isComplete: false, lastCompleted: nil)
    ]
}

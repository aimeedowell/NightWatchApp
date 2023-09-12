//
//  Task.swift
//  NightWatch
//
//  Created by Aimee Dowell on 08/09/2023.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}

//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Aimee Dowell on 31/08/2023.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @StateObject private var nightWatchTasks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
        }
    }
}

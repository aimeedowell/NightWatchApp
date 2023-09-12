//
//  ContentView.swift
//  NightWatch
//
//  Created by Aimee Dowell on 31/08/2023.
//

import SwiftUI

struct ContentView: View {
    var nightlyTasks:[Task] = [
        Task(name: "Check all windows", isComplete: false, lastCompleted: nil),
        Task(name: "Check all doors", isComplete: false, lastCompleted: nil),
        Task(name: "Check that the safe is locked", isComplete: false, lastCompleted: nil),
        Task(name: "Check the mailbox", isComplete: false, lastCompleted: nil),
        Task(name: "Inspect security cameras", isComplete: false, lastCompleted: nil),
        Task(name: "Clear ice from sidewalks", isComplete: false, lastCompleted: nil),
        Task(name: "Document \"strange and unusual\" occurences", isComplete: false, lastCompleted: nil)
    ]
    
    var weeklyTasks:[Task] = [
        Task(name: "Check inside all vacant rooms", isComplete: false, lastCompleted: nil),
        Task(name: "Walk the perimeter of the property", isComplete: false, lastCompleted: nil)
    ]
    
    var monthlyTasks:[Task] = [
        Task(name: "Test security alarms", isComplete: false, lastCompleted: nil),
        Task(name: "Test smoke alarms", isComplete: false, lastCompleted: nil)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section (header: TaskSectionHeader(symbolName: "cloud.moon", headerText: "Nightly Tasks")) {
                    ForEach (nightlyTasks, content: {
                        task in
                        NavigationLink(task.name, destination: DetailsView(task: task))
                    })
                }
                Section (header: TaskSectionHeader(symbolName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach (weeklyTasks, content: {
                        task in
                        NavigationLink(task.name, destination: DetailsView(task: task))
                    })
                }
                Section (header: TaskSectionHeader(symbolName: "calendar", headerText: "Monthly Tasks")) {
                    ForEach (monthlyTasks, content: {
                        task in
                        NavigationLink(task.name, destination: DetailsView(task: task))
                    })
                }
            }.listStyle(GroupedListStyle()).navigationTitle("All Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TaskSectionHeader: View {
    let symbolName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolName)
            Text(headerText)
        }.font(.title3)
    }
}

